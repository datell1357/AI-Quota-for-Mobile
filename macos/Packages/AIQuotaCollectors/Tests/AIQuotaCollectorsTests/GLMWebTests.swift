import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let glmWebTime = Date(timeIntervalSince1970: 1_789_588_800)
private func gwJSON(_ value: Any) throws -> Data { try JSONSerialization.data(withJSONObject: value, options: [.sortedKeys]) }
private func gwScope(_ team: Bool = false) throws -> GLMWebScope { try GLMWebScope(organization: "org-fixture", project: team ? "project-team" : "project-personal", team: team) }
private func gwIdentity(_ team: Bool = false) throws -> RemoteIdentity { try RemoteIdentity(subject: "customer-12345", workspace: gwScope(team).id, product: GLMWebClient.product) }
private func gwCustomer(_ subject: String = "customer-12345", teamType: Int = 2) -> [String:Any] {
    ["code":200,"success":true,"data":["customerNumber":subject,"organizations":[
        ["organizationId":"org-fixture","organizationName":"Fixture organization","projects":[
            ["projectId":"project-personal","projectName":"Personal project","projectType":1],
            ["projectId":"project-team","projectName":"Team project","projectType":teamType]]]]]]
}
private func gwQuota() -> [String:Any] {
    ["code":200,"data":["limits":[["type":"CREDIT_LIMIT","unit":3,"number":5,"usage":2000,"currentValue":500,"remaining":1500,"percentage":25]]]]
}
private actor GLMWebHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var customers = [gwCustomer()], quota = gwQuota()
    var subscription: [String:Any] = ["data":[["subscription":["name":"GLM Coding Pro Plan"],"productName":"GLM Coding Pro Plan"]]]
    var failurePath = "", status = 200, headers: [String:String] = [:]
    var rotateCookie = false
    func setCustomers(_ values: [Data]) throws { customers = try values.map { try #require(JSONSerialization.jsonObject(with: $0) as? [String:Any]) } }
    func setQuota(_ value: Data) throws { quota = try #require(JSONSerialization.jsonObject(with: value) as? [String:Any]) }
    func setPlan(_ value: Data) throws { subscription = try #require(JSONSerialization.jsonObject(with: value) as? [String:Any]) }
    func rotate() { rotateCookie = true }
    func fail(_ status: Int, path: String = "/biz/customer/getCustomerInfo", headers: [String:String] = [:]) { self.status = status; failurePath = "/api" + path; self.headers = headers }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        #expect(request.httpMethod == "GET" && request.httpBody == nil && request.url?.scheme == "https" && request.url?.host == "api.z.ai")
        #expect(request.value(forHTTPHeaderField:"Authorization") == "Bearer synthetic-glm-web-token")
        #expect(request.value(forHTTPHeaderField:"Origin") == "https://z.ai")
        let path = request.url!.path
        if path == failurePath { return HTTPResult(status: status, headers: headers, body: Data("private diagnostic must not escape".utf8)) }
        let value: [String:Any]
        var responseHeaders = ["Content-Type":"application/json; charset=UTF-8"]
        if path == "/api/biz/customer/getCustomerInfo" {
            #expect(request.value(forHTTPHeaderField:"Bigmodel-Organization") == nil && request.value(forHTTPHeaderField:"Bigmodel-Project") == nil)
            value = customers.count > 1 ? customers.removeFirst() : customers[0]
            if rotateCookie { responseHeaders["Set-Cookie"] = "session=synthetic-rotated; Domain=.z.ai; Path=/; Secure; HttpOnly" }
        } else {
            #expect(request.value(forHTTPHeaderField:"Bigmodel-Organization") == "org-fixture")
            let team = request.value(forHTTPHeaderField:"Bigmodel-Project") == "project-team"
            #expect(request.value(forHTTPHeaderField:"Bigmodel-Project") == (team ? "project-team" : "project-personal"))
            #expect(request.url?.query == (team ? "type=2" : nil))
            switch path {
            case "/api/monitor/usage/quota/limit": value = quota
            case "/api/biz/subscription/list": #expect(!team); value = subscription
            default: Issue.record("Unexpected endpoint"); throw CollectorError.invalidResponse
            }
        }
        return try HTTPResult(status: 200, headers: responseHeaders, body: gwJSON(value))
    }
}

@Test(arguments: [false, true])
func glmWebVerifiesCustomerAndSelectedProjectWithPersonalAndTeamKeptSeparate(_ team: Bool) async throws {
    let http = GLMWebHTTP(), client = GLMWebClient(transport: http, now: { glmWebTime })
    let found = try await client.discover(accessToken: "synthetic-glm-web-token")
    #expect(found.subject == "customer-12345" && found.workspaces.count == 2)
    #expect(try found.workspaces.map(\.scope) == [gwScope(),gwScope(true)])
    let output = try await client.collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity(team))
    #expect(output.report.metrics[0].remainingFraction == 0.75 && output.report.metrics[0].unit == "credits")
    #expect(output.report.plan == (team ? nil : "GLM Coding Pro Plan") && output.transferredBytes > 100)
    #expect(await http.requests.filter { $0.url?.path == "/api/biz/customer/getCustomerInfo" }.count == 3)
    #expect(await http.requests.filter { $0.url?.path == "/api/biz/subscription/list" }.count == (team ? 0 : 1))
}

@Test func glmWebConsumesExistingAndroidQuotaFixtureWithoutChangingAmounts() async throws {
    let url = try #require(Bundle.module.url(forResource: "glm-credit-limits", withExtension: "json", subdirectory: "Fixtures"))
    let fixture = try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String:Any])
    let http = GLMWebHTTP(); try await http.setQuota(try gwJSON(#require(fixture["payload"] as? [String:Any])))
    let result = try await GLMWebClient(transport: http).collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity())
    #expect(result.report.metrics.map(\.remainingFraction) == [0.75,1])
    #expect(result.report.metrics.map(\.limit) == [2000,10000])
    #expect(result.report.plan == "lite")
}

