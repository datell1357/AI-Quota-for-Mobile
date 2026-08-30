# AI Quota Android Design System

This document is the visual and interaction contract for the provider-account card catalog approved in Task 6. It extracts the existing Android dashboard rather than redesigning it. Every statement labeled **Current** is grounded in the cited source or visual artifact. Every statement labeled **Future contract** is an approved requirement for Tasks 7-23 and is not a claim about the current build.

Source paths are repository-relative unless absolute. The approved plan is `../.omo/plans/provider-card-catalog-ui.md`; durable owner decisions are `/Users/yeoreum/.omo/memory/agents/ai-quota-f8cc5df1/repo/reference/projects/ai-quota/multi-account-decisions.md`.

## 1. Atmosphere & Identity

AI Quota is a compact, local-first monitoring dashboard presented through two established desktop-window metaphors. Windows uses square chrome, dark navy outlines, violet title bars, white content, and yellow selection. macOS uses warm cream layers, hairlines, terracotta selection, rounded cards, and traffic-light controls. The recognizable signature is a provider usage card rendered as a small desktop window, including a title bar, path row, provider icon, status, and gauges. The provider-card catalog must preserve this signature, density, theme choice, and information hierarchy. It must not adopt the blue promotional wallpaper, marketing typography, or phone-home-screen composition visible in `English_Screenshot.png` and `Korean_Screenshot.png`; those images confirm the external AI usage-monitoring context and bilingual/CJK presentation, but they do not depict the current in-app dashboard.

The existing dashboard is operational rather than expressive. New catalog surfaces use the same Material 3 controls, theme roles, icon assets, and window-card anatomy already in the app. No new color, font, radius, elevation, or decorative motion token is approved by Task 6.

## 2. Color

### 2.1 Declared foundation values

These are the complete currently declared values. A value listed as reserve is present in code but is not mapped into either current light theme.

| Existing constant | Value | Current use |
| --- | --- | --- |
| `BorderDefault`, `TextPrimary` | `#1C293C` | Windows outline and primary text |
| `TextSecondary` | `#1C293CCC` | Windows secondary text |
| `TextTertiary` | `#1C293C99` | Windows muted text |
| `TextInverse` | `#1C293CE6` | Declared reserve |
| `SurfaceBase` | `#000000` | Declared reserve |
| `SurfaceMuted` | `#FFFFFF` | Windows background, panel, content, title text |
| `SurfaceRaised` | `#FDC800` | Windows selected navigation |
| `SurfaceStrong` | `#432DD7` | Windows primary, title bar, progress |
| `WindowChrome` | `#E7E4DC` | Windows card chrome, progress track, unselected navigation |
| `MacOSCanvas`, `MacOSOnDark` | `#FAF9F5` | macOS canvas/panel/content; declared on-dark text |
| `MacOSSurfaceSoft` | `#F5F0E8` | macOS title bar/content alternate |
| `MacOSSurfaceCard` | `#EFE9DE` | macOS card chrome/unselected navigation |
| `MacOSSurfaceCreamStrong` | `#E8E0D2` | macOS progress track |
| `MacOSPrimary` | `#CC785C` | macOS primary/selection/progress |
| `MacOSPrimaryActive` | `#A9583E` | macOS active primary |
| `MacOSSurfaceDark` | `#181715` | Declared reserve |
| `MacOSSurfaceDarkElevated` | `#252320` | Declared reserve |
| `MacOSSurfaceDarkSoft` | `#1F1E1B` | Declared reserve |
| `MacOSHairline` | `#E6DFD8` | macOS borders |
| `MacOSInk` | `#141413` | macOS primary/title text and shadow source |
| `MacOSBody` | `#3D3D3A` | macOS secondary text |
| `MacOSMuted` | `#6C6A64` | macOS muted text |
| `MacOSMutedSoft` | `#8E8B82` | Declared reserve |
| `MacOSOnDarkSoft` | `#A09D96` | Declared reserve |
| `MacOSSuccess` | `#5DB872` | Declared reserve |
| macOS traffic red/yellow/green | `#FF5F57`, `#FFBD2E`, `#28C840` | macOS window controls |
| Material error | `#C64545` | Material error role |

Sources: `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaDesignTokens.kt:10-37`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaDesignTokens.kt:66-115`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:863-876`.

### 2.2 Semantic role mapping

| Role | Windows current | macOS current | Rule |
| --- | --- | --- | --- |
| App background / panel | `#FFFFFF` | `#FAF9F5` | Catalog sheets and dialogs remain in the active theme family |
| Card chrome | `#E7E4DC` | `#EFE9DE` | Provider card outer surface |
| Title bar | `#432DD7` | `#F5F0E8` | Existing window title treatment |
| Content / alternate content | `#FFFFFF` / `#FFFFFF` | `#FAF9F5` / `#F5F0E8` | Card body and path row |
| Border / soft border | `#1C293C` / `#1C293C` | `#E6DFD8` / `#6C6A64` | Both soft-boundary roles meet the 3:1 non-text contrast target |
| Primary / active | `#432DD7` / `#2F1FAA` | `#CC785C` / `#A9583E` | Interactive emphasis and focus treatment |
| Selected / unselected navigation | `#FDC800` / `#E7E4DC` | `#A9583E` / `#EFE9DE` | Selection must also have semantic state, not color alone; macOS selected navigation uses the darker active role for white text |
| Progress / track | `#432DD7` / `#E7E4DC` | `#CC785C` / `#E8E0D2` | Gauges retain the user-selected provider override when present |
| Shadow | `#1C293C` at 24% | `#141413` at 8% | Use only at existing elevation levels |

