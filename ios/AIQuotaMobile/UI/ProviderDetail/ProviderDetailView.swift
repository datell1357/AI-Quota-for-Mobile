import Foundation
import SwiftUI

struct ProviderDetailView: View {
    let snapshot: ProviderUsageSnapshot
    let isBusy: Bool
    let colors: AIQuotaThemeColors
    let onConnect: () -> Void
    let onDisconnect: () -> Void
    let onAddWidget: () -> Void

    var body: some View {
        ScrollView {
            ProviderDetailWindow(
                snapshot: snapshot,
                isBusy: isBusy,
                colors: colors,
                onConnect: onConnect,
                onDisconnect: onDisconnect,
                onAddWidget: onAddWidget
            )
            .padding(16)
        }
        .background(AIQuotaDesignTokens.color(colors.appBackground))
        .accessibilityIdentifier("provider-detail-\(snapshot.providerId.storageId)")
    }
}

struct ProviderDetailWindow: View {
    let snapshot: ProviderUsageSnapshot
    let isBusy: Bool
    let colors: AIQuotaThemeColors
    let onConnect: () -> Void
    let onDisconnect: () -> Void
    let onAddWidget: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleBar
            pathBar
            VStack(alignment: .leading, spacing: 16) {
                ProviderDetailSummaryBlock(
                    snapshot: snapshot,
                    isBusy: isBusy,
                    colors: colors,
                    onConnect: onConnect,
                    onDisconnect: onDisconnect,
                    onAddWidget: onAddWidget
                )
                sectionTitle(L10n.text("provider_usage_title"))
                usageRows
                ProviderDetailAnalysisSection(snapshot: snapshot, colors: colors)
            }
            .padding(16)
            .background(AIQuotaDesignTokens.color(colors.content))
        }
        .background(AIQuotaDesignTokens.color(colors.cardChrome))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AIQuotaDesignTokens.color(colors.border), lineWidth: 1)
        )
    }

    private var titleBar: some View {
        HStack(spacing: 6) {
            trafficLight(colors.trafficRed)
            trafficLight(colors.trafficYellow)
            trafficLight(colors.trafficGreen)
            Text(snapshot.displayName)
                .font(.caption.weight(.bold))
                .foregroundStyle(AIQuotaDesignTokens.color(colors.titleText))
                .lineLimit(1)
            Spacer()
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
        .background(AIQuotaDesignTokens.color(colors.titleBar))
    }

    private var pathBar: some View {
        HStack(spacing: 8) {
            ProviderIconBadge(providerId: snapshot.providerId, colors: colors)
            Text("~/AI Quota/\(snapshot.providerId.displayName)")
                .font(.caption.monospaced())
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
                .lineLimit(1)
            Spacer()
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
        .background(AIQuotaDesignTokens.color(colors.cardChrome))
    }

    @ViewBuilder private var usageRows: some View {
        if snapshot.lines.isEmpty {
            Text(L10n.text("provider_no_lines"))
                .font(.subheadline)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
        } else {
            ForEach(Array(snapshot.lines.enumerated()), id: \.element.key) { index, line in
                ProviderDetailUsageLineRow(
                    line: line,
                    providerId: snapshot.providerId,
                    lineIndex: index,
                    colors: colors
                )
            }
        }
    }

    private func sectionTitle(_ title: String) -> some View {
        Text(title)
            .font(.subheadline.weight(.bold))
            .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
    }

    private func trafficLight(_ color: UInt32) -> some View {
        Circle()
            .fill(AIQuotaDesignTokens.color(color))
            .frame(width: 10, height: 10)
    }
}

struct ProviderDetailSummaryBlock: View {
    let snapshot: ProviderUsageSnapshot
    let isBusy: Bool
    let colors: AIQuotaThemeColors
    let onConnect: () -> Void
    let onDisconnect: () -> Void
    let onAddWidget: () -> Void

    var body: some View {
        HStack(alignment: .top, spacing: 14) {
            ProviderIconBadge(providerId: snapshot.providerId, colors: colors)
                .frame(width: 54, height: 54)
            VStack(alignment: .leading, spacing: 7) {
                Text(L10n.format("provider_detail_status", providerDetailStatus(snapshot, isBusy: isBusy)))
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
                if let plan = snapshot.planLabel, !plan.isEmpty {
                    Text(L10n.format("provider_detail_plan", plan))
                        .font(.subheadline)
                        .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
                }
                if !snapshot.updatedAt.isEmpty {
                    Text(L10n.format("provider_detail_updated", snapshot.updatedAt))
                        .font(.caption)
                        .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
                }
                if let message = snapshot.message, !message.isEmpty {
                    Text(message)
                        .font(.caption)
                        .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
                }
            }
            Spacer(minLength: 8)
            actionColumn
        }
    }

    @ViewBuilder private var actionColumn: some View {
        VStack(alignment: .trailing, spacing: 8) {
            switch snapshot.primaryConnectionAction() {
            case .connect:
                Button(L10n.text("provider_connect"), action: onConnect)
                    .buttonStyle(.borderedProminent)
            case .disconnect:
                Button(L10n.text("provider_disconnect"), action: onDisconnect)
                    .buttonStyle(.borderedProminent)
            case .none:
                EmptyView()
            }
            Button(L10n.text("provider_add_widget"), action: onAddWidget)
                .buttonStyle(.bordered)
        }
        .font(.caption.weight(.semibold))
    }
}

struct ProviderDetailUsageLineRow: View {
    let line: ProviderUsageLine
    let providerId: ProviderId
    let lineIndex: Int
    let colors: AIQuotaThemeColors

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .top, spacing: 10) {
                Text(providerDetailUsageLabel(line, providerId: providerId, lineIndex: lineIndex))
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
                Spacer()
                Text(line.remainingText)
                    .font(.caption)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
            }
            if let remainingPercent = line.remainingPercent {
                ProgressView(value: Double(min(max(remainingPercent, 0), 1)))
                    .tint(AIQuotaDesignTokens.color(colors.progress))
            }
            if let resetText = line.resetText, !resetText.isEmpty {
                Text(resetText)
                    .font(.caption)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            ProviderDetailMetadataView(line: line, colors: colors)
        }
        .padding(12)
        .background(AIQuotaDesignTokens.color(colors.contentAlt))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AIQuotaDesignTokens.color(colors.borderSoft), lineWidth: 1)
        )
    }
}

