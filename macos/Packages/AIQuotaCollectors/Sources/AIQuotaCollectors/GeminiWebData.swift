import AIQuotaCore
import CoreFoundation
import Foundation

/// The web product's read-only GetUsageInfo RPC, not Gemini CLI / Code Assist quota.
enum GeminiWebData {
    static let rpcID = "jSf9Qc"
    struct Session: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
        let subject: String
        let token: String
        let sessionID: String
        let build: String
        var description: String { "GeminiWebSession(redacted)" }
        var debugDescription: String { description }
    }
    static func session(_ data: Data) throws -> Session {
        guard data.count <= 2_097_152, let html = String(data: data, encoding: .utf8) else { throw CollectorError.invalidResponse }
        let pattern = #"<script\b[^>]*>\s*(?:window\.|var\s+)?WIZ_global_data\s*=\s*"#
        let matches = try NSRegularExpression(pattern: pattern).matches(in: html, range: NSRange(html.startIndex..., in: html))
        guard matches.count == 1, let range = Range(matches[0].range, in: html) else { throw CollectorError.invalidResponse }
        var reader = GeminiJSON(Data(html[range.upperBound...].utf8))
        guard let value = try reader.value() as? [String: Any] else { throw CollectorError.invalidResponse }
        reader.whitespace()
        guard reader.peek == 59 else { throw CollectorError.invalidResponse }
        guard let signedIn = value["Lz8rbb"] as? NSNumber, CFGetTypeID(signedIn) == CFBooleanGetTypeID() else { throw CollectorError.invalidResponse }
        guard signedIn.boolValue else { throw CollectorError.authenticationRequired }
        // S06Grb is the web framework's account binding for XSRF renewal; f.sid is a
        // transport session and must never be substituted for this account identifier.
        let subject = try text(value["S06Grb"], maximum: 128)
        if let scope = value["QrtxK"] {
            guard let index = scope as? String else { throw CollectorError.invalidResponse }
            guard index.isEmpty || index == "0" else { throw GeminiSessionError.primaryAccountRequired }
        }
        return try Session(subject: subject, token: text(value["SNlM0e"], maximum: 8192),
                           sessionID: text(value["FdrFJe"], maximum: 256), build: text(value["cfb2h"], maximum: 256))
    }
    static func payload(_ data: Data) throws -> [Any] {
        guard data.count <= 524_288, data.starts(with: Data(")]}'".utf8)) else { throw CollectorError.invalidResponse }
        var reader = GeminiJSON(data); reader.offset = 4
        var found: String?, frames = 0
        while true {
            reader.whitespace()
            if reader.finished { break }
            // Google's transport may prefix a frame with an advisory byte-count line.
            if let first = reader.peek, (48...57).contains(first) {
                let start = reader.offset
                while let c = reader.peek, (48...57).contains(c) { reader.offset += 1 }
                guard reader.offset - start <= 7, reader.peek == 10 || reader.peek == 13 else { throw CollectorError.invalidResponse }
                reader.whitespace()
            }
            frames += 1
            guard frames <= 64, let frame = try reader.value() as? [Any] else { throw CollectorError.invalidResponse }
            for item in frame {
                guard let row = item as? [Any], row.count >= 2 else { throw CollectorError.invalidResponse }
                guard row[1] as? String == rpcID else { continue }
                if row[0] as? String == "er" { throw CollectorError.invalidResponse }
                guard row[0] as? String == "wrb.fr", row.count >= 3, found == nil,
                      let payload = row[2] as? String else { throw CollectorError.invalidResponse }
                found = payload
            }
        }
        guard let found, let payload = try GeminiJSON.parse(Data(found.utf8)) as? [Any] else { throw CollectorError.invalidResponse }
        return payload
    }
    static func report(_ payload: [Any], identity: RemoteIdentity, fetchedAt: Date) throws -> UsageReport {
        guard identity.product == "gemini-web-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        guard payload.count >= 2, let rows = payload[1] as? [Any], rows.count <= 32 else { throw CollectorError.invalidResponse }
        var metrics: [Int: UsageMetric] = [:]
        for item in rows {
            guard let row = item as? [Any], row.count >= 3, let type = number(row[2]), type.rounded() == type else { throw CollectorError.invalidResponse }
            guard type == 1 || type == 2 else { continue }
            let key = Int(type)
            guard metrics[key] == nil, let used = number(row[1]), (0...1).contains(used) else { throw CollectorError.invalidResponse }
            // The deployed UI reads field 2 as a fraction. Field 1 is not a request
            // allowance and must not be added to it, even when its value is large.
            let reset = try row.count > 3 ? reset(row[3]) : nil
            metrics[key] = try UsageMetric(id: key == 1 ? "gemini:5h" : "gemini:week", label: key == 1 ? "Session" : "Weekly",
                                           period: key == 1 ? "5h" : "week", remainingFraction: 1 - used,
                                           used: used * 100, remaining: (1 - used) * 100, limit: 100, resetsAt: reset)
        }
        // The web screen requires both windows. A partial/error response must not
        // silently erase an existing window or turn a missing value into 100%.
        guard let session = metrics[1], let weekly = metrics[2] else { throw CollectorError.invalidResponse }
        let plan: String?
        if payload[0] is NSNull { plan = nil }
        else {
            guard let tier = number(payload[0]), tier >= 0, tier <= 2_147_483_647, tier.rounded() == tier else { throw CollectorError.invalidResponse }
            plan = [2:"Google AI Pro",3:"Google AI Ultra",6:"Google AI Ultra",4:"Google AI Plus"][Int(tier)]
        }
        return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: plan, metrics: [session, weekly])
    }
    private static func reset(_ raw: Any) throws -> Date? {
        if raw is NSNull { return nil }
        guard let container = raw as? [Any], container.count == 1, let timestamp = container[0] as? [Any],
              (1...2).contains(timestamp.count), let seconds = integer(timestamp[0]),
              (946_684_800...4_102_444_800).contains(seconds) else { throw CollectorError.invalidResponse }
        let nanos: Double
        if timestamp.count == 1 || timestamp[1] is NSNull { nanos = 0 }
        else { guard let value = integer(timestamp[1]), (0..<1_000_000_000).contains(value) else { throw CollectorError.invalidResponse }; nanos = value }
        return Date(timeIntervalSince1970: seconds + nanos / 1_000_000_000)
    }
    private static func integer(_ raw: Any) -> Double? {
        let value: Double?
        if let string = raw as? String, string.range(of: #"^[0-9]{1,13}$"#, options: .regularExpression) != nil { value = Double(string) }
        else { value = number(raw) }
        guard let value, value.rounded() == value else { return nil }; return value
    }
    private static func number(_ raw: Any) -> Double? {
        guard let n = raw as? NSNumber, CFGetTypeID(n) != CFBooleanGetTypeID(), n.doubleValue.isFinite else { return nil }
        return n.doubleValue
    }
    private static func text(_ raw: Any?, maximum: Int) throws -> String {
        guard let value = raw as? String, !value.isEmpty, value.utf8.count <= maximum,
              value == value.trimmingCharacters(in: .whitespacesAndNewlines),
              !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
        return value
    }
}