Sources: `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaDesignTokens.kt:66-115`.

### 2.3 Color rules

- **Current:** Theme selection maps all component colors through `AIQuotaTheme.colors`; the shell supplies only a Material color scheme and does not supply a custom typography set. `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaDesignTokens.kt:118-131`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:724-726`.
- **Future contract:** Provider state, selection, validation, reauthentication, deletion progress, and errors must include text and/or semantics in addition to color. No status may depend on a colored gauge, border, or traffic-light dot alone.
- **Future contract:** New surfaces consume the existing semantic roles. If implementation proves a contrast failure, record it in Section 8 and resolve it by remapping an existing role before proposing a new value.
- **Future contract:** Both Windows and macOS themes are mandatory QA variants. The declared dark reserves are not an implemented dark theme and must not be presented as one.

## 3. Typography

### 3.1 Current type system

The app uses the platform Material 3 type system and default platform font because `MaterialTheme` receives a color scheme only. This is the only approved font stack. English and Korean therefore use Android's system fallback and must not be given separate ad hoc families. `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:724-726`.

| Surface | Existing style | Existing explicit override |
| --- | --- | --- |
| Dashboard title | `titleLarge`, bold, one line, ellipsis | None |
| Normal card title/status | `labelMedium`, bold for title | None |
| Dense card title/status | `labelMedium` | 10sp size, 13sp line height |
| Normal card message | `bodyMedium` | None |
| Dense card message | `bodyMedium` | 11sp size, 14sp line height |
| Dense path row | `labelSmall` | 9sp size, 12sp line height |
| Normal usage label | `bodySmall` | Material default; compact line height 14sp |
| Dense usage label | `bodySmall` | 11sp size, 13sp line height |
| Normal reset label | `labelSmall` | Material default; compact line height 12sp |
| Dense reset label | `labelSmall` | 9sp size, 11sp line height |
| Bottom navigation | `labelSmall`, semibold, up to two lines | Provider icons are 22dp |
| Widget configuration title | Platform `TextView` | 18sp phone, 20sp at 600dp or wider, bold |
| Widget hint/section label | Platform `TextView` | 13sp |
| Widget provider row | Platform `TextView` | 16sp |
| Widget Done action | Platform `TextView` | 15sp, bold |

Sources: `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:260-268`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:581-590`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:824-831`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:1213-1223`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:1270-1325`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:90-191`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:272-318`.

### 3.2 Typography behavior

- **Current:** Dashboard and card titles use one line with ellipsis; status uses one line; card messages use at most two lines; usage and reset labels use one line with ellipsis. `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:260-268`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:777-784`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:890-903`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:1235-1285`.
- **Current:** Only the brand identities `Anti Gravity` and `Open Code` intentionally use compact two-line labels with a 0.7 line-height multiplier. `android/app/src/main/java/com/aiquota/mobile/ui/ProviderLabelTypography.kt:6-16`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:959-965`.
- **Future contract:** Alias text may ellipsize visually in a card or navigation chip, but accessibility semantics expose the full alias and provider. User-entered aliases never receive forced line breaks.
- **Future contract:** At 200% font scale, action labels remain readable and reachable. Fixed-height title bars may retain their visual height only if text is not clipped; modal rows and dialogs must grow vertically. CJK wraps at natural boundaries and must not overlap icons, counters, or actions.
- **Future contract:** All visible copy is localized in `values/strings.xml` and `values-ko/strings.xml`; no Task 7-23 user-facing string is hardcoded in Kotlin.

## 4. Spacing & Layout

### 4.1 Existing adaptive metric system

The existing system is formula-based rather than a fixed named spacing scale. Tasks 7-23 must reuse these metrics and the established local constants. They must not introduce a parallel token scale.

- Screen inputs are first coerced to at least 320dp by 480dp. The implementation then computes `widthScale = clamp(compactWidth / 411, 1.0, 1.8)` and `heightScale = clamp(compactHeight / 800, 0.95, 1.25)`. Every `scaled(base, max)` output is `min(round(base * widthScale * heightScale), max)`; `base` and `max` are formula arguments, not an output range. Tablet branching begins at coerced width 600dp. `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:49-56`.
- Named QA output at 320dp by 480dp: phone/narrow branch, scales 1.0 and 0.95; content padding is 13dp horizontal by 11dp vertical, section/card/card-internal spacing is 9dp/9dp/7dp, title height is 34dp, list-card minimum is 167dp, navigation padding/gap is 8dp/3dp, and navigation chips are 48dp by 67dp. These values are outputs of the formula, not a new scale. `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:59-113`.
- Named QA output at the 411dp by 800dp baseline: phone branch with both scales 1.0; content padding is 14dp by 12dp, section/card/card-internal spacing is 9dp/9dp/7dp, title height is 36dp, list-card minimum is 176dp, and navigation chips are 61dp by 70dp after available-width division. `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:59-113`.
- Named QA output at 600dp by 800dp: tablet branch with width scale about 1.46 and height scale 1.0; content padding is 32dp by 26dp, section/card/card-internal spacing is 20dp/20dp/14dp after caps, title height is 48dp, list-card minimum is 220dp, and navigation chips are 85dp by 80dp. `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:59-113`.

### 4.2 Shell and scroll ownership

- **Current:** `Scaffold` owns fixed top and bottom regions. Its padded content hosts the active route. `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:726-757`.
- **Current:** The dashboard's padded `Column` is the sole vertical scroll owner. `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:235-244`.
- **Current:** A dashboard grid does not own another vertical scroll. Its exact calculated height is placed inside the outer scroll owner and `userScrollEnabled` is false. `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:338-348`.
- **Current:** Bottom navigation owns horizontal scrolling for a route list that exceeds available width and includes navigation-bar insets. `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:1176-1212`.
- **Current:** Widget configuration owns document-style vertical scroll through one `ScrollView`. `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:202-214`.
- **Future contract:** Onboarding, Add, naming, Remove, and confirmation are modal layers over the shell. A modal sheet may own its own bounded vertical scroll for long provider/card lists. It must not create an unnamed nested scroll region. The underlying dashboard does not scroll while a modal is active.
- **Task 19 responsive contract:** The naming dialog adopts StyleGallery's [`scroll-body-shell`](https://github.com/changeroa/StyleGallery/blob/main/patterns/viewport-shell/scroll-body-shell.md) spatial pattern when the IME constrains height: title/field/helper own the bounded vertical scroll, while Cancel/Add remain fixed after that body in source and focus order. Portrait keeps the established stacked dialog; landscape uses the available inline width for title, field/helper, then actions so all controls fit above the IME without reducing 48dp targets. IME insets bound the shell so the focused field, helper/error, and both actions remain visible, non-overlapping, and directly tappable; the keyboard is never dismissed as a layout workaround.

### 4.3 Header order

- **Current:** The dashboard title group contains Settings, followed by Add widget, then list and card mode buttons. `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:246-291`.
- **Future contract:** Preserve the dashboard title and existing actions, but the catalog action cluster's exact focus and visual order is **Settings, Add (`+`), Remove (`-`)**. Add and Remove are 48dp icon actions with localized content descriptions. The approved order and minimum target are fixed by `../.omo/plans/provider-card-catalog-ui.md:29-30` and `/Users/yeoreum/.omo/memory/agents/ai-quota-f8cc5df1/repo/reference/projects/ai-quota/multi-account-decisions.md:9`.
- **Future contract:** Existing Add widget and view-mode controls remain available; implementation may wrap or reflow secondary controls at constrained width, but must not reorder the Settings/Add/Remove sequence in focus or visual order.

### 4.4 List and grid geometry

- **Current default/list mode:** The fitting target is three visible cards in one phone column or four visible cards across two tablet columns. These counts feed the height calculation; they are not a guarantee that every target row fits a short viewport. `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:81-82,140-149`.
- **Current card mode:** The fitting target is six cards, arranged as two columns by three rows on phone and three columns by two rows on tablet. Phone card mode also replaces the list-card minimum with integer `listMinimum * 3 / 5`; tablet retains its list-card minimum. `android/app/src/main/java/com/aiquota/mobile/local/DashboardViewMode.kt:23-29`, `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:119-135`.
- **Current:** Fitted height is `ceil((viewportHeight - contentVerticalPadding - titleHeight - sectionSpacing * targetRowCount) / targetRowCount)`, then coerced upward to the active mode's card minimum. When a short viewport cannot contain that minimum-height result, the dashboard content becomes taller than its viewport and the outer `verticalScroll` exposes the remaining cards; the non-scrolling inner grid does not clip or take over scrolling. `android/app/src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt:140-156`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:235-244,338-348`.
- **Future contract:** Catalog size is unbounded. The dashboard preserves rank order and scrolls vertically. No primary content has horizontal overflow at 320dp/375dp, with long CJK labels, 40-code-point aliases, or 200% font.