struct ProviderDetailAnalysisSection: View {
    let snapshot: ProviderUsageSnapshot
    let colors: AIQuotaThemeColors

    var body: some View {
        let analysis = providerDetailAnalysis(snapshot)
        VStack(alignment: .leading, spacing: 8) {
            Text(L10n.text("provider_analysis_title"))
                .font(.subheadline.weight(.bold))
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
            if analysis.count == 0 {
                Text(L10n.text("provider_analysis_empty"))
                    .font(.subheadline)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
            } else {
                Text(L10n.format("provider_analysis_count", analysis.count))
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
                if let lowestLabel = analysis.lowestLabel, let lowestPercentText = analysis.lowestPercentText {
                    Text(L10n.format("provider_analysis_lowest", lowestLabel, lowestPercentText))
                        .font(.subheadline)
                        .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
                } else {
                    Text(L10n.text("provider_analysis_no_percent"))
                        .font(.subheadline)
                        .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
                }
                if let reset = analysis.lowestResetText {
                    Text(L10n.format("provider_analysis_reset", reset))
                        .font(.caption)
                        .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
                }
            }
        }
    }
}

struct ProviderDetailMetadataView: View {
    let line: ProviderUsageLine
    let colors: AIQuotaThemeColors

    @ViewBuilder var body: some View {
        if let metadata = metadataText(for: line) {
            VStack(alignment: .leading, spacing: 4) {
                Text(L10n.text("metadata_title"))
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
                Text(metadata)
                    .font(.caption2)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
            }
        }
    }
}

