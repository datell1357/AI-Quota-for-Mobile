import admin from "firebase-admin";
import { defineSecret } from "firebase-functions/params";
import { HttpsError, onCall, onRequest } from "firebase-functions/v2/https";
import { createAntigravityGatewayHandlers } from "./antigravityGateway.js";

admin.initializeApp();

const db = admin.firestore();
const antigravityOAuthClientId = defineSecret("ANTIGRAVITY_GOOGLE_OAUTH_CLIENT_ID");
const antigravityOAuthClientSecret = defineSecret("ANTIGRAVITY_GOOGLE_OAUTH_CLIENT_SECRET");
const antigravityOAuthRedirectUri = defineSecret("ANTIGRAVITY_GOOGLE_OAUTH_REDIRECT_URI");
const antigravityTokenMasterKey = defineSecret("ANTIGRAVITY_TOKEN_MASTER_KEY");
const antigravityGateway = createAntigravityGatewayHandlers({
  onCall,
  onRequest,
  HttpsError,
  db,
  enforceAppCheck: true,
  secrets: {
    startAntigravityOAuth: [
      antigravityOAuthClientId,
      antigravityOAuthRedirectUri
    ],
    antigravityOAuthCallback: [
      antigravityOAuthClientId,
      antigravityOAuthClientSecret,
      antigravityOAuthRedirectUri,
      antigravityTokenMasterKey
    ],
    completeAntigravityOAuth: [
      antigravityOAuthClientId,
      antigravityOAuthClientSecret,
      antigravityOAuthRedirectUri
    ],
    refreshAntigravityAccessToken: [
      antigravityOAuthClientId,
      antigravityOAuthClientSecret
    ],
    collectAntigravityUsage: [
      antigravityOAuthClientSecret,
      antigravityTokenMasterKey
    ],
    disconnectAntigravity: [
      antigravityTokenMasterKey
    ]
  },
  config: {
    oauthClientId: () => antigravityOAuthClientId.value(),
    oauthClientSecret: () => antigravityOAuthClientSecret.value(),
    redirectUri: () => antigravityOAuthRedirectUri.value(),
    tokenMasterKey: () => antigravityTokenMasterKey.value()
  }
});

export const startAntigravityOAuth = antigravityGateway.startAntigravityOAuth;
export const antigravityOAuthCallback = antigravityGateway.antigravityOAuthCallback;
export const completeAntigravityOAuth = antigravityGateway.completeAntigravityOAuth;
export const refreshAntigravityAccessToken = antigravityGateway.refreshAntigravityAccessToken;
export const collectAntigravityUsage = antigravityGateway.collectAntigravityUsage;
export const disconnectAntigravity = antigravityGateway.disconnectAntigravity;