### 4.5 Provider card geometry

| Element | Existing geometry |
| --- | --- |
| Card radius | macOS 12dp; Windows 2dp |
| Border | macOS 1dp; Windows 2dp |
| Title bar | macOS 26dp compact / 30dp regular; Windows 22dp |
| Path-row icon | 18dp container with per-provider optical scaling |
| Main provider icon | 38dp compact / 46dp regular container with per-provider optical scaling |
| Body inset | 4dp left/right/bottom shell, then metric card padding; compact subtracts 3dp with 6dp floor |
| Main content gap | 12dp icon-to-usage column |
| Usage preview | At most two lines; Antigravity prefers two named lines |
| Gauge | 4dp dense; list mode grows from 4dp toward 8dp over 80dp extra card height |
| Drag affordance | 32dp by 22dp visual handle; three 20dp by 2.5dp bars |
| Drop indicator | 5dp high, 10dp horizontal inset |

Sources: `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:592-615`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:749-752`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:763-874`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:975-985`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:994-1055`.

### 4.6 Provider icon optical scale

All provider artwork uses `ContentScale.Fit` inside its container. Preserve these exact factors for every current and future surface.

| Provider | Scale | Provider | Scale |
| --- | ---: | --- | ---: |
| Claude | 0.85 | Codex | 0.85 |
| GLM | 0.86 | OpenCode | 0.76 |
| Gemini | 0.92 | Copilot | 0.64 |
| Antigravity | 0.78 | Cursor | 0.73 |
| Grok | 0.80 | Kimi | 0.80 |
| Kiro | 0.78 |  |  |

