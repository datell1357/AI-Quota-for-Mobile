import SwiftUI

struct DashboardPoint: Equatable {
    let x: Double
    let y: Double

    func isValid() -> Bool {
        x.isFinite && y.isFinite
    }

    func distanceSquared(to other: DashboardPoint) -> Double {
        let dx = x - other.x
        let dy = y - other.y
        return dx * dx + dy * dy
    }
}

struct DashboardCardCenter: Equatable {
    let providerId: ProviderId
    let x: Double
    let y: Double

    func isValid() -> Bool {
        x.isFinite && y.isFinite
    }

    var point: DashboardPoint {
        DashboardPoint(x: x, y: y)
    }
}

struct ProviderDashboardView: View {
    let providerOrder: [ProviderId]
    let snapshots: [ProviderUsageSnapshot]
    let colors: AIQuotaThemeColors
    let onProviderSelected: (ProviderId) -> Void
    let onConnectProvider: (ProviderId) -> Void
    let onReorderProvider: (ProviderId, Int) -> Void
    let onAddWidget: (ProviderId) -> Void

    @State private var cardCenters: [DashboardCardCenter] = []
    @State private var activeDrag: DashboardDragState?

    private let columns = [
        GridItem(.adaptive(minimum: 220, maximum: 320), spacing: 16, alignment: .top)
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                dashboardOrderMarker

                if snapshots.isEmpty {
                    emptyState
                } else {
                    LazyVGrid(columns: columns, alignment: .leading, spacing: 16) {
                        ForEach(renderedSnapshots) { snapshot in
                            ProviderUsageCard(
                                snapshot: snapshot,
                                colors: colors,
                                onOpen: { onProviderSelected(snapshot.providerId) },
                                onConnect: { onConnectProvider(snapshot.providerId) },
                                onAddWidget: { onAddWidget(snapshot.providerId) }
                            )
                            .opacity(activeDrag?.providerId == snapshot.providerId ? 0.42 : 1)
                            .accessibilityIdentifier("dashboard-card-\(snapshot.providerId.storageId)")
                            .background(cardCenterPreference(for: snapshot))
                            .gesture(cardGesture(for: snapshot))
                        }
                    }
                }
            }
            .padding(16)
        }
        .coordinateSpace(name: "dashboard-card-grid")
        .background(AIQuotaDesignTokens.color(colors.appBackground))
        .overlay(alignment: .topLeading) {
            if let activeDrag {
                DashboardDragOverlay(
                    providerId: activeDrag.providerId,
                    displayName: activeDrag.providerId.displayName,
                    colors: colors,
                    translation: activeDrag.translation
                )
            }
        }
        .onPreferenceChange(DashboardCardCenterPreferenceKey.self) { centers in
            cardCenters = centers
        }
    }

    private var renderedSnapshots: [ProviderUsageSnapshot] {
        let renderedOrder: [ProviderId]
        if let activeDrag {
            renderedOrder = previewVisibleProviderOrder(
                visibleProviderOrder,
                movingProvider: activeDrag.providerId,
                targetIndex: activeDrag.targetIndex
            )
        } else {
            renderedOrder = visibleProviderOrder
        }

        return renderedOrder.compactMap { snapshotsByProvider[$0] }
    }

    private var visibleProviderOrder: [ProviderId] {
        let snapshotIds = Set(snapshots.map(\.providerId))
        return normalizedProviderOrder(providerOrder + snapshots.map(\.providerId))
            .filter { snapshotIds.contains($0) }
    }

    private var snapshotsByProvider: [ProviderId: ProviderUsageSnapshot] {
        snapshots.reduce(into: [ProviderId: ProviderUsageSnapshot]()) { result, snapshot in
            result[snapshot.providerId] = snapshot
        }
    }

    private var emptyState: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(L10n.text("dashboard_empty_title"))
                .font(.headline)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
            Text(L10n.text("dashboard_empty_body"))
                .font(.subheadline)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
        }
        .padding(18)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AIQuotaDesignTokens.color(colors.contentAlt))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }

    private var dashboardOrderMarker: some View {
        let marker = "dashboard-order-\(renderedSnapshots.map { $0.providerId.storageId }.joined(separator: "-"))"
        return Text(marker)
            .font(.caption2)
            .foregroundStyle(.clear)
            .frame(width: 1, height: 1)
            .opacity(0.01)
            .accessibilityIdentifier(marker)
            .accessibilityHidden(false)
    }

    private func cardCenterPreference(for snapshot: ProviderUsageSnapshot) -> some View {
        GeometryReader { proxy in
            let frame = proxy.frame(in: .named("dashboard-card-grid"))
            Color.clear.preference(
                key: DashboardCardCenterPreferenceKey.self,
                value: [
                    DashboardCardCenter(
                        providerId: snapshot.providerId,
                        x: Double(frame.midX),
                        y: Double(frame.midY)
                    )
                ]
            )
        }
    }

    private func cardGesture(for snapshot: ProviderUsageSnapshot) -> some Gesture {
        let currentIndex: Int
        if let activeDrag, activeDrag.providerId == snapshot.providerId {
            currentIndex = activeDrag.currentIndex
        } else {
            currentIndex = visibleProviderOrder.firstIndex(of: snapshot.providerId) ?? 0
        }

        return LongPressGesture(minimumDuration: 0.25)
            .sequenced(before: DragGesture(minimumDistance: 1, coordinateSpace: .named("dashboard-card-grid")))
            .onChanged { value in
                switch value {
                case .first(true):
                    activeDrag = DashboardDragState(
                        providerId: snapshot.providerId,
                        currentIndex: currentIndex,
                        targetIndex: currentIndex,
                        translation: .zero
                    )
                case .second(true, let drag?):
                    updateActiveDrag(
                        providerId: snapshot.providerId,
                        currentIndex: currentIndex,
                        location: drag.location,
                        translation: drag.translation
                    )
                default:
                    break
                }
            }
            .onEnded { value in
                switch value {
                case .second(true, let drag?):
                    updateActiveDrag(
                        providerId: snapshot.providerId,
                        currentIndex: currentIndex,
                        location: drag.location,
                        translation: drag.translation
                    )
                    commitActiveDrag()
                default:
                    activeDrag = nil
                }
            }
    }

    private func updateActiveDrag(
        providerId: ProviderId,
        currentIndex: Int,
        location: CGPoint,
        translation: CGSize
    ) {
        let targetIndex = dragTargetIndexFromCenter(
            currentVisibleIndex: currentIndex,
            draggedCenterX: Double(location.x),
            draggedCenterY: Double(location.y),
            visibleCardCenters: cardCenters
        )
        activeDrag = DashboardDragState(
            providerId: providerId,
            currentIndex: currentIndex,
            targetIndex: targetIndex,
            translation: translation
        )
    }

    private func commitActiveDrag() {
        guard let activeDrag else { return }
        if activeDrag.targetIndex != activeDrag.currentIndex {
            onReorderProvider(activeDrag.providerId, activeDrag.targetIndex)
        }
        self.activeDrag = nil
    }
}

