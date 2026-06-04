import XCTest
@testable import AIQuotaMobile

final class DashboardReorderTests: XCTestCase {
    func testDraggingFirstCardAfterAdjacentCardsTargetsInsertedPosition() {
        let slot = dragInsertionSlotFromCenter(
            currentVisibleIndex: 0,
            draggedCenterX: 100,
            draggedCenterY: 610,
            visibleCardCenters: verticalCenters
        )
        let target = targetIndexFromInsertionSlot(currentVisibleIndex: 0, insertionSlot: slot, visibleCount: 4)

        XCTAssertEqual(slot, 3)
        XCTAssertEqual(target, 2)
    }

    func testDraggingLastCardBeforeAdjacentProviderTargetsBeforeProvider() {
        let target = dragTargetIndexFromCenter(
            currentVisibleIndex: 3,
            draggedCenterX: 100,
            draggedCenterY: 200,
            visibleCardCenters: verticalCenters
        )

        XCTAssertEqual(target, 1)
    }

    func testGridInsertionUsesNearestSlotCenter() {
        let target = dragTargetIndexFromCenter(
            currentVisibleIndex: 0,
            draggedCenterX: 200,
            draggedCenterY: 300,
            visibleCardCenters: [
                DashboardCardCenter(providerId: .claude, x: 100, y: 100),
                DashboardCardCenter(providerId: .codex, x: 300, y: 100),
                DashboardCardCenter(providerId: .gemini, x: 100, y: 300),
                DashboardCardCenter(providerId: .copilot, x: 300, y: 300)
            ]
        )

        XCTAssertEqual(target, 2)
    }

    func testPreviewVisibleProviderOrderMovesProvider() {
        let preview = previewVisibleProviderOrder(
            [.codex, .claude, .gemini, .copilot],
            movingProvider: .claude,
            targetIndex: 2
        )

        XCTAssertEqual(preview, [.codex, .gemini, .claude, .copilot])
    }

    func testPreviewVisibleProviderOrderDropsDuplicateInput() {
        let preview = previewVisibleProviderOrder(
            [.codex, .claude, .claude, .gemini, .copilot],
            movingProvider: .claude,
            targetIndex: 3
        )

        XCTAssertEqual(preview, [.codex, .gemini, .copilot, .claude])
    }

    private var verticalCenters: [DashboardCardCenter] {
        [
            DashboardCardCenter(providerId: .claude, x: 100, y: 100),
            DashboardCardCenter(providerId: .codex, x: 100, y: 300),
            DashboardCardCenter(providerId: .gemini, x: 100, y: 500),
            DashboardCardCenter(providerId: .copilot, x: 100, y: 700)
        ]
    }
}
