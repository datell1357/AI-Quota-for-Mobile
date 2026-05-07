# Privacy Policy

Last updated: May 7, 2026

AI Usage is an Android app that displays sanitized AI usage limit snapshots synced from AI Usage for Windows.

## Information We Collect

AI Usage uses Google sign-in through Firebase Authentication. This may collect your email address and Firebase user ID so the app can identify your account and show your synced data.

The app stores display-only usage snapshots in Firebase Firestore. These snapshots can include:

- Connected Windows device name and device ID.
- Snapshot upload and fetch timestamps.
- AI provider names and IDs.
- Provider plan labels.
- Remaining usage, used usage, limit values, reset times, and provider status.

## Information We Do Not Collect

AI Usage is designed not to collect or store:

- Provider access tokens.
- Refresh tokens.
- API keys.
- Local file paths.
- Raw logs.
- Authentication file contents.
- Provider credential files.

## How We Use Information

We use the collected information to:

- Sign you in.
- Link your Android app to your synced Windows devices.
- Display current AI usage limits in the app, widgets, and pinned notification.
- Refresh cached display data.

## Third-Party Services

AI Usage uses Firebase services provided by Google, including Firebase Authentication and Cloud Firestore. These services process data needed for authentication and sync.

## Data Sharing

We do not sell your personal data. Data is processed by Firebase/Google as the infrastructure provider for authentication and sync.

## Data Security

Data is transmitted over encrypted connections. Firestore security rules restrict user data access to the signed-in account owner.

## Data Retention and Deletion

Synced snapshots and device records remain stored until they are deleted from the backend or you request deletion. Before public production release, AI Usage should provide either an in-app deletion flow or a public support contact for account and data deletion requests.

## Children

AI Usage is not intended for children.

## Contact

For privacy questions or deletion requests, use the developer contact listed on the Google Play Store listing.
