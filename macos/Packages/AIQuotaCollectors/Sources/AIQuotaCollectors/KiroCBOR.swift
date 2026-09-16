import AIQuotaCore
import Foundation
import CoreFoundation

/// Bounded, data-only decoder for Smithy rpc-v2-cbor. Maps keep string keys and timestamps
/// use tag 1's epoch seconds. Duplicate keys, trailing bytes and non-finite numbers are errors.
enum KiroCBOR {
    static func object(_ data: Data) throws -> [String: Any] {
        guard !data.isEmpty, data.count <= 524_288 else { throw CollectorError.invalidResponse }
        var reader = Reader(bytes: Array(data))
        guard let object = try reader.value() as? [String: Any], reader.offset == data.count else {
            throw CollectorError.invalidResponse
        }
        return object
    }
    private struct Reader {
        let bytes: [UInt8]
        var offset = 0
        var nodes = 0
        mutating func byte() throws -> UInt8 {
            guard offset < bytes.count else { throw CollectorError.invalidResponse }
            defer { offset += 1 }; return bytes[offset]
        }
        mutating func bits(_ count: Int) throws -> UInt64 {
            var result: UInt64 = 0
            for _ in 0..<count { result = result << 8 | UInt64(try byte()) }
            return result
        }
        mutating func argument(_ info: UInt8) throws -> UInt64? {
            switch info {
            case 0..<24: return UInt64(info)
            case 24: return try bits(1)
            case 25: return try bits(2)
            case 26: return try bits(4)
            case 27: return try bits(8)
            case 31: return nil
            default: throw CollectorError.invalidResponse
            }
        }
        mutating func takeBreak() -> Bool {
            guard offset < bytes.count, bytes[offset] == 255 else { return false }
            offset += 1; return true
        }
        mutating func stringBytes(_ major: UInt8, _ length: UInt64?) throws -> [UInt8] {
            if let length {
                guard length <= 65_536, length <= UInt64(bytes.count - offset) else { throw CollectorError.invalidResponse }
                defer { offset += Int(length) }
                let result = Array(bytes[offset..<(offset + Int(length))])
                if major == 3, String(bytes: result, encoding: .utf8) == nil { throw CollectorError.invalidResponse }
                return result
            }
            var result: [UInt8] = []
            while !takeBreak() {
                nodes += 1
                guard nodes <= 20_000 else { throw CollectorError.invalidResponse }
                let head = try byte()
                guard head >> 5 == major, let size = try argument(head & 31) else { throw CollectorError.invalidResponse }
                let part = try stringBytes(major, size)
                guard result.count + part.count <= 65_536 else { throw CollectorError.invalidResponse }
                result += part
            }
            return result
        }
        mutating func value(depth: Int = 0) throws -> Any {
            nodes += 1
            guard depth < 32, nodes <= 20_000 else { throw CollectorError.invalidResponse }
            let head = try byte(), major = head >> 5, info = head & 31
            if major == 7 {
                let number: Double
                switch info {
                case 20: return false
                case 21: return true
                case 22, 23: return NSNull()
                case 25:
                    let raw = try bits(2), sign = raw & 0x8000 == 0 ? 1.0 : -1.0
                    let exponent = Int((raw >> 10) & 31), fraction = Double(raw & 1023)
                    guard exponent < 31 else { throw CollectorError.invalidResponse }
                    number = sign * (exponent == 0 ? fraction * pow(2, -24) : (1 + fraction / 1024) * pow(2, Double(exponent - 15)))
                case 26: number = Double(Float(bitPattern: UInt32(try bits(4))))
                case 27: number = Double(bitPattern: try bits(8))
                default: throw CollectorError.invalidResponse
                }
                guard number.isFinite else { throw CollectorError.invalidResponse }
                return number
            }
            let size = try argument(info)
            switch major {
            case 0, 1:
                guard let size, size <= 9_007_199_254_740_991 else { throw CollectorError.invalidResponse }
                return major == 0 ? Double(size) : -1 - Double(size)
            case 2, 3:
                let raw = try stringBytes(major, size)
                if major == 2 { return Data(raw) }
                guard let text = String(bytes: raw, encoding: .utf8) else { throw CollectorError.invalidResponse }
                return text
            case 4:
                guard size == nil || size! <= 4_096 else { throw CollectorError.invalidResponse }
                var array: [Any] = []
                while size.map({ UInt64(array.count) < $0 }) ?? !takeBreak() {
                    guard array.count < 4_096 else { throw CollectorError.invalidResponse }
                    array.append(try value(depth: depth + 1))
                }
                return array
            case 5:
                guard size == nil || size! <= 4_096 else { throw CollectorError.invalidResponse }
                var object: [String: Any] = [:]
                while size.map({ UInt64(object.count) < $0 }) ?? !takeBreak() {
                    guard object.count < 4_096, let key = try value(depth: depth + 1) as? String,
                          object[key] == nil else { throw CollectorError.invalidResponse }
                    object[key] = try value(depth: depth + 1)
                }
                return object
            case 6:
                guard size == 1 else { throw CollectorError.invalidResponse }
                // Keep timestamp seconds separate from the decoder's presentation timezone.
                let result = try value(depth: depth + 1)
                guard let number = result as? NSNumber, CFGetTypeID(number) != CFBooleanGetTypeID() else { throw CollectorError.invalidResponse }
                return number.doubleValue
            default: throw CollectorError.invalidResponse
            }
        }
    }
}
