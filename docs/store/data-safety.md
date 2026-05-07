# Google Play Data Safety Draft

This draft is based on the current Android MVP implementation. Review it before submission.

## Data Collection

### Personal Info
- Email address: collected.
- Purpose: account management, app functionality.
- Source: Firebase Authentication after Google sign-in.
- Shared: not sold. Processed by Firebase/Google as the backend service provider.

### App Activity / App Info and Performance
- AI provider usage snapshot: collected.
- Purpose: app functionality.
- Contents: provider IDs, display names, plan labels, remaining/used/limit values, reset times, provider status, device name, snapshot timestamps.
- Shared: not sold. Stored in Firebase Firestore for the signed-in user.

### Device or Other IDs
- Firebase Auth user ID and Windows device IDs: collected.
- Purpose: account management, app functionality, sync routing.
- Shared: not sold. Stored in Firebase Firestore for the signed-in user.

## Data Not Collected
The product must not upload or store:
- Provider access tokens.
- Refresh tokens.
- API keys.
- Local file paths.
- Raw logs.
- Authentication file contents.
- Provider credential files.

## Security Practices
- Data is encrypted in transit via HTTPS/Firebase SDK connections.
- Firestore security rules restrict user data reads to the signed-in owner.
- Mobile clients do not write snapshots directly; provider snapshot writes are controlled by the sync path.
- User can sign out from the app.

## Account Deletion / Data Deletion
Before public release, provide a user-accessible deletion request path. Recommended options:
- Add an in-app "Delete account and synced data" flow, or
- Publish a support email and web page explaining deletion requests.

## Play Console Answers To Review
- Does your app collect or share user data? Yes.
- Is all user data encrypted in transit? Yes.
- Can users request data deletion? Must be Yes only after a deletion request path is available.
- Data types: Email address, user IDs, app activity / app interactions or app-generated usage data.
