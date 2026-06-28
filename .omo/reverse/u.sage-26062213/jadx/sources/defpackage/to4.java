package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class to4 {
    public static final int a(String str) {
        String str2;
        for (int i : di0.J(61)) {
            switch (i) {
                case 1:
                    str2 = "ClientLoginDisabled";
                    break;
                case 2:
                    str2 = "SocketTimeout";
                    break;
                case 3:
                    str2 = "Ok";
                    break;
                case 4:
                    str2 = "UNKNOWN_ERR";
                    break;
                case 5:
                    str2 = "NetworkError";
                    break;
                case 6:
                    str2 = "ServiceUnavailable";
                    break;
                case 7:
                    str2 = "InternalError";
                    break;
                case 8:
                    str2 = "IllegalArgument";
                    break;
                case ConnectionResult.SERVICE_INVALID /* 9 */:
                    str2 = "BadAuthentication";
                    break;
                case 10:
                    str2 = "BAD_REQUEST";
                    break;
                case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                    str2 = "EmptyConsumerPackageOrSig";
                    break;
                case 12:
                    str2 = "InvalidSecondFactor";
                    break;
                case 13:
                    str2 = "PostSignInFlowRequired";
                    break;
                case 14:
                    str2 = "NeedsBrowser";
                    break;
                case 15:
                    str2 = "Unknown";
                    break;
                case 16:
                    str2 = "NotVerified";
                    break;
                case 17:
                    str2 = "TermsNotAgreed";
                    break;
                case ConnectionResult.SERVICE_UPDATING /* 18 */:
                    str2 = "AccountDisabled";
                    break;
                case 19:
                    str2 = "CaptchaRequired";
                    break;
                case 20:
                    str2 = "AccountDeleted";
                    break;
                case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                    str2 = "ServiceDisabled";
                    break;
                case 22:
                    str2 = "ChallengeRequired";
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    str2 = "NeedPermission";
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    str2 = "NeedRemoteConsent";
                    break;
                case 25:
                    str2 = "INVALID_SCOPE";
                    break;
                case 26:
                    str2 = "UserCancel";
                    break;
                case 27:
                    str2 = "PermissionDenied";
                    break;
                case 28:
                    str2 = "RESTRICTED_CLIENT";
                    break;
                case 29:
                    str2 = "INVALID_AUDIENCE";
                    break;
                case 30:
                    str2 = "UNREGISTERED_ON_API_CONSOLE";
                    break;
                case 31:
                    str2 = "ThirdPartyDeviceManagementRequired";
                    break;
                case 32:
                    str2 = "DeviceManagementInternalError";
                    break;
                case 33:
                    str2 = "DeviceManagementSyncDisabled";
                    break;
                case 34:
                    str2 = "DeviceManagementAdminBlocked";
                    break;
                case 35:
                    str2 = "DeviceManagementAdminPendingApproval";
                    break;
                case 36:
                    str2 = "DeviceManagementStaleSyncRequired";
                    break;
                case 37:
                    str2 = "DeviceManagementDeactivated";
                    break;
                case 38:
                    str2 = "DeviceManagementScreenlockRequired";
                    break;
                case 39:
                    str2 = "DeviceManagementRequired";
                    break;
                case 40:
                    str2 = "DeviceManagementRequiredOrSyncDisabled";
                    break;
                case 41:
                    str2 = "ALREADY_HAS_GMAIL";
                    break;
                case 42:
                    str2 = "WeakPassword";
                    break;
                case 43:
                    str2 = "BadRequest";
                    break;
                case 44:
                    str2 = "BadUsername";
                    break;
                case 45:
                    str2 = "DeletedGmail";
                    break;
                case 46:
                    str2 = "ExistingUsername";
                    break;
                case 47:
                    str2 = "LoginFail";
                    break;
                case 48:
                    str2 = "NotLoggedIn";
                    break;
                case 49:
                    str2 = "NoGmail";
                    break;
                case 50:
                    str2 = "RequestDenied";
                    break;
                case 51:
                    str2 = "ServerError";
                    break;
                case 52:
                    str2 = "UsernameUnavailable";
                    break;
                case 53:
                    str2 = "GPlusOther";
                    break;
                case 54:
                    str2 = "GPlusNickname";
                    break;
                case 55:
                    str2 = "GPlusInvalidChar";
                    break;
                case 56:
                    str2 = "GPlusInterstitial";
                    break;
                case 57:
                    str2 = "ProfileUpgradeError";
                    break;
                case 58:
                    str2 = "AuthSecurityError";
                    break;
                case 59:
                    str2 = "AuthBindingError";
                    break;
                case 60:
                    str2 = "AccountNotPresent";
                    break;
                case 61:
                    str2 = "AppSuspended";
                    break;
                default:
                    throw null;
            }
            if (str2.equals(str)) {
                return i;
            }
        }
        return 15;
    }

    public static int b(int i, int i2, int i3) {
        return jn4.a(i) + i2 + i3;
    }

    public static int c(int i, int i2, int i3, int i4) {
        return jn4.a(i) + i2 + i3 + i4;
    }

    public static do4 d(do4 do4Var) {
        int size = do4Var.size();
        return do4Var.F(size + size);
    }
}
