import AIQuotaCore
import Foundation
import ServiceManagement
import UserNotifications

actor NotificationDelivery {
    private var delivering = false
    func deliver(repository: AccountRepository, snapshot: WidgetSnapshot, korean: Bool) async throws {
        guard !delivering else { return }
        delivering = true
        defer { delivering = false }
        let pending = try await repository.pendingNotifications()
        guard !pending.isEmpty else { return }
        let center = UNUserNotificationCenter.current()
        let status = await center.notificationSettings().authorizationStatus
        for event in pending {
            // Persist consumption before enqueueing: a removed notification cannot replay after restart.
            // A process crash between these operations can lose delivery, but cannot duplicate it.
            try await repository.markNotificationDelivered(event.id)
            guard status == .authorized || status == .provisional,
                  let account = snapshot.accounts.first(where: { $0.id == event.accountID }) else { continue }
            let content = UNMutableNotificationContent()
            content.title = account.alias
            content.body = event.kind == .resetBoundary
                ? (korean ? "관찰 중인 사용량 기간이 종료됐습니다. 최신 수집값을 확인해 주세요." : "The observed usage period ended. Check the latest reading.")
                : (korean ? "남은 사용량이 설정한 기준 이하로 내려갔습니다." : "Remaining usage crossed your configured threshold.")
            content.sound = .default
            content.userInfo = ["accountID": event.accountID.uuidString]
            try await center.add(UNNotificationRequest(identifier: event.id, content: content, trigger: nil))
        }
    }
}

extension DesktopModel {
    func updatePermissionStatus() async {
        notificationStatus = await UNUserNotificationCenter.current().notificationSettings().authorizationStatus
        loginItemStatus = SMAppService.mainApp.status
    }
    func requestNotificationPermission() async {
        await updatePermissionStatus()
        guard notificationStatus == .notDetermined else { return }
        do { _ = try await UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) }
        catch { show(error) }
        await updatePermissionStatus()
    }
    func setLaunchAtLogin(_ enabled: Bool) async {
        do {
            if enabled { try SMAppService.mainApp.register() }
            else { try await SMAppService.mainApp.unregister() }
        } catch { show(error) }
        await updatePermissionStatus()
    }
}
