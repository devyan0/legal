# Callove Crashlytics disclosure — 2026-11-07

## Initial publication (historical; superseded below)

Policy commit: `daecc99a11c3a2ef9eec788d1c79273225c0c118`.
GitHub Pages existing `main`/root deployment: `built`, no build error.
All three exact public URLs returned HTTP 200 and bytes identical to the committed HTML:

| URL | SHA-256 |
| --- | --- |
| https://devyan0.github.io/legal/callove/privacy.html | 69facf3663828f73a740434c4ac76854cd967c6d4bf2570eb8fe752fb2faaf39 |
| https://devyan0.github.io/legal/callove/privacy-en.html | a27fde594124d39dc835b77430d4f98a3de5e3cc7e140320ad791f8aa874c21b |
| https://devyan0.github.io/legal/callove/privacy-ja.html | dfaa81f91c4321724c7e31a93f7f85366448d6d4272211f73d26d887e90d7b30 |

Validation: HTMLParser parsed all three pages; local links and the unique `#crashlytics` anchors resolved; required SDK/retention terms checked; `git diff --check` passed. KO/EN/JA new text was reviewed for matching scope and caveats. No device/UI rendering claim is made. The initial Python HTTPS check failed because its local CA bundle was unavailable; curl with normal certificate validation successfully performed the byte readback. No TLS verification bypass was used.

Only Callove pages changed. No paid service, infrastructure, store submission, app release, build settings or SDK enable flag changed. Publishing these policies does not enable collection.

## Owner correction — effective November 7, 2026

The owner explicitly authorized removal of the self-imposed seven-/30-day notice promise, December 7 deferral and separate tester-consent requirement. The initial deferral was an agent's conservative interpretation of existing policy text, not a finding of a statutory waiting period. This correction replaces that operational gate; it is not a hidden exception to unchanged policy text.

KO/JA §13 and the corresponding new English §13 now announce changes and their effective date in the app or on the policy page, with procedures required by applicable law preserved. The public notice explicitly identifies the revised notice procedure and Crashlytics disclosure, effective November 7, 2026 for Crashlytics-enabled app versions. No additional consent UI or tester-consent flow is introduced. This owner-authorized policy decision is **not a universal legal assurance that consent or advance notice can never be required**, and does not waive applicable law.

Actual SDK collection, automatic native exception limitations, identifiers, international processing, retention and rights/deletion limitations remain disclosed. Publication does not itself enable an SDK. The parent owns TestFlight 1.0.4 (99) implementation/delivery and runtime verification; this policy task does not submit an App Store release or change other products.

## Official evidence checked

- https://firebase.google.com/support/privacy — inspected November 7, page updated November 5, 2026. Crashlytics installation UUID/FID/session UUID, plain-text exception class/message and native stacks are explicitly described. Crash stacks, extracted minidump data and associated identifiers: retained 90 days **before starting removal** from live and backup systems. Raw NDK minidumps are temporary during crash-session processing. Crashlytics is a global service, not US-only.
- https://firebase.google.com/docs/ios/app-store-data-collection — native stacks/app state, device/OS, custom fields and FirebaseSessions foreground/background/session metadata; SDK privacy manifests do not replace the developer's app labels.
- https://firebase.google.com/docs/android/play-data-disclosure — Crashlytics installation UUID, Installations and Sessions dependencies; distinguish automatic and developer-defined fields. Google Analytics breadcrumbs depend on Analytics integration, which is not enabled in this integration.
- https://firebase.google.com/docs/projects/manage-installations#delete_a_firebase_installation — FID deletion has a separate up-to-180-day process for tied data and services may generate a new FID if not disabled. This is not evidence that Callove already implements deletion or that FID rotation immediately erases every Crashlytics event. The public policy does not promise either.

Implementation evidence was read from Callove's `docs/work/rn-migration/crashlytics.md`: no account/user-ID or customer-body custom transmission; numeric-only direct JS frames; code-release attribution; native synthetic receipt included an installation UUID and native fatal diagnostic string. This documentation review is not a full native data-flow audit.

## Current store disclosures: read-only findings

### Apple

Public page read: https://apps.apple.com/kr/app/id6818794206

Current public listing returned version 1.0.3. Privacy summary shows diagnostics and identifiers among both linked and unlinked categories, and existing tracking categories for purchases, identifiers and usage data. The extraction did not establish the exact current Crash Data subcategory/purpose answers. Do not treat historical declarations as current verification or downgrade other SDKs' labels.

Exact management entry: https://appstoreconnect.apple.com/apps/6818794206/distribution/privacy

Browser redirected to App Store Connect login (`authResult=FAILED`). No saved vault login was available. Management answers and pending changes therefore remain unverified. Before activation, compare the actual archive's SDK privacy report to Crash Data, Other Diagnostic/Performance Data, installation identifiers and Sessions purposes/linkage. No account ID in Crashlytics alone does not determine Apple's overall linkage answers.

### Google Play

Current public declaration read: https://play.google.com/store/apps/datasafety?id=com.devyan.callove

Observed: `App info and performance → Diagnostics` for App functionality/Analytics; `Device or other IDs` for App functionality/Analytics. **Crash logs was not listed** in the fetched public declaration. It also says no data shared with third parties, encrypted in transit, and deletion can be requested. Processor treatment must be evaluated under Play's sharing definition rather than changing that answer solely because Google processes diagnostics. Deletion request availability is not immediate provider deletion.

Management entry: https://play.google.com/console/u/2/developers/6527511089952747302/app/4973477159715468723/app-content

Browser redirected to Google account login. Current draft/submitted console answers remain unverified. Before Android activation, review/add Crash logs and reconcile Diagnostics, Device or other IDs, session metrics, purposes, required/optional status, sharing and deletion. No store metadata was changed; no review or release was submitted.

## Separate follow-up checks (not a December 7 or extra-consent gate)

1. The owner-resolved notice timing and extra tester-consent gate above is removed. No waiting period or additional consent UI should be inferred from this record; any specific statutory requirement needs its own grounded assessment.
2. Read actual ASC/Play answers through an authenticated session and reconcile actual binary SDK manifests/payloads, including the missing public Play Crash logs category.
3. Complete native exception/customer-content audit and practical installation-scoped rights/deletion handling; no universal raw-text scrubber or account-ID deletion integration exists.
4. The parent owns the authorized new TestFlight build and runtime verification. App Store public release remains prohibited for this task.
