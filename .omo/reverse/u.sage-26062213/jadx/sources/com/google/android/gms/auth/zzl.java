package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import defpackage.b45;
import defpackage.di0;
import defpackage.e45;
import defpackage.fy4;
import defpackage.gt4;
import defpackage.iv4;
import defpackage.k21;
import defpackage.k45;
import defpackage.mt1;
import defpackage.ow3;
import defpackage.p61;
import defpackage.ra3;
import defpackage.rw4;
import defpackage.sg0;
import defpackage.sh4;
import defpackage.to4;
import defpackage.ui3;
import defpackage.v35;
import defpackage.vl4;
import defpackage.vy4;
import defpackage.x35;
import defpackage.xw1;
import defpackage.yw4;
import defpackage.zu4;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class zzl {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";
    public static final String[] zza = {"com.google", "com.google.work", "cn.google"};
    public static final String zzb = "androidPackageName";
    private static final ComponentName zzc = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
    private static final Logger zzd = zzd.zza("GoogleAuthUtil");

    public static void clearToken(Context context, String str) throws GoogleAuthException, IOException {
        zze(context, str, 0L);
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException, IOException {
        Preconditions.checkNotEmpty(str, "accountName must be provided");
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        zzk(context, 8400000);
        AccountChangeEventsRequest accountChangeEventsRequest = new AccountChangeEventsRequest();
        accountChangeEventsRequest.setAccountName(str);
        accountChangeEventsRequest.setEventIndex(i);
        rw4.c(context);
        e45.o.zza().getClass();
        if (((Boolean) k45.b.b()).booleanValue() && zzp(context)) {
            vl4 vl4VarC = sh4.c(context);
            Preconditions.checkNotNull(accountChangeEventsRequest, "request cannot be null.");
            try {
                AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) zzi(vl4VarC.doWrite(TaskApiCall.builder().setFeatures(zze.zzk).run(new ra3(vl4VarC, accountChangeEventsRequest, 29)).setMethodKey(1515).build()), "account change events retrieval");
                zzj(accountChangeEventsResponse);
                return accountChangeEventsResponse.getEvents();
            } catch (ApiException e) {
                zzl(e, "account change events retrieval");
            }
        }
        return (List) zzh(context, zzc, new zzi(accountChangeEventsRequest), 0L, null);
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException {
        Preconditions.checkNotEmpty(str, "accountName must be provided");
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        zzk(context, 8400000);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) {
        zzo(account);
        return zza(context, account, str, bundle, 0L, null).zza();
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    public static Bundle removeAccount(Context context, final Account account) throws GoogleAuthException, IOException {
        Preconditions.checkNotNull(context);
        zzo(account);
        zzk(context, 8400000);
        rw4.c(context);
        if (e45.b() && zzp(context)) {
            vl4 vl4VarC = sh4.c(context);
            Preconditions.checkNotNull(account, "account cannot be null.");
            try {
                Bundle bundle = (Bundle) zzi(vl4VarC.doWrite(TaskApiCall.builder().setFeatures(zze.zzk).run(new ra3(vl4VarC, account, 26)).setMethodKey(1517).build()), "account removal");
                zzj(bundle);
                return bundle;
            } catch (ApiException e) {
                zzl(e, "account removal");
            }
        }
        return (Bundle) zzh(context, zzc, new zzk() { // from class: com.google.android.gms.auth.zzf
            @Override // com.google.android.gms.auth.zzk
            public final Object zza(IBinder iBinder) throws IOException {
                Account account2 = account;
                yw4 yw4Var = (yw4) fy4.E(iBinder);
                Parcel parcelZza = yw4Var.zza();
                iv4.c(parcelZza, account2);
                Parcel parcelZzb = yw4Var.zzb(7, parcelZza);
                Bundle bundle2 = (Bundle) iv4.a(parcelZzb, Bundle.CREATOR);
                parcelZzb.recycle();
                if (bundle2 != null) {
                    return bundle2;
                }
                p61.k("Service call returned null.");
                return null;
            }
        }, 0L, null);
    }

    public static Boolean requestGoogleAccountsAccess(Context context) throws GoogleAuthException, IOException {
        Preconditions.checkNotNull(context);
        zzk(context, 11400000);
        String str = context.getApplicationInfo().packageName;
        rw4.c(context);
        if (e45.b() && zzp(context)) {
            vl4 vl4VarC = sh4.c(context);
            Preconditions.checkNotNull(str, "Client package name cannot be null!");
            try {
                Bundle bundle = (Bundle) zzi(vl4VarC.doWrite(TaskApiCall.builder().setFeatures(zze.zzk).run(new sg0(vl4VarC, str, 6)).setMethodKey(1514).build()), "google accounts access request");
                String string = bundle.getString("Error");
                Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
                PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent");
                if (di0.i(3, to4.a(string))) {
                    return Boolean.TRUE;
                }
                zzn(context, "requestGoogleAccountsAccess", string, intent, pendingIntent);
                throw new GoogleAuthException("Invalid state. Shouldn't happen");
            } catch (ApiException e) {
                zzl(e, "google accounts access request");
            }
        }
        return (Boolean) zzh(context, zzc, new zzj(str, context), 0L, null);
    }

    public static TokenData zza(final Context context, final Account account, final String str, Bundle bundle, long j, Executor executor) throws GoogleAuthException, IOException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        Preconditions.checkNotEmpty(str, "Scope cannot be empty or null.");
        zzo(account);
        zzk(context, 8400000);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        zzm(context, bundle2);
        rw4.c(context);
        if (e45.b() && zzp(context)) {
            vl4 vl4VarC = sh4.c(context);
            Preconditions.checkNotNull(account, "Account name cannot be null!");
            Preconditions.checkNotEmpty(str, "Scope cannot be null!");
            try {
                Bundle bundle3 = (Bundle) zzi(vl4VarC.doWrite(TaskApiCall.builder().setFeatures(zze.zzl).run(new ui3(vl4VarC, account, str, bundle2)).setMethodKey(1512).build()), "token retrieval");
                zzj(bundle3);
                return zzg(context, "getTokenWithDetails", bundle3);
            } catch (ApiException e) {
                zzl(e, "token retrieval");
            }
        }
        return (TokenData) zzh(context, zzc, new zzk() { // from class: com.google.android.gms.auth.zzg
            @Override // com.google.android.gms.auth.zzk
            public final Object zza(IBinder iBinder) {
                return zzl.zzb(account, str, bundle2, context, iBinder);
            }
        }, 0L, null);
    }

    public static TokenData zzb(Account account, String str, Bundle bundle, Context context, IBinder iBinder) throws IOException {
        yw4 yw4Var = (yw4) fy4.E(iBinder);
        Parcel parcelZza = yw4Var.zza();
        iv4.c(parcelZza, account);
        parcelZza.writeString(str);
        iv4.c(parcelZza, bundle);
        Parcel parcelZzb = yw4Var.zzb(5, parcelZza);
        Bundle bundle2 = (Bundle) iv4.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        if (bundle2 != null) {
            return zzg(context, "getTokenWithDetails", bundle2);
        }
        p61.k("Service call returned null");
        return null;
    }

    public static /* bridge */ /* synthetic */ Object zzc(Object obj) throws IOException {
        zzj(obj);
        return obj;
    }

    public static void zze(Context context, String str, long j) throws GoogleAuthException, IOException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        zzk(context, 8400000);
        Bundle bundle = new Bundle();
        zzm(context, bundle);
        rw4.c(context);
        if (e45.b() && zzp(context)) {
            vl4 vl4VarC = sh4.c(context);
            zu4 zu4Var = new zu4();
            zu4Var.o = str;
            try {
                zzi(vl4VarC.doWrite(TaskApiCall.builder().setFeatures(zze.zzl).run(new gt4(vl4VarC, zu4Var, 14)).setMethodKey(1513).build()), "clear token");
                return;
            } catch (ApiException e) {
                zzl(e, "clear token");
            }
        }
        zzh(context, zzc, new zzh(str, bundle), 0L, null);
    }

    public static void zzf(Intent intent) {
        if (intent == null) {
            k21.f("Callback cannot be null.");
            return;
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException unused) {
            k21.f("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    private static TokenData zzg(Context context, String str, Bundle bundle) throws GoogleAuthException, IOException {
        TokenData tokenData;
        Parcelable.Creator<TokenData> creator = TokenData.CREATOR;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        zzn(context, "getTokenWithDetails", bundle.getString("Error"), (Intent) bundle.getParcelable("userRecoveryIntent"), (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent"));
        throw new GoogleAuthException("Invalid state. Shouldn't happen");
    }

    private static Object zzh(Context context, ComponentName componentName, zzk zzkVar, long j, Executor executor) throws IOException {
        BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        try {
            try {
                if (!gmsClientSupervisor.bindService(componentName, blockingServiceConnection, "GoogleAuthUtil", null)) {
                    p61.k("Could not bind to service.");
                    return null;
                }
                try {
                    return zzkVar.zza(blockingServiceConnection.getService());
                } catch (RemoteException | InterruptedException | TimeoutException e) {
                    Log.i("GoogleAuthUtil", "Error on service connection.", e);
                    throw new IOException("Error on service connection.", e);
                }
            } finally {
                gmsClientSupervisor.unbindService(componentName, blockingServiceConnection, "GoogleAuthUtil");
            }
        } catch (SecurityException e2) {
            Log.w("GoogleAuthUtil", "SecurityException while bind to auth service: " + e2.getMessage());
            throw new IOException("SecurityException while binding to Auth service.", e2);
        }
    }

    private static Object zzi(ow3 ow3Var, String str) throws IOException, ApiException {
        try {
            return mt1.k(ow3Var);
        } catch (InterruptedException e) {
            String strV = di0.v("Interrupted while waiting for the task of ", str, " to finish.");
            zzd.w(strV, new Object[0]);
            throw new IOException(strV, e);
        } catch (CancellationException e2) {
            String strV2 = di0.v("Canceled while waiting for the task of ", str, " to finish.");
            zzd.w(strV2, new Object[0]);
            throw new IOException(strV2, e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof ApiException) {
                throw ((ApiException) cause);
            }
            String strV3 = di0.v("Unable to get a result for ", str, " due to ExecutionException.");
            zzd.w(strV3, new Object[0]);
            throw new IOException(strV3, e3);
        }
    }

    private static Object zzj(Object obj) throws IOException {
        if (obj != null) {
            return obj;
        }
        zzd.w("Service call returned null.", new Object[0]);
        p61.k("Service unavailable.");
        return null;
    }

    private static void zzk(Context context, int i) throws GoogleAuthException {
        try {
            GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context.getApplicationContext(), i);
        } catch (GooglePlayServicesIncorrectManifestValueException | GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage(), e);
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    private static void zzl(ApiException apiException, String str) {
        zzd.w("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", str, Log.getStackTraceString(apiException));
    }

    private static void zzm(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str);
        String str2 = zzb;
        if (TextUtils.isEmpty(bundle.getString(str2))) {
            bundle.putString(str2, str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzn(Context context, String str, String str2, Intent intent, PendingIntent pendingIntent) throws GoogleAuthException, IOException {
        String str3;
        int iA = to4.a(str2);
        Logger logger = zzd;
        StringBuilder sb = new StringBuilder("[GoogleAuthUtil] error status:");
        switch (iA) {
            case 1:
                str3 = "CLIENT_LOGIN_DISABLED";
                break;
            case 2:
                str3 = "SOCKET_TIMEOUT";
                break;
            case 3:
                str3 = "SUCCESS";
                break;
            case 4:
                str3 = "UNKNOWN_ERROR";
                break;
            case 5:
                str3 = "NETWORK_ERROR";
                break;
            case 6:
                str3 = "SERVICE_UNAVAILABLE";
                break;
            case 7:
                str3 = "INTNERNAL_ERROR";
                break;
            case 8:
                str3 = "ILLEGAL_ARGUMENT";
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                str3 = "BAD_AUTHENTICATION";
                break;
            case 10:
                str3 = "BAD_TOKEN_REQUEST";
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                str3 = "EMPTY_CONSUMER_PKG_OR_SIG";
                break;
            case 12:
                str3 = "NEEDS_2F";
                break;
            case 13:
                str3 = "NEEDS_POST_SIGN_IN_FLOW";
                break;
            case 14:
                str3 = "NEEDS_BROWSER";
                break;
            case 15:
                str3 = "UNKNOWN";
                break;
            case 16:
                str3 = "NOT_VERIFIED";
                break;
            case 17:
                str3 = "TERMS_NOT_AGREED";
                break;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                str3 = "ACCOUNT_DISABLED";
                break;
            case 19:
                str3 = "CAPTCHA";
                break;
            case 20:
                str3 = "ACCOUNT_DELETED";
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                str3 = "SERVICE_DISABLED";
                break;
            case 22:
                str3 = "CHALLENGE_REQUIRED";
                break;
            case ConnectionResult.API_DISABLED /* 23 */:
                str3 = "NEED_PERMISSION";
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                str3 = "NEED_REMOTE_CONSENT";
                break;
            case 25:
                str3 = "INVALID_SCOPE";
                break;
            case 26:
                str3 = "USER_CANCEL";
                break;
            case 27:
                str3 = "PERMISSION_DENIED";
                break;
            case 28:
                str3 = "RESTRICTED_CLIENT";
                break;
            case 29:
                str3 = "INVALID_AUDIENCE";
                break;
            case 30:
                str3 = "UNREGISTERED_ON_API_CONSOLE";
                break;
            case 31:
                str3 = "THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED";
                break;
            case 32:
                str3 = "DM_INTERNAL_ERROR";
                break;
            case 33:
                str3 = "DM_SYNC_DISABLED";
                break;
            case 34:
                str3 = "DM_ADMIN_BLOCKED";
                break;
            case 35:
                str3 = "DM_ADMIN_PENDING_APPROVAL";
                break;
            case 36:
                str3 = "DM_STALE_SYNC_REQUIRED";
                break;
            case 37:
                str3 = "DM_DEACTIVATED";
                break;
            case 38:
                str3 = "DM_SCREENLOCK_REQUIRED";
                break;
            case 39:
                str3 = "DM_REQUIRED";
                break;
            case 40:
                str3 = "DEVICE_MANAGEMENT_REQUIRED";
                break;
            case 41:
                str3 = "ALREADY_HAS_GMAIL";
                break;
            case 42:
                str3 = "BAD_PASSWORD";
                break;
            case 43:
                str3 = "BAD_REQUEST";
                break;
            case 44:
                str3 = "BAD_USERNAME";
                break;
            case 45:
                str3 = "DELETED_GMAIL";
                break;
            case 46:
                str3 = "EXISTING_USERNAME";
                break;
            case 47:
                str3 = "LOGIN_FAIL";
                break;
            case 48:
                str3 = "NOT_LOGGED_IN";
                break;
            case 49:
                str3 = "NO_GMAIL";
                break;
            case 50:
                str3 = "REQUEST_DENIED";
                break;
            case 51:
                str3 = "SERVER_ERROR";
                break;
            case 52:
                str3 = "USERNAME_UNAVAILABLE";
                break;
            case 53:
                str3 = "GPLUS_OTHER";
                break;
            case 54:
                str3 = "GPLUS_NICKNAME";
                break;
            case 55:
                str3 = "GPLUS_INVALID_CHAR";
                break;
            case 56:
                str3 = "GPLUS_INTERSTITIAL";
                break;
            case 57:
                str3 = "GPLUS_PROFILE_ERROR";
                break;
            case 58:
                str3 = "AUTH_SECURITY_ERROR";
                break;
            case 59:
                str3 = "AUTH_BINDING_ERROR";
                break;
            case 60:
                str3 = "ACCOUNT_NOT_PRESENT";
                break;
            case 61:
                str3 = "APP_SUSPENDED";
                break;
            default:
                str3 = "null";
                break;
        }
        sb.append(str3);
        sb.append(" with method:");
        sb.append(str);
        logger.w(sb.toString(), new Object[0]);
        if (!di0.i(9, iA) && !di0.i(19, iA) && !di0.i(23, iA) && !di0.i(24, iA) && !di0.i(14, iA) && !di0.i(26, iA) && !di0.i(40, iA) && !di0.i(32, iA) && !di0.i(33, iA) && !di0.i(34, iA) && !di0.i(35, iA) && !di0.i(36, iA) && !di0.i(37, iA) && !di0.i(39, iA) && !di0.i(31, iA) && !di0.i(38, iA)) {
            if (!di0.i(5, iA) && !di0.i(6, iA) && !di0.i(7, iA) && !di0.i(58, iA) && !di0.i(60, iA)) {
                throw new GoogleAuthException(str2);
            }
            throw new IOException(str2);
        }
        rw4.c(context);
        ((b45) x35.o.n.zza()).getClass();
        if (!((Boolean) b45.a.b()).booleanValue()) {
            throw new UserRecoverableAuthException(str2, intent);
        }
        if (pendingIntent != null && intent != null) {
            throw UserRecoverableAuthException.zza(str2, intent, pendingIntent);
        }
        if (GoogleApiAvailability.getInstance().getApkVersion(context) >= Integer.MAX_VALUE && pendingIntent == null) {
            logger.e(di0.v("Recovery PendingIntent is missing on current Gms version: 2147483647 for method: ", str, ". It should always be present on or above Gms version 2147483647. This indicates a bug in Gms implementation."), new Object[0]);
        }
        if (intent == null) {
            logger.e(xw1.r("no recovery Intent found with status=", str2, " for method=", str, ". This shouldn't happen"), new Object[0]);
        }
        throw new UserRecoverableAuthException(str2, intent);
    }

    private static void zzo(Account account) {
        if (account == null) {
            k21.f("Account cannot be null");
            return;
        }
        if (TextUtils.isEmpty(account.name)) {
            k21.f("Account name cannot be empty!");
            return;
        }
        String[] strArr = zza;
        for (int i = 0; i < 3; i++) {
            if (strArr[i].equals(account.type)) {
                return;
            }
        }
        k21.f("Account type not supported");
    }

    private static boolean zzp(Context context) {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context, 17895000) != 0) {
            return false;
        }
        e45.o.zza().getClass();
        vy4 vy4VarK = ((v35) k45.a.b()).k();
        String str = context.getApplicationInfo().packageName;
        Iterator it = vy4VarK.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equals(str)) {
                return false;
            }
        }
        return true;
    }

    public static String getToken(Context context, Account account, String str) {
        return getToken(context, account, str, new Bundle());
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }
}