private struct ProviderIconBadge: View {
    let providerId: ProviderId
    let colors: AIQuotaThemeColors

    var body: some View {
        Text(String(providerId.displayName.prefix(1)))
            .font(.headline.weight(.bold))
            .foregroundStyle(AIQuotaDesignTokens.color(colors.titleText))
            .frame(width: 36, height: 36)
            .background(AIQuotaDesignTokens.color(colors.selectedNav))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .accessibilityHidden(true)
    }
}

struct ProviderDetailAnalysis: Equatable {
    let count: Int
    let lowestLabel: String?
    let lowestPercentText: String?
    let lowestResetText: String?
}

func providerDetailStatus(_ snapshot: ProviderUsageSnapshot, isBusy: Bool) -> String {
    if isBusy { return L10n.text("provider_status_working") }
    if snapshot.connectionState == .connecting { return L10n.text("provider_status_connecting") }
    if snapshot.connectionState == .collecting || snapshot.refreshState == .refreshing { return L10n.text("provider_status_collecting") }

    switch snapshot.connectionState {
    case .disconnected, .notConnected:
        return L10n.text("provider_status_disconnected")
    case .connecting:
        return L10n.text("provider_status_connecting")
    case .connected:
        return L10n.text("provider_status_connected")
    case .collecting:
        return L10n.text("provider_status_collecting")
    case .stale:
        return snapshot.lines.isEmpty ? L10n.text("provider_status_auth_required") : L10n.text("provider_status_connected")
    case .interactiveAuthRequired:
        return L10n.text("provider_status_auth_required")
    case .unavailable:
        return L10n.text("provider_unavailable")
    case .error:
        return L10n.text("provider_status_error")
    }
}

func providerDetailUsageLabel(_ line: ProviderUsageLine, providerId: ProviderId, lineIndex: Int) -> String {
    if !line.label.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
        return line.label
    }
    return "\(providerId.displayName) usage \(lineIndex + 1)"
}

func providerDetailAnalysis(_ snapshot: ProviderUsageSnapshot) -> ProviderDetailAnalysis {
    let lowest = snapshot.lines
        .enumerated()
        .compactMap { index, line -> (Int, ProviderUsageLine, Float)? in
            guard let remainingPercent = line.remainingPercent else { return nil }
            return (index, line, remainingPercent)
        }
        .min { lhs, rhs in lhs.2 < rhs.2 }

    return ProviderDetailAnalysis(
        count: snapshot.lines.count,
        lowestLabel: lowest.map { providerDetailUsageLabel($0.1, providerId: snapshot.providerId, lineIndex: $0.0) },
        lowestPercentText: lowest.map { providerDetailPercentText($0.2) },
        lowestResetText: lowest?.1.resetText
    )
}

func providerDetailPercentText(_ value: Float) -> String {
    "\(Int((min(max(value, 0), 1) * 100).rounded()))%"
}

func metadataText(for line: ProviderUsageLine) -> String? {
    var parts: [String] = []
    if let category = line.category, !category.isEmpty { parts.append("category: \(category)") }
    if let unit = line.unit, !unit.isEmpty { parts.append("unit: \(unit)") }
    if let windowText = line.windowText, !windowText.isEmpty { parts.append("window: \(windowText)") }
    if let startsAt = line.startsAt, !startsAt.isEmpty { parts.append("startsAt: \(startsAt)") }
    if let resetsAt = line.resetsAt, !resetsAt.isEmpty { parts.append("resetsAt: \(resetsAt)") }
    if !line.source.isEmpty { parts.append("source: \(line.source)") }
    if let confidence = line.confidence {
        parts.append("confidence: \(Int((min(max(confidence, 0), 1) * 100).rounded()))%")
    }
    return parts.isEmpty ? nil : parts.joined(separator: " | ")
}
