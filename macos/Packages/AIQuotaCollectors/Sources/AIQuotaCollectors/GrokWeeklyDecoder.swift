import AIQuotaCore
import Foundation

/// Consumer credits from grok.com. The persisted product key predates monthly periods;
/// metric IDs keep monthly and weekly limits separate. Two-hour REST rate limits are never substituted.
public enum GrokWeeklyDecoder {
    public static let endpoint = URL(string: "https://grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig")!

    public static func decode(_ response: Data, identity: RemoteIdentity, fetchedAt: Date, headers: [String: String] = [:]) throws -> UsageReport {
        guard identity.product == "grok-weekly" else { throw CoreError.identityMismatch }
        guard response.count <= 1_048_576 else { throw CollectorError.invalidResponse }
        var stream = ByteReader(bytes: Array(response))
        var message: [UInt8]?
        var hadTrailers = false
        var statuses: [String] = headers.filter { $0.key.lowercased() == "grpc-status" }.map(\.value)
        var messages: [String] = headers.filter { $0.key.lowercased() == "grpc-message" }.map(\.value)
        while !stream.isAtEnd {
            let flag = try stream.byte()
            let size = try stream.bigEndianUInt32()
            let frame = try stream.take(Int(size))
            switch flag {
            case 0:
                guard message == nil, !hadTrailers else { throw CollectorError.invalidResponse }
                message = frame
            case 0x80:
                guard !hadTrailers, stream.isAtEnd,
                      let trailers = String(bytes: frame, encoding: .utf8) else { throw CollectorError.invalidResponse }
                hadTrailers = true
                var trailerStatuses: [String] = []
                for line in trailers.components(separatedBy: "\r\n") where !line.isEmpty {
                    let pair = line.split(separator: ":", maxSplits: 1)
                    guard pair.count == 2 else { throw CollectorError.invalidResponse }
                    let value = pair[1].trimmingCharacters(in: .whitespaces)
                    if pair[0].lowercased() == "grpc-status" { trailerStatuses.append(value) }
                    if pair[0].lowercased() == "grpc-message" { messages.append(value) }
                }
                guard trailerStatuses.count == 1 else { throw CollectorError.invalidResponse }
                statuses.append(contentsOf: trailerStatuses)
            default: throw CollectorError.invalidResponse // compressed and unknown frame formats are not decoded
            }
        }
        if !statuses.isEmpty {
            guard Set(statuses).count == 1, let code = Int(statuses[0]), (0...16).contains(code) else { throw CollectorError.invalidResponse }
            let text = messages.joined(separator: " ").removingPercentEncoding?.lowercased() ?? ""
            switch code {
            case 0: break
            case 16: throw CollectorError.authenticationRequired
            case 7 where text.contains("unauthenticated:bad-credentials") || text.contains("unauthenticated:invalid-credentials"):
                throw CollectorError.authenticationRequired
            case 8: throw CollectorError.rateLimited(until: HTTPResponsePolicy.retryDate(headers["retry-after"], now: fetchedAt) ?? fetchedAt.addingTimeInterval(60))
            case 4, 13, 14: throw CollectorError.network
            default: throw CollectorError.invalidResponse
            }
        }
        guard let message else { throw CollectorError.invalidResponse }
        let root = try ProtoMessage(message)
        guard let config = try root.bytes(1) else { throw CollectorError.invalidResponse }
        let fields = try ProtoMessage(config)
        let rawUsed = try fields.fixed32(1).map { Double(Float(bitPattern: $0)) }
        var start = try timestamp(fields.bytes(4))
        var reset = try timestamp(fields.bytes(5))
        var period = "unknown"
        if let current = try fields.bytes(8) {
            let current = try ProtoMessage(current)
            start = try timestamp(current.bytes(2)); reset = try timestamp(current.bytes(3))
            guard let start, let reset, start <= fetchedAt, fetchedAt < reset else { throw CollectorError.invalidResponse }
            switch try current.varint(1) {
            case 2: period = "week"
            case 1: period = "month"
            default: break
            }
        }
        if let start, let reset { guard start < reset else { throw CollectorError.invalidResponse } }
        // An omitted proto3 float is zero only inside a known, complete active period.
        // Historical-only/unknown periods must not fabricate 100% remaining usage.
        if rawUsed == nil {
            guard period != "unknown", let start, let reset, start <= fetchedAt, fetchedAt < reset
            else { throw CollectorError.invalidResponse }
        }
        let used = rawUsed ?? 0
        guard used.isFinite, used >= 0, used <= 100 else { throw CollectorError.invalidResponse }
        let suffix = period == "week" ? "weekly_credits" : period == "month" ? "monthly_credits" : "credits"
        let label = period == "week" ? "SuperGrok weekly" : period == "month" ? "SuperGrok monthly" : "SuperGrok credits"
        let metric = try UsageMetric(id: "grok:\(suffix)", label: label, period: period,
                                     remainingFraction: 1 - used / 100, resetsAt: reset, startsAt: start)
        return UsageReport(identity: identity, fetchedAt: fetchedAt, metrics: [metric])
    }
    private static func timestamp(_ bytes: [UInt8]?) throws -> Date? {
        guard let bytes else { return nil }
        let time = try ProtoMessage(bytes)
        guard let seconds = try time.varint(1), seconds > 0, seconds <= 253_402_300_799 else { throw CollectorError.invalidResponse }
        let nanos = try time.varint(2) ?? 0
        guard nanos < 1_000_000_000 else { throw CollectorError.invalidResponse }
        return Date(timeIntervalSince1970: Double(seconds) + Double(nanos) / 1e9)
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
    let fields: [UInt64: [Field]]
    init(_ bytes: [UInt8]) throws {
        var reader = ByteReader(bytes: bytes)
        var fields: [UInt64: [Field]] = [:]
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
            fields[key, default: []].append(value)
        }
        self.fields = fields
    }
    private func single(_ key: UInt64) throws -> Field? {
        guard let values = fields[key] else { return nil }
        guard values.count == 1 else { throw CollectorError.invalidResponse }
        return values[0]
    }
    func bytes(_ key: UInt64) throws -> [UInt8]? {
        guard let field = try single(key) else { return nil }
        guard case .bytes(let value) = field else { throw CollectorError.invalidResponse }
        return value
    }
    func fixed32(_ key: UInt64) throws -> UInt32? {
        guard let field = try single(key) else { return nil }
        guard case .fixed32(let value) = field else { throw CollectorError.invalidResponse }
        return value
    }
    func varint(_ key: UInt64) throws -> UInt64? {
        guard let field = try single(key) else { return nil }
        guard case .integer(let value) = field else { throw CollectorError.invalidResponse }
        return value
    }
}
