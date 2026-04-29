# Windows Sync API Contract

This document is the contract between AI Usage for Windows and the Firebase backend in this repository.

## Authentication Model

- Mobile users sign in with Firebase Auth.
- Windows does not sign in to AI providers through mobile.
- Windows consumes a 6 digit pairing code and receives a signed upload token.
- Windows stores the upload token in Windows Credential Manager.
- Every snapshot upload uses:
  - `Authorization: Bearer <uploadToken>`
  - `x-ai-usage-uid: <firebaseUid>`

## Create Pairing Code

Called by the mobile app after Firebase sign-in.

```http
POST /createPairingCode
Authorization: Bearer <firebaseIdToken>
Content-Type: application/json
```

Response:

```json
{
  "code": "482193",
  "expiresAt": "2026-04-29T01:10:00.000Z"
}
```

Rules:

- Code is 6 numeric digits.
- Code expires after 10 minutes.
- Code can be consumed once.

## Consume Pairing Code

Called by AI Usage for Windows.

```http
POST /consumePairingCode
Content-Type: application/json
```

Request:

```json
{
  "code": "482193",
  "deviceName": "Home PC",
  "appVersion": "1.4.0"
}
```

Response:

```json
{
  "uid": "firebase_uid_123",
  "deviceId": "dev_home_pc_abc123",
  "uploadToken": "v1:firebase_uid_123:dev_home_pc_abc123:signature"
}
```

## Upload Latest Snapshot

Called by AI Usage for Windows after provider usage refresh.

```http
POST /uploadLatestSnapshot
Authorization: Bearer <uploadToken>
x-ai-usage-uid: <firebaseUid>
Content-Type: application/json
```

Request:

```json
{
  "deviceId": "dev_home_pc_abc123",
  "snapshot": {
    "schemaVersion": 1,
    "fetchedAt": "2026-04-29T01:00:00.000Z",
    "source": "ai-usage-windows",
    "providers": [
      {
        "providerId": "codex",
        "displayName": "Codex",
        "plan": "Pro 10x",
        "status": "ok",
        "fetchedAt": "2026-04-29T01:00:00.000Z",
        "lines": [
          {
            "type": "progress",
            "label": "Session",
            "used": 42,
            "limit": 100,
            "format": { "kind": "percent" },
            "resetsAt": "2026-04-29T15:00:00.000Z"
          }
        ]
      }
    ]
  }
}
```

Response:

```json
{
  "ok": true,
  "uploadedAt": "2026-04-29T01:00:05.000Z"
}
```

## Forbidden Snapshot Data

Windows must never send:

- Provider access tokens or refresh tokens
- API keys
- Cookies or sessions
- Local file paths
- Raw logs
- Provider credential files