struct ProviderUsageCard: View {
    let snapshot: ProviderUsageSnapshot
    let colors: AIQuotaThemeColors
    let onOpen: () -> Void
    let onConnect: () -> Void
    let onAddWidget: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            cardChrome
            VStack(alignment: .leading, spacing: 12) {
                header
                usagePreview
                actions
            }
            .padding(14)
            .background(AIQuotaDesignTokens.color(colors.content))
        }
        .background(AIQuotaDesignTokens.color(colors.cardChrome))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AIQuotaDesignTokens.color(colors.border), lineWidth: 1)
        )
        .onTapGesture(perform: onOpen)
    }

    private var cardChrome: some View {
        HStack(spacing: 6) {
            trafficLight(colors.trafficRed)
            trafficLight(colors.trafficYellow)
            trafficLight(colors.trafficGreen)
            Spacer()
            Text(snapshot.connectionState.rawValue)
                .font(.caption2.weight(.semibold))
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
        .background(AIQuotaDesignTokens.color(colors.cardChrome))
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(snapshot.displayName)
                .font(.headline.weight(.semibold))
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
            if let plan = snapshot.planLabel, !plan.isEmpty {
                Text(plan)
                    .font(.subheadline)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
            }
        }
    }

    private var usagePreview: some View {
        VStack(alignment: .leading, spacing: 8) {
            let previewLines = dashboardUsagePreviewLines(snapshot)
            if previewLines.isEmpty {
                Text(snapshot.message ?? L10n.text("dashboard_no_trusted_usage"))
                    .font(.subheadline)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
                    .frame(minHeight: 38, alignment: .leading)
            } else {
                ForEach(previewLines) { line in
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 8) {
                            Text(line.label)
                                .font(.subheadline.weight(.semibold))
                                .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
                            Spacer()
                            Text(line.remainingText)
                                .font(.caption)
                                .foregroundStyle(AIQuotaDesignTokens.color(colors.textSecondary))
                        }
                        if let usedPercent = line.usedPercent {
                            ProgressView(value: Double(usedPercent), total: 100)
                                .tint(AIQuotaDesignTokens.color(colors.progress))
                        }
                    }
                }
            }
        }
    }

    private var actions: some View {
        HStack(spacing: 8) {
            if snapshot.shouldShowDashboardConnectAction() {
                Button(L10n.text("provider_connect"), action: onConnect)
                    .buttonStyle(.borderedProminent)
            }
            Button(L10n.text("provider_add_widget"), action: onAddWidget)
                .buttonStyle(.bordered)
        }
        .font(.caption.weight(.semibold))
    }

    private func trafficLight(_ color: UInt32) -> some View {
        Circle()
            .fill(AIQuotaDesignTokens.color(color))
            .frame(width: 10, height: 10)
    }
}