Source: `android/app/src/main/java/com/aiquota/mobile/ui/provider/ProviderIcon.kt:52-83`.

`ProviderIconImage` is decorative by default (`contentDescription = null`). A caller opts into an accessible description when the icon conveys information not already exposed by surrounding semantics.

## 5. Components & State Contracts

### 5.1 Provider account identity

- **Current authority:** `ProviderAccountId` is exactly the pair `(ProviderId, AccountKey)`. An opaque generated key matches `acct_[0-9a-f]{32}`; the reserved single-account key is `default`. `android/app/src/main/java/com/aiquota/mobile/accounts/AccountIdentity.kt:7-36`.
- **Future contract:** Every card key, selection key, route, login/reauth request, refresh/busy state, reorder operation, widget, notification, preference, and deletion request uses the exact `ProviderAccountId`. Alias, provider display name, email, remote identity, path text, position, and rank are presentation metadata and never identity.
- **Future contract:** `AccountRecord.alias` is the editable visible card header. Changing it must not change `AccountRecord.id`. `android/app/src/main/java/com/aiquota/mobile/accounts/AccountAuthorityModels.kt:27-35`.
- **Future contract:** Claude and Codex permit unlimited active sibling cards. Every other released provider permits at most one active reserved-default card. The provider display names and released order originate in `android/app/src/main/java/com/aiquota/mobile/local/ProviderModels.kt:6-27`; the approved multiplicity is fixed by `../.omo/plans/provider-card-catalog-ui.md:31-32,44`.
- **Future contract:** Automatic headers are `Claude`, `Claude 2`, `Claude 3` and `Codex`, `Codex 2`, `Codex 3`, choosing the lowest available suffix. Every single-instance provider uses its exact unsuffixed `ProviderId.displayName`. Custom aliases are 1-40 Unicode code points after trim, contain no controls, and are globally unique after trim and case-insensitive normalization. `../.omo/plans/provider-card-catalog-ui.md:32,168-173`.

### 5.2 Provider window card

- **Structure:** Window chrome, title/alias, drag affordance and theme controls, path row with provider icon, bordered content, provider identity, status, up to two usage previews, and contextual action.
- **Variants:** Windows/macOS; list/card density; disconnected, authenticating, connected, collecting, reauthentication required, unavailable/error, deletion pending; drag placeholder/overlay.
- **Current interaction:** The whole non-placeholder card opens detail. Long-press drag reorders. Connect appears for disconnected/not-connected and for stale/auth/error/unavailable only when there are no usage lines. `android/app/src/main/java/com/aiquota/mobile/local/ProviderModels.kt:80-93`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:733-743`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:921-946`.
- **Future contract:** Card semantics announce full alias, provider, connection state, and available primary action. Connect targets only that card. `REAUTH_REQUIRED` exposes Reconnect only on the affected card. A deleting card is inactive and cannot connect, refresh, reorder, or open stale detail.
- **Accessibility:** Card activation and drag/reorder must be separate actions. TalkBack and D-pad users receive Move up/Move down semantics instead of depending on drag.

### 5.3 Provider picker row

- **Structure:** Existing provider icon optical scale, provider display name, supporting availability/multiplicity text when needed, and one trailing radio or disabled state.
- **Variants:** Onboarding and Add reuse the same row and source list.
- **States:** Available/unselected, selected, disabled because a single-instance card already exists, and error after a typed concurrent conflict.
- **Accessibility:** The whole row is one focus stop with `Role.RadioButton`, selected state, and a localized disabled reason. No separate focus stop is added to the icon or radio glyph.
- **Layout:** One vertical list. A modal sheet is the scroll owner only when the list does not fit.

### 5.4 Naming dialog