@Test(arguments: ["before", "after", "membership", "type"])
func glmWebRejectsChangedCustomerMembershipOrProjectType(_ change: String) async throws {
    let http = GLMWebHTTP()
    if change == "before" { try await http.setCustomers(try ([gwCustomer("other-customer")]).map(gwJSON)) }
    if change == "after" { try await http.setCustomers(try ([gwCustomer(),gwCustomer("other-customer")]).map(gwJSON)) }
    if change == "membership" { try await http.setCustomers(try ([gwCustomer(),["code":200,"data":["customerNumber":"customer-12345","organizations":[["organizationId":"other-org","projects":[["projectId":"other-project","projectType":1]]]]]]]).map(gwJSON)) }
    if change == "type" { try await http.setCustomers(try ([gwCustomer(),gwCustomer(teamType:1)]).map(gwJSON)) }
    await #expect(throws: CoreError.identityMismatch) {
        try await GLMWebClient(transport: http).collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity(change == "type"))
    }
}

@Test func glmWebValidatesCustomerAndScopeInsteadOfUsingNamesOrLocalClaims() async throws {
    let bad: [[String:Any]] = [[:], ["code":200,"data":["customerNumber":"customer-12345","organizations":[]]],
        ["code":200,"data":["customerNumber":true,"organizations":[]]],
        ["code":200,"data":["customerNumber":"customer-12345","organizations":[["organizationId":"org\n","projects":[]]]]],
        ["code":200,"data":["customerNumber":"customer-12345","organizations":[["organizationId":"org","projects":[["projectId":"p","projectType":99]]]]]],
        ["code":200,"data":["customerNumber":"customer-12345","organizations":[["organizationId":"org","projects":[["projectId":"p","projectType":1],["projectId":"p","projectType":2]]]]]]]
    for value in bad {
        let http = GLMWebHTTP(); try await http.setCustomers(try ([value]).map(gwJSON))
        await #expect(throws: CollectorError.invalidResponse) { try await GLMWebClient(transport: http).discover(accessToken: "synthetic-glm-web-token") }
    }
    for raw in ["[]", "[\"org\",\"project\",\"unknown\"]", "[\"org\",\"project\",\"personal\",\"extra\"]"] {
        #expect(throws: CoreError.identityMismatch) { try GLMWebScope(id: raw) }
    }
    #expect(throws: CollectorError.invalidResponse) { try GLMWebScope(organization: "org\n", project: "p", team: false) }
    let numeric: [String:Any] = ["code":200,"data":["customerNumber":12345,"organizations":[["organizationId":200,"projects":[["projectId":300,"projectType":1]]]]]]
    let http = GLMWebHTTP(); try await http.setCustomers(try ([numeric]).map(gwJSON))
    let account = try await GLMWebClient(transport: http).discover(accessToken: "synthetic-glm-web-token")
    #expect(account.subject == "12345" && account.workspaces[0].scope.organization == "200")
}