struct DashboardDragOverlay: View {
    let providerId: ProviderId
    let displayName: String
    let colors: AIQuotaThemeColors
    let translation: CGSize

    var body: some View {
        Text(displayName)
            .font(.caption.weight(.semibold))
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(AIQuotaDesignTokens.color(colors.selectedNav))
            .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(radius: 6)
            .offset(translation)
            .allowsHitTesting(false)
            .accessibilityIdentifier("dashboard-drag-overlay-\(providerId.storageId)")
    }
}

private struct DashboardDragState: Equatable {
    let providerId: ProviderId
    let currentIndex: Int
    let targetIndex: Int
    let translation: CGSize
}

private struct DashboardCardCenterPreferenceKey: PreferenceKey {
    static var defaultValue: [DashboardCardCenter] = []

    static func reduce(value: inout [DashboardCardCenter], nextValue: () -> [DashboardCardCenter]) {
        value.append(contentsOf: nextValue())
    }
}

func dashboardUsagePreviewLines(_ snapshot: ProviderUsageSnapshot) -> [ProviderUsageLine] {
    Array(snapshot.lines.prefix(2))
}

func normalizedProviderOrder(_ providers: [ProviderId]) -> [ProviderId] {
    var seen = Set<ProviderId>()
    var normalized: [ProviderId] = []
    for provider in providers {
        if seen.insert(provider).inserted {
            normalized.append(provider)
        }
    }
    return normalized
}