- **Structure:** Localized title, label above the text field, automatic suggestion, inline helper/error, Cancel, and Add/Save.
- **States:** Suggested default, valid custom value, blank/whitespace using suggestion, control-character error, over-40-code-point error, case-insensitive global collision, concurrent conflict, submitting, and success.
- **Accessibility:** Error text is associated with the field and announced as a live region. Focus moves to the field on entry, then returns to the invoking Add action on cancel or to the created card on success.
- **Behavior:** Add creates a `SIGNED_OUT` disconnected record only. It does not acquire a Profile, credential, session, WebView, or launch login. Login starts only from explicit Connect. `android/app/src/main/java/com/aiquota/mobile/accounts/AccountAuthorityModels.kt:12-18`, `../.omo/plans/provider-card-catalog-ui.md:31`, `/Users/yeoreum/.omo/memory/agents/ai-quota-f8cc5df1/repo/reference/projects/ai-quota/multi-account-decisions.md:16`.

### 5.5 Removal selection and confirmation

- **Structure:** Exact card rows with provider icon, full alias, provider name, checkbox, selected count, Cancel, and destructive Continue/Remove action. The confirmation names every selected alias and explains that account-scoped data is deleted.
- **States:** Zero selected with confirmation disabled, one selected, many selected, confirmation open, deleting, erased, erasure pending, and error.
- **Accessibility:** Each card row is one checkbox focus stop with selected state. Selected count is announced. Initial focus lands on the selection heading; confirmation focus lands on the warning heading; dismissal returns focus to Remove.
- **Behavior:** Confirmation is explicit and irreversible. There is no Undo snackbar. Remove deletes only exact selected account material and never chooses or mutates a sibling. Cancel, Back, and outside dismissal delete nothing. `../.omo/plans/provider-card-catalog-ui.md:34`, `../.omo/plans/provider-card-catalog-ui.md:275-276`, `/Users/yeoreum/.omo/memory/agents/ai-quota-f8cc5df1/repo/reference/projects/ai-quota/multi-account-decisions.md:11`.

### 5.6 Full flow and state matrix

Every row below is a **Future contract** unless it explicitly says Current.

| State / trigger | Visible surface and action | Semantic/focus result | Data and safety invariant |
| --- | --- | --- | --- |
| Fresh install, onboarding incomplete | Provider picker first; Next opens naming; `Later` remains available | Heading first, then one radio row per provider, then Later | No provider, Profile, credential, or login is created before Add confirmation |
| Later | Dashboard opens with `추적할 AI 제공자를 선택해주세요` in Korean, localized English equivalent, and Add | Focus enters dashboard heading then Add | Completion/skipped state persists; onboarding does not reopen on relaunch |
| Empty catalog after deletion | Same empty prompt and same Add action | Empty message and Add are reachable | No hidden default card is synthesized |
| Add invoked | Provider picker opens | Focus moves to picker heading; Back/cancel returns to Add | Existing single-instance providers are disabled; Claude/Codex remain available |
| Provider selected | Naming dialog shows deterministic suggestion | Focus moves to labeled field | Selection alone writes nothing |
| Name omitted or whitespace | Add resolves to current suggestion | Full resolved alias is announced | Allocation is atomic and globally unique |
| Invalid custom name | Inline localized error; Add disabled or rejected | Field is marked error and live error is announced | No partial record is written |
| Concurrent alias/single-instance conflict | Typed inline conflict; picker/dialog remains recoverable | Error is announced without losing entered text | No duplicate alias, rank, or card is committed |
| Add confirmed | Disconnected window card appears with Connect | Focus moves to created card | Account auth is `SIGNED_OUT`; no automatic login or real-provider request |
| Explicit Connect | Card shows authenticating/connecting progress | Busy state is announced on that exact card | Login/Profile/session binds exact `ProviderAccountId` only |
| Connected | Card shows Connected, usage or no-lines copy, Refresh/detail actions | Provider, alias, state, and action names are announced | Sibling state remains independent |
| Collecting/refreshing | Card shows collecting copy and progress/busy indication | Busy state is non-color-only | Only exact card demand/result may publish |
| Session/Profile loss | Only affected card shows connection-needs-attention/Reconnect | Reconnect is reachable on affected card; sibling remains Connected | Only affected account enters `REAUTH_REQUIRED`; no default or sibling fallback |
| Provider unavailable or collection error | Localized contextual message and explicit retry/connect when allowed | Error role/live message; action remains reachable | Existing usage may remain visible per current state rules; identity does not change |
| Remove invoked | Exact-card checkbox list opens | Focus to heading, then rows, count, actions | Merely selecting writes nothing |
| Zero removal selection | Continue/Remove disabled | Disabled state and zero count are announced | No delete call |
| One/many selected | Selected count and aliases update | Selected state is announced without relying on color | Exact immutable IDs, not alias strings, back the selection |
| Remove confirmation | Irreversible warning lists aliases/provider consequences | Warning heading receives focus; destructive action is clearly named | No default selection and no implicit sibling promotion |
| Deleting/tombstoned | Selected cards leave active interaction and show progress/pending state where retained | Progress and unavailable actions are announced | Tombstone precedes physical cleanup; stale jobs/actions are blocked |
| Erasure pending/failure | Card remains inactive with localized pending/error explanation | Error and recovery status are reachable | Physical cleanup failure never reactivates card or enables sibling fallback |
| Erased | Card disappears; focus returns to Remove or empty-state Add | Removal result is announced | Credentials, headers, Profile/session, usage, scheduler, widget, notification, and preference state for exact IDs are gone; no Undo |
| Cancel/Back/outside dismissal | Modal closes | Focus returns to invoking control | No add/remove/auth side effect |

