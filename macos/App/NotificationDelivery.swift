import AIQuotaCore
import Foundation
import ServiceManagement
import UserNotifications

struct SystemNotificationSender: UsageNotificationSending {
    let korean: Bool
    func authorizationAllowsDelivery() async -> Bool {
        let status = await UNUserNotificationCenter.current().notificationSettings().authorizationStatus
        return status == .authorized || status == .provisional
    }
    func send(_ event: UsageNotification, account: Account) async throws {
        let content = UNMutableNotificationContent()
        content.title = account.alias
        content.body = event.kind == .resetBoundary
            ? (korean ? "관찰 중인 사용량 기간이 종료됐습니다. 최신 수집값을 확인해 주세요." : "The observed usage period ended. Check the latest reading.")
            : (korean ? "남은 사용량이 설정한 기준 이하로 내려갔습니다." : "Remaining usage crossed your configured threshold.")
        content.sound = .default
        content.userInfo = ["accountID": event.accountID.uuidString]
        try await UNUserNotificationCenter.current().add(UNNotificationRequest(identifier: event.id, content: content, trigger: nil))
    }
    func retract(_ id: String) async {
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: [id])
        center.removeDeliveredNotifications(withIdentifiers: [id])
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
