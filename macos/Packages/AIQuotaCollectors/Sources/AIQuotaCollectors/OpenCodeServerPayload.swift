import AIQuotaCore
import Foundation

/// Data-only subset of the deployed SolidStart/Seroval wire format. Never evaluates JavaScript.
/// Supports the plain objects, arrays, references and dates used by OpenCode's read-only queries.
enum OpenCodeServerPayload {
    static func decode(_ data: Data, instance: String? = nil) throws -> Any {
        guard !data.isEmpty, data.count <= 1_048_576 else { throw CollectorError.invalidResponse }
        var bytes = Array(data)
        if bytes.starts(with: Array(";0x".utf8)) {
            guard bytes.count >= 12, bytes[11] == 59,
                  let length = Int(String(decoding: bytes[3..<11], as: UTF8.self), radix: 16),
                  length == bytes.count - 12 else { throw CollectorError.invalidResponse }
            bytes = Array(bytes.dropFirst(12))
        }
        guard String(bytes: bytes, encoding: .utf8) != nil else { throw CollectorError.invalidResponse }
        var parser = Parser(bytes: bytes)
        let result: Any
        if parser.take("((self.$R=self.$R||{})[") {
            let seed = try parser.string()
            guard seed.hasPrefix("server-fn:"), instance == nil || seed == instance else { throw CollectorError.invalidResponse }
            try parser.expect("]=[],")
            if parser.take("($R=>") {
                result = try parser.value()
                try parser.expect(")($R[")
                guard try parser.string() == seed else { throw CollectorError.invalidResponse }
                try parser.expect("]))")
            } else {
                result = try parser.value()
                try parser.expect(")")
            }
        } else { result = try parser.value() }
        _ = parser.take(";")
        parser.whitespace()
        guard parser.offset == bytes.count else { throw CollectorError.invalidResponse }
        return result
    }

    private struct Parser {
        let bytes: [UInt8]
        var offset = 0
        var nodes = 0
        var references: [Int: Any] = [:]
        mutating func whitespace() { while offset < bytes.count && [9,10,13,32].contains(bytes[offset]) { offset += 1 } }
        mutating func take(_ literal: String) -> Bool {
            whitespace(); let token = Array(literal.utf8)
            guard bytes.count - offset >= token.count, bytes[offset..<(offset + token.count)].elementsEqual(token) else { return false }
            offset += token.count; return true
        }
        mutating func expect(_ literal: String) throws {
            guard take(literal) else { throw CollectorError.invalidResponse }
        }
        mutating func value(depth: Int = 0) throws -> Any {
            nodes += 1
            guard depth < 24, nodes <= 20_000 else { throw CollectorError.invalidResponse }
            whitespace()
            guard offset < bytes.count else { throw CollectorError.invalidResponse }
            if take("$R[") {
                let start = offset
                while offset < bytes.count && (48...57).contains(bytes[offset]) { offset += 1 }
                guard let index = Int(String(decoding: bytes[start..<offset], as: UTF8.self)), index < 20_000 else { throw CollectorError.invalidResponse }
                try expect("]")
                if take("=") {
                    guard references[index] == nil else { throw CollectorError.invalidResponse }
                    let item = try value(depth: depth + 1)
                    references[index] = item; return item
                }
                guard let item = references[index] else { throw CollectorError.invalidResponse }
                return item
            }
            if take("{") {
                var object: [String: Any] = [:]
                if take("}") { return object }
                repeat {
                    whitespace()
                    let key = offset < bytes.count && bytes[offset] == 34 ? try string() : try identifier()
                    guard object[key] == nil else { throw CollectorError.invalidResponse }
                    try expect(":"); object[key] = try value(depth: depth + 1)
                    if take("}") { return object }
                    try expect(",")
                } while true
            }
            if take("[") {
                var array: [Any] = []
                if take("]") { return array }
                repeat {
                    array.append(try value(depth: depth + 1))
                    if take("]") { return array }
                    try expect(",")
                } while true
            }
            if take("new Date(") {
                let date = try string(); try expect(")"); return date
            }
            if take("true") || take("!0") { return true }
            if take("false") || take("!1") { return false }
            if take("null") || take("undefined") || take("void 0") { return NSNull() }
            if bytes[offset] == 34 { return try string() }
            let start = offset
            while offset < bytes.count && Array("-+0123456789.eE".utf8).contains(bytes[offset]) { offset += 1 }
            guard offset > start, let number = Double(String(decoding: bytes[start..<offset], as: UTF8.self)), number.isFinite else {
                throw CollectorError.invalidResponse
            }
            return number
        }
        mutating func identifier() throws -> String {
            whitespace(); let start = offset
            let first = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_$".utf8)
            guard offset < bytes.count, first.contains(bytes[offset]) else { throw CollectorError.invalidResponse }
            offset += 1
            while offset < bytes.count && (first.contains(bytes[offset]) || (48...57).contains(bytes[offset])) { offset += 1 }
            return String(decoding: bytes[start..<offset], as: UTF8.self)
        }
        mutating func string() throws -> String {
            try expect("\"")
            var encoded: [UInt8] = [34]
            while offset < bytes.count {
                let byte = bytes[offset]; offset += 1
                if byte == 34 {
                    encoded.append(34)
                    guard let result = try? JSONDecoder().decode(String.self, from: Data(encoded)) else { throw CollectorError.invalidResponse }
                    return result
                }
                guard byte >= 32 else { throw CollectorError.invalidResponse }
                encoded.append(byte)
                if byte == 92 {
                    guard offset < bytes.count else { throw CollectorError.invalidResponse }
                    let escaped = bytes[offset]; offset += 1
                    if escaped == 120 {
                        guard offset + 2 <= bytes.count,
                              bytes[offset..<(offset + 2)].allSatisfy({ Array("0123456789abcdefABCDEF".utf8).contains($0) }) else {
                            throw CollectorError.invalidResponse
                        }
                        encoded += Array("u00".utf8) + bytes[offset..<(offset + 2)]; offset += 2
                    } else { encoded.append(escaped) }
                }
                guard encoded.count <= 65_536 else { throw CollectorError.invalidResponse }
            }
            throw CollectorError.invalidResponse
        }
    }
}