State authority sources: current account/auth/deletion enums and transitions are `android/app/src/main/java/com/aiquota/mobile/accounts/AccountAuthorityModels.kt:5-24,166-190`; approved onboarding and empty behavior is `../.omo/plans/provider-card-catalog-ui.md:29,257-263`; approved Add is `../.omo/plans/provider-card-catalog-ui.md:266-270`; approved Remove is `../.omo/plans/provider-card-catalog-ui.md:275-279`; exact reauthentication is `../.omo/plans/provider-card-catalog-ui.md:35-36`.

## 6. Motion & Interaction

### 6.1 Current motion

- Dashboard reorder starts after long press. The dragged card scales to 1.035 and 0.94 opacity, receives 4dp tonal/6dp shadow elevation, follows pointer translation, previews rank, auto-scrolls near a 96dp viewport edge, and uses a 5dp insertion line. `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:214-233`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:638-743`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:1025-1039`.
- Grid items use Compose `animateItem` when they are not the dragged placeholder. `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:354-362`.
- Widget provider-row reorder uses 1.02 scale, 0.82 alpha, 8dp elevation, and a 120ms decelerating translation. `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:468-477`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:575-576`.

### 6.2 Future motion contract

- Motion communicates only reorder, modal entry/exit, focus transfer, busy progress, and state change. No decorative loop, shimmer, bounce, parallax, or unrelated redesign is permitted.
- New animated properties are limited to GPU-composited `transform`, `opacity`, and platform-managed surface elevation. Do not animate layout size, position constraints, padding, or color purely for decoration.
- Use existing platform/Material transition defaults. No new duration or easing token is approved. The existing 120ms widget reorder is not a general-purpose token.
- Reduced-motion behavior is mandatory: modal/state transitions become instant or use a non-moving fade, reorder remains operable through semantic Move up/Move down actions, and no information is lost. The current build has no documented reduced-motion branch, so this is implementation work for Tasks 19-23 rather than a current capability.
- Every touch action has an equivalent TalkBack/D-pad action. Pressed, focused, selected, disabled, loading, and error states must remain distinguishable with motion disabled.

## 7. Depth & Surface

### 7.1 Strategy

The current strategy is **mixed, theme-specific window chrome**. Borders define every provider window and inner content region; low rest elevation separates the card from the canvas; drag and dialogs use stronger elevation only while they are actively raised.

| Surface | macOS current | Windows current |
| --- | --- | --- |
| Provider card rest | 12dp radius, 1dp border, 1dp shadow | 2dp radius, 2dp border, 1dp shadow |
| Provider card drag | Same radius, primary border, 4dp tonal + 6dp shadow | Same radius, primary border, 4dp tonal + 6dp shadow |
| Inner path/body | Square, 1dp border | Square, 1dp border |
| General dialog | 16dp radius, 1dp border, 12dp shadow | 2dp radius, 2dp border, 2dp shadow |
| Bottom nav chip | 8dp radius, 1dp border | 8dp radius, 1dp border |
| View-mode button | 10dp radius, 1dp border | 10dp radius, 1dp border |

Sources: `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:446-459`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:749-755`, `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt:814-845`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:895-911`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:1250-1260`.

### 7.2 Surface rules

- Picker sheets and naming/removal dialogs must use the active theme's panel, border, text, primary, and existing dialog radius/elevation recipe.
- Preserve square inner window panes even when macOS outer cards are rounded.
- Traffic lights remain window-chrome decoration, never state indicators or actions.
- Do not add blur, glass, gradients, glow, noise, or new shadow layers.
- A deleting card may use existing muted text/border roles plus explicit copy and semantics; do not invent a new deletion color.

## 8. Accessibility Constraints, QA & Accepted Debt

### 8.1 Binding accessibility constraints