@Test func glmWebOptionalPlanCannotOverrideQuotaOrCreateATierFromDates() async throws {
    for metadata in [["code":200,"data":["tier":"2026-07-10","subscription":["name":"Billing","reset":"2026-07-10"]]],
                     ["code":200,"data":[["productName":"GLM Coding Pro Plan"],["productName":"GLM Coding Max Plan"]]]] as [[String:Any]] {
        let http = GLMWebHTTP(); try await http.setPlan(try gwJSON(metadata))
        let report = try await GLMWebClient(transport: http).collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity()).report
        #expect(report.plan == nil && report.metrics[0].remainingFraction == 0.75)
    }
    let http = GLMWebHTTP(); await http.fail(503, path: "/biz/subscription/list")
    #expect(try await GLMWebClient(transport: http).collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity()).report.metrics.count == 1)
}

@Test func glmWebExplicitNoSubscriptionIsDifferentFromEmptyOrMalformedQuota() async throws {
    let http = GLMWebHTTP(), client = GLMWebClient(transport: http)
    try await http.setQuota(try gwJSON(["code":200,"success":false,"msg":"You don't have any subscription"]))
    let report = try await client.collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity()).report
    #expect(report.plan == "No subscription" && report.metrics.isEmpty)
    for quota in [["code":200,"data":["limits":[]]], ["code":200,"data":[:]], ["code":200,"success":false,"data":["limits":[]]]] as [[String:Any]] {
        try await http.setQuota(try gwJSON(quota))
        await #expect(throws: CollectorError.invalidResponse) { try await client.collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity()) }
    }
}

@Test func glmWebHTTPAndEnvelopeErrorsDoNotBecomeZeroOrFullUsage() async throws {
    let http = GLMWebHTTP(), client = GLMWebClient(transport: http, now: { glmWebTime })
    for status in [401,403,429,503,302] {
        await http.fail(status)
        do { _ = try await client.discover(accessToken: "synthetic-glm-web-token"); Issue.record("Accepted HTTP failure") }
        catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403 || status == 302) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == glmWebTime.addingTimeInterval(60)) }
        catch CollectorError.network { #expect(status == 503) }
    }
    await http.fail(429, headers: ["Retry-After":"90"])
    await #expect(throws: CollectorError.rateLimited(until: glmWebTime.addingTimeInterval(90))) { try await client.discover(accessToken: "synthetic-glm-web-token") }
    let envelopeHTTP = GLMWebHTTP(); try await envelopeHTTP.setCustomers([try gwJSON(["code":1001])])
    await #expect(throws: CollectorError.authenticationRequired) { try await GLMWebClient(transport: envelopeHTTP).discover(accessToken: "synthetic-glm-web-token") }
}

