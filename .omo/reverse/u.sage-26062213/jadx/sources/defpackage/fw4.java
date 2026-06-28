package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fw4 extends iu4 implements hw4 {
    public static hw4 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return iInterfaceQueryLocalInterface instanceof hw4 ? (hw4) iInterfaceQueryLocalInterface : new ew4(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        mw4 iw4Var = null;
        qw4 ow4Var = null;
        mw4 iw4Var2 = null;
        mw4 iw4Var3 = null;
        mw4 iw4Var4 = null;
        mw4 iw4Var5 = null;
        tw4 sw4Var = null;
        tw4 sw4Var2 = null;
        tw4 sw4Var3 = null;
        mw4 iw4Var6 = null;
        mw4 iw4Var7 = null;
        mw4 iw4Var8 = null;
        mw4 iw4Var9 = null;
        mw4 iw4Var10 = null;
        mw4 iw4Var11 = null;
        hx4 vw4Var = null;
        mw4 iw4Var12 = null;
        mw4 iw4Var13 = null;
        mw4 iw4Var14 = null;
        mw4 iw4Var15 = null;
        mw4 iw4Var16 = null;
        switch (i) {
            case 1:
                kn1 kn1VarE = yn2.E(parcel.readStrongBinder());
                ix4 ix4Var = (ix4) ku4.a(parcel, ix4.CREATOR);
                long j = parcel.readLong();
                ku4.d(parcel);
                initialize(kn1VarE, ix4Var, j);
                break;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                boolean z2 = parcel.readInt() != 0;
                boolean z3 = parcel.readInt() != 0;
                long j2 = parcel.readLong();
                ku4.d(parcel);
                logEvent(string, string2, bundle, z2, z3, j2);
                break;
            case 3:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                Bundle bundle2 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var = iInterfaceQueryLocalInterface instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface : new iw4(strongBinder);
                }
                mw4 mw4Var = iw4Var;
                long j3 = parcel.readLong();
                ku4.d(parcel);
                logEventAndBundle(string3, string4, bundle2, mw4Var, j3);
                break;
            case 4:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                kn1 kn1VarE2 = yn2.E(parcel.readStrongBinder());
                ClassLoader classLoader = ku4.a;
                z = parcel.readInt() != 0;
                long j4 = parcel.readLong();
                ku4.d(parcel);
                setUserProperty(string5, string6, kn1VarE2, z, j4);
                break;
            case 5:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                ClassLoader classLoader2 = ku4.a;
                z = parcel.readInt() != 0;
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var16 = iInterfaceQueryLocalInterface2 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface2 : new iw4(strongBinder2);
                }
                ku4.d(parcel);
                getUserProperties(string7, string8, z, iw4Var16);
                break;
            case 6:
                String string9 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var15 = iInterfaceQueryLocalInterface3 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface3 : new iw4(strongBinder3);
                }
                ku4.d(parcel);
                getMaxUserProperties(string9, iw4Var15);
                break;
            case 7:
                String string10 = parcel.readString();
                long j5 = parcel.readLong();
                ku4.d(parcel);
                setUserId(string10, j5);
                break;
            case 8:
                Bundle bundle3 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                long j6 = parcel.readLong();
                ku4.d(parcel);
                setConditionalUserProperty(bundle3, j6);
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                Bundle bundle4 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                ku4.d(parcel);
                clearConditionalUserProperty(string11, string12, bundle4);
                break;
            case 10:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var14 = iInterfaceQueryLocalInterface4 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface4 : new iw4(strongBinder4);
                }
                ku4.d(parcel);
                getConditionalUserProperties(string13, string14, iw4Var14);
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                ClassLoader classLoader3 = ku4.a;
                z = parcel.readInt() != 0;
                long j7 = parcel.readLong();
                ku4.d(parcel);
                setMeasurementEnabled(z, j7);
                break;
            case 12:
                long j8 = parcel.readLong();
                ku4.d(parcel);
                resetAnalyticsData(j8);
                break;
            case 13:
                long j9 = parcel.readLong();
                ku4.d(parcel);
                setMinimumSessionDuration(j9);
                break;
            case 14:
                long j10 = parcel.readLong();
                ku4.d(parcel);
                setSessionTimeoutDuration(j10);
                break;
            case 15:
                kn1 kn1VarE3 = yn2.E(parcel.readStrongBinder());
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                long j11 = parcel.readLong();
                ku4.d(parcel);
                setCurrentScreen(kn1VarE3, string15, string16, j11);
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var13 = iInterfaceQueryLocalInterface5 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface5 : new iw4(strongBinder5);
                }
                ku4.d(parcel);
                getCurrentScreenName(iw4Var13);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var12 = iInterfaceQueryLocalInterface6 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface6 : new iw4(strongBinder6);
                }
                ku4.d(parcel);
                getCurrentScreenClass(iw4Var12);
                break;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    vw4Var = iInterfaceQueryLocalInterface7 instanceof hx4 ? (hx4) iInterfaceQueryLocalInterface7 : new vw4(strongBinder7, "com.google.android.gms.measurement.api.internal.IStringProvider");
                }
                ku4.d(parcel);
                setInstanceIdProvider(vw4Var);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var11 = iInterfaceQueryLocalInterface8 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface8 : new iw4(strongBinder8);
                }
                ku4.d(parcel);
                getCachedAppInstanceId(iw4Var11);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var10 = iInterfaceQueryLocalInterface9 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface9 : new iw4(strongBinder9);
                }
                ku4.d(parcel);
                getAppInstanceId(iw4Var10);
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var9 = iInterfaceQueryLocalInterface10 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface10 : new iw4(strongBinder10);
                }
                ku4.d(parcel);
                getGmpAppId(iw4Var9);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var8 = iInterfaceQueryLocalInterface11 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface11 : new iw4(strongBinder11);
                }
                ku4.d(parcel);
                generateEventId(iw4Var8);
                break;
            case ConnectionResult.API_DISABLED /* 23 */:
                String string17 = parcel.readString();
                long j12 = parcel.readLong();
                ku4.d(parcel);
                beginAdUnitExposure(string17, j12);
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                String string18 = parcel.readString();
                long j13 = parcel.readLong();
                ku4.d(parcel);
                endAdUnitExposure(string18, j13);
                break;
            case 25:
                kn1 kn1VarE4 = yn2.E(parcel.readStrongBinder());
                long j14 = parcel.readLong();
                ku4.d(parcel);
                onActivityStarted(kn1VarE4, j14);
                break;
            case 26:
                kn1 kn1VarE5 = yn2.E(parcel.readStrongBinder());
                long j15 = parcel.readLong();
                ku4.d(parcel);
                onActivityStopped(kn1VarE5, j15);
                break;
            case 27:
                kn1 kn1VarE6 = yn2.E(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                long j16 = parcel.readLong();
                ku4.d(parcel);
                onActivityCreated(kn1VarE6, bundle5, j16);
                break;
            case 28:
                kn1 kn1VarE7 = yn2.E(parcel.readStrongBinder());
                long j17 = parcel.readLong();
                ku4.d(parcel);
                onActivityDestroyed(kn1VarE7, j17);
                break;
            case 29:
                kn1 kn1VarE8 = yn2.E(parcel.readStrongBinder());
                long j18 = parcel.readLong();
                ku4.d(parcel);
                onActivityPaused(kn1VarE8, j18);
                break;
            case 30:
                kn1 kn1VarE9 = yn2.E(parcel.readStrongBinder());
                long j19 = parcel.readLong();
                ku4.d(parcel);
                onActivityResumed(kn1VarE9, j19);
                break;
            case 31:
                kn1 kn1VarE10 = yn2.E(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var7 = iInterfaceQueryLocalInterface12 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface12 : new iw4(strongBinder12);
                }
                long j20 = parcel.readLong();
                ku4.d(parcel);
                onActivitySaveInstanceState(kn1VarE10, iw4Var7, j20);
                break;
            case 32:
                Bundle bundle6 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var6 = iInterfaceQueryLocalInterface13 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface13 : new iw4(strongBinder13);
                }
                long j21 = parcel.readLong();
                ku4.d(parcel);
                performAction(bundle6, iw4Var6, j21);
                break;
            case 33:
                int i2 = parcel.readInt();
                String string19 = parcel.readString();
                kn1 kn1VarE11 = yn2.E(parcel.readStrongBinder());
                kn1 kn1VarE12 = yn2.E(parcel.readStrongBinder());
                kn1 kn1VarE13 = yn2.E(parcel.readStrongBinder());
                ku4.d(parcel);
                logHealthData(i2, string19, kn1VarE11, kn1VarE12, kn1VarE13);
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    sw4Var3 = iInterfaceQueryLocalInterface14 instanceof tw4 ? (tw4) iInterfaceQueryLocalInterface14 : new sw4(strongBinder14);
                }
                ku4.d(parcel);
                setEventInterceptor(sw4Var3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    sw4Var2 = iInterfaceQueryLocalInterface15 instanceof tw4 ? (tw4) iInterfaceQueryLocalInterface15 : new sw4(strongBinder15);
                }
                ku4.d(parcel);
                registerOnMeasurementEventListener(sw4Var2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    sw4Var = iInterfaceQueryLocalInterface16 instanceof tw4 ? (tw4) iInterfaceQueryLocalInterface16 : new sw4(strongBinder16);
                }
                ku4.d(parcel);
                unregisterOnMeasurementEventListener(sw4Var);
                break;
            case 37:
                HashMap hashMap = parcel.readHashMap(ku4.a);
                ku4.d(parcel);
                initForTests(hashMap);
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var5 = iInterfaceQueryLocalInterface17 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface17 : new iw4(strongBinder17);
                }
                int i3 = parcel.readInt();
                ku4.d(parcel);
                getTestFlag(iw4Var5, i3);
                break;
            case 39:
                ClassLoader classLoader4 = ku4.a;
                z = parcel.readInt() != 0;
                ku4.d(parcel);
                setDataCollectionEnabled(z);
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var4 = iInterfaceQueryLocalInterface18 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface18 : new iw4(strongBinder18);
                }
                ku4.d(parcel);
                isDataCollectionEnabled(iw4Var4);
                break;
            case 41:
            case 47:
            case 49:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                ku4.d(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long j22 = parcel.readLong();
                ku4.d(parcel);
                clearMeasurementEnabled(j22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                long j23 = parcel.readLong();
                ku4.d(parcel);
                setConsent(bundle8, j23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                long j24 = parcel.readLong();
                ku4.d(parcel);
                setConsentThirdParty(bundle9, j24);
                break;
            case 46:
                IBinder strongBinder19 = parcel.readStrongBinder();
                if (strongBinder19 != null) {
                    IInterface iInterfaceQueryLocalInterface19 = strongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var3 = iInterfaceQueryLocalInterface19 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface19 : new iw4(strongBinder19);
                }
                ku4.d(parcel);
                getSessionId(iw4Var3);
                break;
            case 48:
                Intent intent = (Intent) ku4.a(parcel, Intent.CREATOR);
                ku4.d(parcel);
                setSgtmDebugInfo(intent);
                break;
            case 50:
                jx4 jx4Var = (jx4) ku4.a(parcel, jx4.CREATOR);
                String string20 = parcel.readString();
                String string21 = parcel.readString();
                long j25 = parcel.readLong();
                ku4.d(parcel);
                setCurrentScreenByScionActivityInfo(jx4Var, string20, string21, j25);
                break;
            case 51:
                jx4 jx4Var2 = (jx4) ku4.a(parcel, jx4.CREATOR);
                long j26 = parcel.readLong();
                ku4.d(parcel);
                onActivityStartedByScionActivityInfo(jx4Var2, j26);
                break;
            case 52:
                jx4 jx4Var3 = (jx4) ku4.a(parcel, jx4.CREATOR);
                long j27 = parcel.readLong();
                ku4.d(parcel);
                onActivityStoppedByScionActivityInfo(jx4Var3, j27);
                break;
            case 53:
                jx4 jx4Var4 = (jx4) ku4.a(parcel, jx4.CREATOR);
                Bundle bundle10 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                long j28 = parcel.readLong();
                ku4.d(parcel);
                onActivityCreatedByScionActivityInfo(jx4Var4, bundle10, j28);
                break;
            case 54:
                jx4 jx4Var5 = (jx4) ku4.a(parcel, jx4.CREATOR);
                long j29 = parcel.readLong();
                ku4.d(parcel);
                onActivityDestroyedByScionActivityInfo(jx4Var5, j29);
                break;
            case 55:
                jx4 jx4Var6 = (jx4) ku4.a(parcel, jx4.CREATOR);
                long j30 = parcel.readLong();
                ku4.d(parcel);
                onActivityPausedByScionActivityInfo(jx4Var6, j30);
                break;
            case 56:
                jx4 jx4Var7 = (jx4) ku4.a(parcel, jx4.CREATOR);
                long j31 = parcel.readLong();
                ku4.d(parcel);
                onActivityResumedByScionActivityInfo(jx4Var7, j31);
                break;
            case 57:
                jx4 jx4Var8 = (jx4) ku4.a(parcel, jx4.CREATOR);
                IBinder strongBinder20 = parcel.readStrongBinder();
                if (strongBinder20 != null) {
                    IInterface iInterfaceQueryLocalInterface20 = strongBinder20.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    iw4Var2 = iInterfaceQueryLocalInterface20 instanceof mw4 ? (mw4) iInterfaceQueryLocalInterface20 : new iw4(strongBinder20);
                }
                long j32 = parcel.readLong();
                ku4.d(parcel);
                onActivitySaveInstanceStateByScionActivityInfo(jx4Var8, iw4Var2, j32);
                break;
            case 58:
                IBinder strongBinder21 = parcel.readStrongBinder();
                if (strongBinder21 != null) {
                    IInterface iInterfaceQueryLocalInterface21 = strongBinder21.queryLocalInterface("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                    ow4Var = iInterfaceQueryLocalInterface21 instanceof qw4 ? (qw4) iInterfaceQueryLocalInterface21 : new ow4(strongBinder21, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                }
                ku4.d(parcel);
                retrieveAndUploadBatches(ow4Var);
                break;
            case 59:
                String string22 = parcel.readString();
                String string23 = parcel.readString();
                Bundle bundle11 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                boolean z4 = parcel.readInt() != 0;
                boolean z5 = parcel.readInt() != 0;
                long j33 = parcel.readLong();
                long j34 = parcel.readLong();
                ku4.d(parcel);
                logEventWithElapsedTime(string22, string23, bundle11, z4, z5, j33, j34);
                break;
            case 60:
                kn1 kn1VarE14 = yn2.E(parcel.readStrongBinder());
                ix4 ix4Var2 = (ix4) ku4.a(parcel, ix4.CREATOR);
                long j35 = parcel.readLong();
                long j36 = parcel.readLong();
                ku4.d(parcel);
                initializeWithElapsedTime(kn1VarE14, ix4Var2, j35, j36);
                break;
            case 61:
                long j37 = parcel.readLong();
                long j38 = parcel.readLong();
                ku4.d(parcel);
                resetAnalyticsDataWithElapsedTime(j37, j38);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