- Target WCAG 2.2 AA behavior for the Android surface: readable text contrast, 3:1 non-text contrast for meaningful boundaries/focus, and 4.5:1 normal-text contrast where applicable. `ProviderCatalogContrastTest` measures the Windows/macOS soft boundaries and the rendered white macOS selected-navigation text.
- Every new Settings, Add, Remove, Later, row, field, checkbox/radio, Cancel, Connect/Reconnect, destructive confirm, retry, and dialog action has at least a 48dp by 48dp semantic touch target. Visual glyphs may remain smaller inside that target. The plan explicitly requires 48dp header actions at `../.omo/plans/provider-card-catalog-ui.md:30,266-270`.
- Icon-only actions have localized content descriptions. Add and Remove descriptions include the action purpose, not only `+` or `-`.
- Roles are explicit and singular: action `Button`, provider picker row `RadioButton`, removal row `Checkbox`, and progress/busy semantics for long operations. A selectable row is one focus stop, not a row plus a duplicate child control.
- Focus order follows visual order: screen heading, Settings, Add, Remove, secondary dashboard actions, cards in rank order, bottom navigation. Modal focus is trapped within the active modal and returns to its invoker or the newly created card.
- TalkBack reads full alias, provider, state, selected/disabled/busy/error status, and action. D-pad can reach and activate every action, dismiss with Back, and reorder through explicit semantic actions.
- Selected, connected, disconnected, reauthentication, deleting, disabled, and error states include text/state semantics and shape/border/action changes where appropriate. Color and motion are never the sole signals.
- CJK and English are verified at normal and 200% font scale. Labels may wrap and rows/dialogs grow. Primary actions remain visible without horizontal scrolling or overlap. The exact Task 23 acceptance requirement is `../.omo/plans/provider-card-catalog-ui.md:303-308`.
- Error recovery minimizes memory demands: preserve selected provider and typed alias after validation/concurrent errors; explain the next action inline; never clear a user's selection because a process-safe typed conflict occurred.

### 8.2 Visual and interaction QA scenarios

Task 6 verification is QA-by-read only because this change creates no rendered behavior. Tasks 18-23 must exercise the actual Compose surface and collect fresh screenshots/semantics evidence.

| Scenario | Width/theme/locale | Required binary proof |
| --- | --- | --- |
| Current dashboard baseline | Phone 375dp and smallest supported 320dp; Windows and macOS; EN/KO | Header, title, cards, gauges, paths, icons, and bottom navigation preserve current geometry; no new clipping beyond the documented Kiro status debt below |
| Tablet baseline | 768dp+; both themes/locales | Default 2-column/4-visible and card-mode 3-column/6-visible geometry remains intact |
| Fresh onboarding | 375dp and tablet; EN/KO | First launch opens picker, rows are single radio focus stops, Later works, no login launches |
| Later and empty | 320dp/375dp; EN/KO; 100%/200% font | Korean exact copy `추적할 AI 제공자를 선택해주세요`, localized English equivalent, same Add action, no horizontal overflow |
| Add single instance | Both themes | Existing Cursor row disabled with semantic reason; no duplicate card |
| Add siblings | Both themes; EN/KO | Defaults render `Codex`, `Codex 2`, `Claude`, `Claude 2`; provider icons retain optical scale; no automatic login |
| Naming stress | 320dp; KO; 200% font | 40-code-point CJK alias, whitespace default, controls, 41-code-point error, and `Work`/`work` collision remain readable and announced |
| Connected/disconnected/reauth | Both themes | Text and semantics distinguish all states; only affected sibling shows Reconnect; no sibling/default request |
| Removal selection | 320dp/375dp and tablet; EN/KO; TalkBack/D-pad | One focus stop per checkbox row, selected count announced, zero selection disabled, cancel/back/outside deletes nothing |
| Destructive confirmation | Both themes; 200% font | Every selected alias/consequence visible or scrollable, destructive action reachable, no Undo |
| Erasure pending/error | Both themes; reduced motion | Selected card remains inactive with non-color-only pending/error text; sibling remains byte-stable and operable |
| Long catalog and reorder | 320dp, 375dp, tablet; list/grid | Dashboard is sole vertical scroll owner, rank stable, semantic reorder works, no horizontal overflow |
| Provider icons | Every released provider, both card densities and picker/nav rows | Artwork uses exact scale table; no clipping or mixed icon family |

Reference review record: image metadata reports `English_Screenshot.png` at 1403x1121 pixels and `Korean_Screenshot.png` at 1402x1122 pixels. Both show the same Windows 11 promotional composition and a dark phone-home widget with localized surrounding copy; CJK line wrapping remains materially taller in Korean. Because neither image shows the Compose dashboard, fidelity means preserving the app's source-defined dashboard and using the screenshots only to validate bilingual product context, icon/gauge recognizability, and CJK stress.

### 8.3 Accepted debt at Task 6 boundary

