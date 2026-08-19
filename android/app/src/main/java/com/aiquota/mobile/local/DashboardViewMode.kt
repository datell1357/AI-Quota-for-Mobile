package com.aiquota.mobile.local

/**
 * 대시보드에서 provider를 배치하는 방식.
 *
 * [LIST]는 기존 동작이다. 폰은 한 줄에 하나, 태블릿은 두 개씩 큼직하게 보여준다.
 * [CARD]는 한 줄에 두 개씩 작게 놓아 한 화면에 여섯 개가 들어오게 한다.
 */
enum class DashboardViewMode {
    LIST,
    CARD;

    companion object {
        val DEFAULT = LIST

        fun fromStorageId(value: String?): DashboardViewMode {
            return entries.firstOrNull { it.name.equals(value?.trim(), ignoreCase = true) } ?: DEFAULT
        }
    }
}

/** 카드형에서 한 화면에 보여줄 provider 수. 폰은 2열 × 3행, 태블릿은 3열 × 2행이다. */
const val DASHBOARD_CARD_MODE_VISIBLE_COUNT = 6

/** 카드형 열 수. 폰은 세로로 길어 2열 3행이 맞는다. */
const val DASHBOARD_CARD_MODE_COLUMN_COUNT = 2

/** 태블릿 카드형 열 수. 가로로 넓어 3열 2행이 화면 비율에 맞는다. */
const val DASHBOARD_CARD_MODE_TABLET_COLUMN_COUNT = 3