/// Strict bounded JSON reader. Rejects duplicate object keys and trailing executable text;
/// neither HTML bootstrap nor batchexecute data is evaluated as JavaScript.
private struct GeminiJSON {
    let bytes: [UInt8]
    var offset = 0
    var nodes = 0
    init(_ data: Data) { bytes = Array(data) }
    var peek: UInt8? { offset < bytes.count ? bytes[offset] : nil }
    var finished: Bool { offset == bytes.count }
    mutating func whitespace() { while let c = peek, [9,10,13,32].contains(c) { offset += 1 } }
    static func parse(_ data: Data) throws -> Any {
        guard data.count <= 524_288 else { throw CollectorError.invalidResponse }
        var reader = Self(data); let result = try reader.value(); reader.whitespace()
        guard reader.finished else { throw CollectorError.invalidResponse }; return result
    }
    mutating func consume(_ byte: UInt8) throws {
        whitespace(); guard peek == byte else { throw CollectorError.invalidResponse }; offset += 1
    }
    mutating func value(depth: Int = 0) throws -> Any {
        nodes += 1; whitespace()
        guard nodes <= 50_000, depth < 32, let first = peek else { throw CollectorError.invalidResponse }
        if first == 123 {
            offset += 1; whitespace(); var object: [String: Any] = [:]
            if peek == 125 { offset += 1; return object }
            while true {
                guard object.count < 8192, peek == 34, let key = try value(depth: depth + 1) as? String,
                      object[key] == nil else { throw CollectorError.invalidResponse }
                try consume(58); object[key] = try value(depth: depth + 1); whitespace()
                if peek == 125 { offset += 1; return object }
                try consume(44); whitespace()
            }
        }
        if first == 91 {
            offset += 1; whitespace(); var array: [Any] = []
            if peek == 93 { offset += 1; return array }
            while true {
                guard array.count < 8192 else { throw CollectorError.invalidResponse }
                array.append(try value(depth: depth + 1)); whitespace()
                if peek == 93 { offset += 1; return array }
                try consume(44)
            }
        }
        let start = offset
        if first == 34 {
            offset += 1; var escaped = false, closed = false
            while let c = peek {
                offset += 1
                if escaped { escaped = false }
                else if c == 92 { escaped = true }
                else if c == 34 { closed = true; break }
                guard offset - start <= 1_048_576 else { throw CollectorError.invalidResponse }
            }
            guard closed else { throw CollectorError.invalidResponse }
        } else {
            while let c = peek, ![9,10,13,32,44,93,125].contains(c) {
                offset += 1; guard offset - start <= 64 else { throw CollectorError.invalidResponse }
            }
        }
        guard offset > start else { throw CollectorError.invalidResponse }
        do {
            let value = try JSONSerialization.jsonObject(with: Data(bytes[start..<offset]), options: [.fragmentsAllowed])
            if let n = value as? NSNumber, !n.doubleValue.isFinite { throw CollectorError.invalidResponse }
            return value
        } catch { throw CollectorError.invalidResponse }
    }
}