| Debt | Current location/evidence | Why accepted now | Owner / exit |
| --- | --- | --- | --- |
| Current header Settings and view-mode controls are 40dp, below the 48dp future contract | `UnifiedDashboardScreen.kt:101,271-272,446-448` | Task 6 is contract/RED surface only and may not change production UI | Tasks 19 and 23 make affected actions at least 48dp and verify semantics bounds |
| Current drag handle visual/semantic bounds are 32dp by 22dp | `UnifiedDashboardScreen.kt:994-1006` | Existing visual characterization must remain unchanged in Task 6 | Tasks 21 and 23 add 48dp target and semantic reorder actions without enlarging the glyph |
| Dense Connect explicitly permits 64dp by 28dp minimum | `UnifiedDashboardScreen.kt:921-934` | Existing compact-card behavior is pinned before catalog UI changes | Tasks 21 and 23 provide a 48dp semantic target and verify 200% font |
| Widget visibility `+`/`-` controls are 28dp and use symbol text | `DashboardWidgetConfigureActivity.kt:34-35,295-304,352-361` | Adjacent legacy surface is out of Task 6's only-file scope | Tasks 16, 22, and 23 replace exact-card management affordances with localized 48dp semantics |
| Reduced-motion alternatives are not explicit for dashboard/widget reorder | Current motion citations in Section 6 | Production behavior cannot change in Task 6 | Tasks 19-23 add reduced-motion paths and semantic reorder |
| Windows/macOS soft-boundary and selected macOS navigation contrast | `AIQuotaDesignTokens.kt:66-115`; `ProviderCatalogContrastTest.kt` | Resolved in Task 23 Lane A by remapping existing darker semantic roles; focused checks enforce 3:1 boundaries and 4.5:1 selected-navigation text | Re-run the focused checks when the palette changes |
| The app exposes two light visual themes; declared macOS dark constants are not wired as a dark theme | `AIQuotaDesignTokens.kt:27-36,92-125`; `AIQuotaAppShell.kt:863-876` | Task 6 cannot invent a dark palette or alter theme behavior | Task 23 validates the actual Windows/macOS themes; a true dark-theme owner decision remains outside Tasks 6-23 unless separately approved |
| Populated grid clips Kiro's one-line primary `Connection needs attention` status to `Connection needs` without an ellipsis; the full explanation remains visible in the secondary message and accessibility XML retains the complete source value | `UnifiedDashboardScreen.kt:889-894`; Task 6 real-surface evidence `task-6-real-surface-qa/populated-grid.png` and `populated-grid.xml` | The production renderer predates Task 6, and Task 6 must pin the faithful current surface without changing behavior | Task 23 adds an explicit overflow treatment or responsive status layout and verifies the complete state visually and semantically at narrow widths and 200% font |
| Current UI is provider-keyed and collapses snapshots with `associateBy(providerId)` | `UnifiedDashboardScreen.kt:190-197`; shell routes at `AIQuotaAppShell.kt:757-805` | This is the explicit pre-catalog baseline | Tasks 7-17 establish exact-card authority/wiring; Tasks 18-23 consume it |
| Required catalog/settings localization and Korean provider terminology | `values/strings.xml`; `values-ko/strings.xml`; `ProviderCatalogResourceContractTest.kt` | Resolved in Task 23 Lane A: EN/KO keys stay in parity, catalog/removal/auth/version resources are present, and Korean visible values do not leak the English provider term | UI lanes still wire the version resource and complete live-surface localization verification |

No other accessibility or visual debt is accepted by this contract. New debt requires an explicit entry with affected users, location, reason, owner, and exit condition.

### 8.4 Task boundary and implementation handoff

- **Task 6 DESIGN-only sub-artifact:** This document completes only the `DESIGN.md` portion of Task 6 and does not alter UI behavior. Top-level Task 6 remains incomplete until the Compose UI-test dependencies, debug real-surface driver seam, current dashboard/header/list/grid characterization PIN, onboarding/Add/Remove/naming/empty-state RED semantics tests, and compiling instrumentation runner have landed. `../.omo/plans/provider-card-catalog-ui.md:149-154`.
- **Tasks 7-11:** Persist catalog identity/rank/alias metadata, enforce provider multiplicity and naming, migrate connected/usage providers, coordinate exact deletion, and key preferences by `ProviderAccountId`.
- **Tasks 12-17:** Replace provider-only shell projection and carry exact identity through routes, login/reauth, collectors, widgets, and notifications. No alias/rank identity and no default/sibling fallback.
- **Tasks 18-20:** Implement onboarding/Later/empty, Settings/Add/Remove/naming, and irreversible exact-card removal against Sections 2-7.
- **Tasks 21-22:** Render/reorder/connect/refresh/reauth exact cards and update detail/settings/widget/notification management without exposing opaque IDs.
- **Task 23:** Complete English/Korean resources, 48dp semantics, focus/Back/live-region behavior, reduced motion, narrow/wide/list/grid, both current themes, CJK, 200% font, TalkBack, and D-pad verification. `../.omo/plans/provider-card-catalog-ui.md:303-308`.
- **Non-negotiable behavior across Tasks 7-23:** No automatic login from onboarding/Add, no automatic real-provider request, no sibling/default fallback, no identity derived from alias/provider/email/rank, no multi-instance provider other than Claude/Codex, no destructive Undo, and no release-flag enablement. `../.omo/plans/provider-card-catalog-ui.md:41-49`.
- **Task 23 visual scope:** No decorative motion or unrelated redesign. `../.omo/plans/provider-card-catalog-ui.md:303-308`.

This contract is complete only when future implementation evidence traces each visible value to Sections 2-7, every state in Section 5.6 is exercised through the real Android surface, and any deviation is first recorded here as an approved contract update or accepted debt.
