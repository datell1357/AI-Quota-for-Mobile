import admin from "firebase-admin";
import { onRequest } from "firebase-functions/v2/https";
import {
  buildDeviceRecord,
  consumePairingCodeRecord,
  createPairingCodeRecord,
  createUploadToken,
  verifyUploadToken,
  withUploadedAt
} from "./core.js";

admin.initializeApp();

const db = admin.firestore();
const tokenSecret = process.env.DEVICE_TOKEN_SECRET;

export const createPairingCode = onRequest(async (request, response) => {
  if (request.method !== "POST") {
    sendError(response, 405, "METHOD_NOT_ALLOWED");
    return;
  }

  try {
    const user = await requireFirebaseUser(request);
    const record = await createUniquePairingCode(user.uid);

    await db.collection("pairingCodes").doc(record.code).set(record);
    await db.collection("users").doc(user.uid).set(
      {
        uid: user.uid,
        email: user.email ?? null,
        displayName: user.name ?? null,
        authProviders: user.firebase?.sign_in_provider ? [user.firebase.sign_in_provider] : [],
        createdAt: admin.firestore.FieldValue.serverTimestamp()
      },
      { merge: true }
    );

    response.status(201).json({ code: record.code, expiresAt: record.expiresAt });
  } catch (error) {
    sendCaughtError(response, error);
  }
});

export const consumePairingCode = onRequest(async (request, response) => {
  if (request.method !== "POST") {
    sendError(response, 405, "METHOD_NOT_ALLOWED");
    return;
  }

  try {
    assertDeviceTokenSecretConfigured();

    const body = request.body ?? {};
    const code = String(body.code ?? "").replace(/\D/g, "");
    const deviceName = String(body.deviceName ?? "").trim();
    const appVersion = String(body.appVersion ?? "").trim();

    if (!/^\d{6}$/.test(code)) {
      throw new Error("PAIRING_CODE_INVALID");
    }

    const codeRef = db.collection("pairingCodes").doc(code);
    const result = await db.runTransaction(async (transaction) => {
      const codeSnap = await transaction.get(codeRef);
      const codeRecord = codeSnap.exists ? codeSnap.data() : null;
      const deviceId = db.collection("_ids").doc().id;
      const consumed = consumePairingCodeRecord({
        codeRecord,
        now: new Date(),
        deviceId
      });
      const device = buildDeviceRecord({
        deviceId,
        deviceName,
        appVersion,
        now: new Date()
      });
      const deviceRef = db.doc(`users/${consumed.uid}/devices/${deviceId}`);

      transaction.set(codeRef, consumed);
      transaction.set(deviceRef, device);

      return { uid: consumed.uid, deviceId, device };
    });

    const uploadToken = createUploadToken({
      uid: result.uid,
      deviceId: result.deviceId,
      secret: tokenSecret
    });

    response.status(201).json({
      uid: result.uid,
      deviceId: result.deviceId,
      uploadToken
    });
  } catch (error) {
    sendCaughtError(response, error);
  }
});

export const uploadLatestSnapshot = onRequest(async (request, response) => {
  if (request.method !== "POST") {
    sendError(response, 405, "METHOD_NOT_ALLOWED");
    return;
  }

  try {
    assertDeviceTokenSecretConfigured();

    const uid = String(request.header("x-ai-usage-uid") ?? "").trim();
    const uploadToken = String(request.header("authorization") ?? "").replace(/^Bearer\s+/i, "");
    const { deviceId, snapshot } = request.body ?? {};

    if (!uid || !deviceId || !uploadToken) {
      throw new Error("UPLOAD_AUTH_REQUIRED");
    }

    const deviceRef = db.doc(`users/${uid}/devices/${deviceId}`);
    const deviceSnap = await deviceRef.get();
    const device = deviceSnap.exists ? deviceSnap.data() : null;

    verifyUploadToken({
      token: uploadToken,
      uid,
      deviceId,
      secret: tokenSecret,
      device
    });

    const storedSnapshot = withUploadedAt(snapshot, new Date());
    await db.runTransaction(async (transaction) => {
      transaction.set(deviceRef.collection("snapshots").doc("latest"), storedSnapshot);
      transaction.update(deviceRef, {
        lastSeenAt: storedSnapshot.uploadedAt
      });
    });

    response.status(200).json({ ok: true, uploadedAt: storedSnapshot.uploadedAt });
  } catch (error) {
    sendCaughtError(response, error);
  }
});

async function createUniquePairingCode(uid) {
  for (let attempt = 0; attempt < 5; attempt += 1) {
    const record = createPairingCodeRecord({ uid });
    const existing = await db.collection("pairingCodes").doc(record.code).get();
    if (!existing.exists) {
      return record;
    }
  }
  throw new Error("PAIRING_CODE_COLLISION");
}

async function requireFirebaseUser(request) {
  const token = String(request.header("authorization") ?? "").replace(/^Bearer\s+/i, "");
  if (!token) {
    throw new Error("AUTH_REQUIRED");
  }
  return admin.auth().verifyIdToken(token);
}

function assertDeviceTokenSecretConfigured() {
  if (!tokenSecret) {
    throw new Error("DEVICE_TOKEN_SECRET_NOT_CONFIGURED");
  }
}

function sendCaughtError(response, error) {
  const code = error instanceof Error ? error.message : "INTERNAL";
  const status = statusForError(code);
  sendError(response, status, code);
}

function sendError(response, status, code) {
  response.status(status).json({ error: code });
}

function statusForError(code) {
  if (code === "AUTH_REQUIRED" || code === "UPLOAD_AUTH_REQUIRED" || code === "UPLOAD_TOKEN_INVALID") {
    return 401;
  }
  if (code === "DEVICE_REVOKED") {
    return 403;
  }
  if (
    code.startsWith("PAIRING_CODE") ||
    code.startsWith("SNAPSHOT") ||
    code.startsWith("PROVIDER") ||
    code.startsWith("USAGE_LINE") ||
    code.endsWith("_REQUIRED") ||
    code.endsWith("_INVALID")
  ) {
    return 400;
  }
  return 500;
}