private actor GLMWebVault: CredentialVault {
    var values: [UUID:CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let r = values[reference] else { throw AuthenticationError.missingCredential }; return r }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private actor GLMWebCookies: WebCookieStore {
    var profiles: [UUID:[HTTPCookie]] = [:]
    func cookies(profileID: UUID) -> [HTTPCookie] { profiles[profileID] ?? [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { profiles[profileID] = [cookie] }
}

@Test(arguments: ["identity", "malformed", "unauthorized", "no-subscription"])
func glmWebStoredProfileTokenFeedsSQLiteAndSnapshotWithoutCredentialLeakage(_ failure: String) async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaGLMWeb-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: url), vault = GLMWebVault(), cookies = GLMWebCookies()
    let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .glm, alias: "GLM web"), other = try await repository.add(provider: .claude, alias: "Keep")
    let attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .glm, identity: gwIdentity(), kind: .webSession,
        secret: "synthetic-glm-web-token", webProfileID: attempt.webProfileID))
    let connected = try await repository.account(account.id), http = GLMWebHTTP(); await http.rotate()
    let source = StoredAccountSessionSource(login: login, webProfiles: cookies)
    let collector = GLMWebCollector(sessions: source, transport: http, now: { glmWebTime })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { glmWebTime })
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let usage = try #require(await repository.usage(account.id))
    #expect(usage.metrics[0].remainingFraction == 0.75)
    #expect(await http.requests.first?.value(forHTTPHeaderField:"Cookie") == nil)
    #expect(await http.requests.dropFirst().allSatisfy { $0.value(forHTTPHeaderField:"Cookie") == "session=synthetic-rotated" })
    switch failure {
    case "identity": try await http.setCustomers(try ([gwCustomer("other-customer")]).map(gwJSON))
    case "malformed": try await http.setQuota(try gwJSON(["code":200,"data":[:]]))
    case "unauthorized": await http.fail(401)
    default: try await http.setQuota(try gwJSON(["code":200,"msg":"You don't have any subscription"]))
    }
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    if failure == "no-subscription" {
        #expect(try await repository.usage(account.id)?.metrics.isEmpty == true)
        #expect(try await repository.account(account.id).state == .unavailable)
    } else { #expect(try await repository.usage(account.id) == usage) }
    let current = try await repository.account(account.id)
    #expect(current.identity == connected.identity && current.credentialReference == connected.credentialReference)
    #expect(try await repository.account(other.id) == other)
    let snapshot = url.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish(now: glmWebTime)
    let content = String(decoding: try Data(contentsOf: snapshot), as: UTF8.self)
    #expect(!content.contains("synthetic-glm-web-token") && !content.contains("synthetic-rotated") && !content.contains("customer-12345"))
    let reopened = try AccountRepository(url: url)
    #expect(try await reopened.account(account.id).credentialReference == connected.credentialReference)
}

private actor GLMWebLateHTTP: HTTPTransport {
    let base = GLMWebHTTP()
    var continuation: CheckedContinuation<Void,Never>?, ready: CheckedContinuation<Void,Never>?
    func send(_ request: URLRequest) async throws -> HTTPResult {
        if request.url?.path == "/api/monitor/usage/quota/limit" { await withCheckedContinuation { continuation = $0; ready?.resume(); ready = nil } }
        return try await base.send(request)
    }
    func waitForQuota() async { if continuation == nil { await withCheckedContinuation { ready = $0 } } }
    func resume() { continuation?.resume(); continuation = nil }
}
@Test func glmWebCancelledQuotaIsNotAdopted() async throws {
    let http = GLMWebLateHTTP()
    let task = Task { try await GLMWebClient(transport: http).collect(accessToken: "synthetic-glm-web-token", expected: gwIdentity()) }
    await http.waitForQuota(); task.cancel(); await http.resume()
    await #expect(throws: CancellationError.self) { try await task.value }
}

private struct GLMWebFixedResponse: HTTPTransport {
    let result: HTTPResult
    func send(_ request: URLRequest) -> HTTPResult { result }
}
@Test func glmWebRejectsInvalidTokensAPIKeyIdentityHTMLAndOversizedBodies() async throws {
    let http = GLMWebHTTP(), client = GLMWebClient(transport: http)
    for token in ["", "Bearer token", "token\n", String(repeating:"x",count:16_385)] {
        await #expect(throws: CollectorError.authenticationRequired) { try await client.discover(accessToken: token) }
    }
    await #expect(throws: CoreError.identityMismatch) {
        try await client.collect(accessToken: "synthetic-glm-web-token", expected: GLMAPIConfiguration().binding(apiKey: "synthetic-api-key"))
    }
    #expect(await http.requests.isEmpty)
    for response in [HTTPResult(status:200,headers:["Content-Type":"text/html"],body:Data("<html>Sign in</html>".utf8)),
                     HTTPResult(status:200,headers:["Content-Type":"application/json"],body:Data(repeating:32,count:1_048_577))] {
        await #expect(throws: CollectorError.invalidResponse) { try await GLMWebClient(transport: GLMWebFixedResponse(result: response)).discover(accessToken: "synthetic-glm-web-token") }
    }
}
