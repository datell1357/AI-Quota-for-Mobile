package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface hw4 extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(mw4 mw4Var);

    void getAppInstanceId(mw4 mw4Var);

    void getCachedAppInstanceId(mw4 mw4Var);

    void getConditionalUserProperties(String str, String str2, mw4 mw4Var);

    void getCurrentScreenClass(mw4 mw4Var);

    void getCurrentScreenName(mw4 mw4Var);

    void getGmpAppId(mw4 mw4Var);

    void getMaxUserProperties(String str, mw4 mw4Var);

    void getSessionId(mw4 mw4Var);

    void getTestFlag(mw4 mw4Var, int i);

    void getUserProperties(String str, String str2, boolean z, mw4 mw4Var);

    void initForTests(Map map);

    void initialize(kn1 kn1Var, ix4 ix4Var, long j);

    void initializeWithElapsedTime(kn1 kn1Var, ix4 ix4Var, long j, long j2);

    void isDataCollectionEnabled(mw4 mw4Var);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, mw4 mw4Var, long j);

    void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j, long j2);

    void logHealthData(int i, String str, kn1 kn1Var, kn1 kn1Var2, kn1 kn1Var3);

    void onActivityCreated(kn1 kn1Var, Bundle bundle, long j);

    void onActivityCreatedByScionActivityInfo(jx4 jx4Var, Bundle bundle, long j);

    void onActivityDestroyed(kn1 kn1Var, long j);

    void onActivityDestroyedByScionActivityInfo(jx4 jx4Var, long j);

    void onActivityPaused(kn1 kn1Var, long j);

    void onActivityPausedByScionActivityInfo(jx4 jx4Var, long j);

    void onActivityResumed(kn1 kn1Var, long j);

    void onActivityResumedByScionActivityInfo(jx4 jx4Var, long j);

    void onActivitySaveInstanceState(kn1 kn1Var, mw4 mw4Var, long j);

    void onActivitySaveInstanceStateByScionActivityInfo(jx4 jx4Var, mw4 mw4Var, long j);

    void onActivityStarted(kn1 kn1Var, long j);

    void onActivityStartedByScionActivityInfo(jx4 jx4Var, long j);

    void onActivityStopped(kn1 kn1Var, long j);

    void onActivityStoppedByScionActivityInfo(jx4 jx4Var, long j);

    void performAction(Bundle bundle, mw4 mw4Var, long j);

    void registerOnMeasurementEventListener(tw4 tw4Var);

    void resetAnalyticsData(long j);

    void resetAnalyticsDataWithElapsedTime(long j, long j2);

    void retrieveAndUploadBatches(qw4 qw4Var);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(kn1 kn1Var, String str, String str2, long j);

    void setCurrentScreenByScionActivityInfo(jx4 jx4Var, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(tw4 tw4Var);

    void setInstanceIdProvider(hx4 hx4Var);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, kn1 kn1Var, boolean z, long j);

    void unregisterOnMeasurementEventListener(tw4 tw4Var);
}
