import AIQuotaCore
import Foundation

/// The authenticated SuperGrok weekly product. The two-hour REST rate limit is a separate metric.
public enum GrokWeeklyDecoder {
    public static let endpoint = URL(string: "https://grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig")!

    public static func decode(_ response: Data, identity: RemoteIdentity, fetchedAt: Date) throws -> UsageReport {
        guard identity.product == "grok-weekly" else { throw CoreError.identityMismatch }
        guard response.count <= 1_048_576 else { throw CollectorError.invalidResponse }
        var stream = ByteReader(bytes: Array(response))
        var message: [UInt8]?
        var hadTrailers = false
        while !stream.isAtEnd {
            let flag = try stream.byte()
            let size = try stream.bigEndianUInt32()
            let frame = try stream.take(Int(size))
            switch flag {
            case 0:
                guard message == nil, !hadTrailers else { throw CollectorError.invalidResponse }
                message = frame
            case 0x80:
                guard !hadTrailers, message != nil, stream.isAtEnd,
                      let trailers = String(bytes: frame, encoding: .utf8) else { throw CollectorError.invalidResponse }
                hadTrailers = true
                let statuses = trailers.components(separatedBy: "\r\n").compactMap { line -> String? in
                    let pair = line.split(separator: ":", maxSplits: 1)
                    guard pair.count == 2, pair[0].lowercased() == "grpc-status" else { return nil }
                    return pair[1].trimmingCharacters(in: .whitespaces)
                }
                guard statuses == ["0"] else { throw CollectorError.invalidResponse }
            default: throw CollectorError.invalidResponse // compressed and unknown frame formats are not decoded
            }
        }
        guard let message else { throw CollectorError.invalidResponse }
        let root = try ProtoMessage(message)
        guard let config = try root.bytes(1) else { throw CollectorError.invalidResponse }
        let fields = try ProtoMessage(config)
        let rawUsed = try fields.fixed32(1).map { Double(Float(bitPattern: $0)) }
        var reset: Date?
        if let timestamp = try fields.bytes(5) {
            let time = try ProtoMessage(timestamp)
            guard let seconds = try time.varint(1), seconds > 0, seconds <= 253_402_300_799 else { throw CollectorError.invalidResponse }
            let nanos = try time.varint(2) ?? 0
            guard nanos < 1_000_000_000 else { throw CollectorError.invalidResponse }
            // Watermarks normalize to whole seconds; retain the source precision in the displayed value.
            reset = Date(timeIntervalSince1970: Double(seconds) + Double(nanos) / 1e9)
        }
        // Proto3 omits a scalar whose value is zero. A real period boundary is required to infer it.
        guard rawUsed != nil || reset != nil else { throw CollectorError.invalidResponse }
        let used = rawUsed ?? 0
        guard used.isFinite, used >= 0, used <= 100 else { throw CollectorError.invalidResponse }
        let metric = try UsageMetric(id: "grok:weekly_credits", label: "SuperGrok weekly", period: "week",
                                     remainingFraction: 1 - used / 100, resetsAt: reset)
        return UsageReport(identity: identity, fetchedAt: fetchedAt, metrics: [metric])
    }
}

private struct ByteReader {
    let bytes: [UInt8]
    var offset = 0
    var isAtEnd: Bool { offset == bytes.count }
    mutating func byte() throws -> UInt8 {
        guard offset < bytes.count else { throw CollectorError.invalidResponse }
        defer { offset += 1 }
        return bytes[offset]
    }
    mutating func take(_ count: Int) throws -> [UInt8] {
        guard count >= 0, count <= bytes.count - offset else { throw CollectorError.invalidResponse }
        defer { offset += count }
        return Array(bytes[offset..<(offset + count)])
    }
    mutating func bigEndianUInt32() throws -> UInt32 {
        try take(4).reduce(0) { ($0 << 8) | UInt32($1) }
    }
    mutating func varint() throws -> UInt64 {
        var result: UInt64 = 0
        for shift in stride(from: 0, through: 63, by: 7) {
            let next = try byte()
            if shift == 63 && next > 1 { throw CollectorError.invalidResponse }
            result |= UInt64(next & 0x7f) << shift
            if next & 0x80 == 0 { return result }
        }
        throw CollectorError.invalidResponse
    }
}

private struct ProtoMessage {
    enum Field { case integer(UInt64), fixed32(UInt32), bytes([UInt8]), fixed64 }
    let fields: [UInt64: Field]
    init(_ bytes: [UInt8]) throws {
        var reader = ByteReader(bytes: bytes)
        var fields: [UInt64: Field] = [:]
        while !reader.isAtEnd {
            let tag = try reader.varint()
            let key = tag >> 3
            guard key > 0, key <= 536_870_911 else { throw CollectorError.invalidResponse }
            let value: Field
            switch tag & 7 {
            case 0: value = .integer(try reader.varint())
            case 1: _ = try reader.take(8); value = .fixed64
            case 2:
                let length = try reader.varint()
                guard length <= UInt64(bytes.count) else { throw CollectorError.invalidResponse }
                value = .bytes(try reader.take(Int(length)))
            case 5:
                let data = try reader.take(4)
                value = .fixed32(data.enumerated().reduce(0) { $0 | (UInt32($1.element) << ($1.offset * 8)) })
            default: throw CollectorError.invalidResponse
            }
            // Unknown repeated fields are irrelevant, but ambiguous consumed scalar fields are rejected.
            if fields[key] != nil && (key == 1 || key == 2 || key == 5) { throw CollectorError.invalidResponse }
            fields[key] = value
        }
        self.fields = fields
    }
    func bytes(_ key: UInt64) throws -> [UInt8]? {
        guard let field = fields[key] else { return nil }
        guard case .bytes(let value) = field else { throw CollectorError.invalidResponse }
        return value
    }
    func fixed32(_ key: UInt64) throws -> UInt32? {
        guard let field = fields[key] else { return nil }
        guard case .fixed32(let value) = field else { throw CollectorError.invalidResponse }
        return value
    }
    func varint(_ key: UInt64) throws -> UInt64? {
        guard let field = fields[key] else { return nil }
        guard case .integer(let value) = field else { throw CollectorError.invalidResponse }
        return value
    }
}