func insertionSlotCenter(slot: Int, visibleCardCenters: [DashboardCardCenter]) -> DashboardPoint? {
    let centers = visibleCardCenters.filter { $0.isValid() }
    guard !centers.isEmpty else { return nil }

    let boundedSlot = min(max(slot, 0), centers.count)
    if centers.count == 1 {
        return centers[0].point
    }

    if boundedSlot == 0 {
        let first = centers[0].point
        let second = centers[1].point
        return DashboardPoint(x: first.x - (second.x - first.x) / 2, y: first.y - (second.y - first.y) / 2)
    }

    if boundedSlot == centers.count {
        let previous = centers[centers.count - 2].point
        let last = centers[centers.count - 1].point
        return DashboardPoint(x: last.x + (last.x - previous.x) / 2, y: last.y + (last.y - previous.y) / 2)
    }

    let before = centers[boundedSlot - 1].point
    let after = centers[boundedSlot].point
    return DashboardPoint(x: (before.x + after.x) / 2, y: (before.y + after.y) / 2)
}

func dragInsertionSlotFromCenter(
    currentVisibleIndex: Int,
    draggedCenterX: Double,
    draggedCenterY: Double,
    visibleCardCenters: [DashboardCardCenter]
) -> Int {
    let validCenters = visibleCardCenters.filter { $0.isValid() }
    guard !validCenters.isEmpty else { return currentVisibleIndex }

    let draggedCenter = DashboardPoint(x: draggedCenterX, y: draggedCenterY)
    guard draggedCenter.isValid() else { return currentVisibleIndex }

    let preferredSlot = min(max(currentVisibleIndex, 0), validCenters.count)
    var bestSlot = preferredSlot
    var bestDistance = Double.greatestFiniteMagnitude

    for slot in 0...validCenters.count {
        guard let slotCenter = insertionSlotCenter(slot: slot, visibleCardCenters: validCenters) else { continue }
        let distance = draggedCenter.distanceSquared(to: slotCenter)
        let distanceIsBetter = distance < bestDistance
        let tieIsCloserToCurrent = abs(distance - bestDistance) < 0.000001
            && abs(slot - preferredSlot) < abs(bestSlot - preferredSlot)
        if distanceIsBetter || tieIsCloserToCurrent {
            bestDistance = distance
            bestSlot = slot
        }
    }

    return bestSlot
}

func targetIndexFromInsertionSlot(
    currentVisibleIndex: Int,
    insertionSlot: Int,
    visibleCount: Int
) -> Int {
    guard visibleCount > 1 else { return currentVisibleIndex }

    let boundedCurrentIndex = min(max(currentVisibleIndex, 0), visibleCount - 1)
    let boundedSlot = min(max(insertionSlot, 0), visibleCount)
    let movedIndex = boundedSlot > currentVisibleIndex ? boundedSlot - 1 : boundedSlot
    return min(max(movedIndex, 0), visibleCount - 1 == 0 ? boundedCurrentIndex : visibleCount - 1)
}

func dragTargetIndexFromCenter(
    currentVisibleIndex: Int,
    draggedCenterX: Double,
    draggedCenterY: Double,
    visibleCardCenters: [DashboardCardCenter]
) -> Int {
    let slot = dragInsertionSlotFromCenter(
        currentVisibleIndex: currentVisibleIndex,
        draggedCenterX: draggedCenterX,
        draggedCenterY: draggedCenterY,
        visibleCardCenters: visibleCardCenters
    )
    return targetIndexFromInsertionSlot(
        currentVisibleIndex: currentVisibleIndex,
        insertionSlot: slot,
        visibleCount: visibleCardCenters.filter { $0.isValid() }.count
    )
}

func previewVisibleProviderOrder(
    _ visibleProviderOrder: [ProviderId],
    movingProvider: ProviderId?,
    targetIndex: Int?
) -> [ProviderId] {
    let normalized = normalizedProviderOrder(visibleProviderOrder)
    guard
        let movingProvider,
        let currentIndex = normalized.firstIndex(of: movingProvider),
        let targetIndex
    else {
        return normalized
    }

    var reordered = normalized
    let provider = reordered.remove(at: currentIndex)
    let boundedTargetIndex = min(max(targetIndex, 0), reordered.count)
    reordered.insert(provider, at: boundedTargetIndex)
    return reordered
}
