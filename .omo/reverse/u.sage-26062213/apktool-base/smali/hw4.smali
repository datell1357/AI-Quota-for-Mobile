.class public interface abstract Lhw4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract beginAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract clearMeasurementEnabled(J)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract generateEventId(Lmw4;)V
.end method

.method public abstract getAppInstanceId(Lmw4;)V
.end method

.method public abstract getCachedAppInstanceId(Lmw4;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lmw4;)V
.end method

.method public abstract getCurrentScreenClass(Lmw4;)V
.end method

.method public abstract getCurrentScreenName(Lmw4;)V
.end method

.method public abstract getGmpAppId(Lmw4;)V
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;Lmw4;)V
.end method

.method public abstract getSessionId(Lmw4;)V
.end method

.method public abstract getTestFlag(Lmw4;I)V
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLmw4;)V
.end method

.method public abstract initForTests(Ljava/util/Map;)V
.end method

.method public abstract initialize(Lkn1;Lix4;J)V
.end method

.method public abstract initializeWithElapsedTime(Lkn1;Lix4;JJ)V
.end method

.method public abstract isDataCollectionEnabled(Lmw4;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
.end method

.method public abstract logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmw4;J)V
.end method

.method public abstract logEventWithElapsedTime(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJJ)V
.end method

.method public abstract logHealthData(ILjava/lang/String;Lkn1;Lkn1;Lkn1;)V
.end method

.method public abstract onActivityCreated(Lkn1;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityCreatedByScionActivityInfo(Ljx4;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityDestroyed(Lkn1;J)V
.end method

.method public abstract onActivityDestroyedByScionActivityInfo(Ljx4;J)V
.end method

.method public abstract onActivityPaused(Lkn1;J)V
.end method

.method public abstract onActivityPausedByScionActivityInfo(Ljx4;J)V
.end method

.method public abstract onActivityResumed(Lkn1;J)V
.end method

.method public abstract onActivityResumedByScionActivityInfo(Ljx4;J)V
.end method

.method public abstract onActivitySaveInstanceState(Lkn1;Lmw4;J)V
.end method

.method public abstract onActivitySaveInstanceStateByScionActivityInfo(Ljx4;Lmw4;J)V
.end method

.method public abstract onActivityStarted(Lkn1;J)V
.end method

.method public abstract onActivityStartedByScionActivityInfo(Ljx4;J)V
.end method

.method public abstract onActivityStopped(Lkn1;J)V
.end method

.method public abstract onActivityStoppedByScionActivityInfo(Ljx4;J)V
.end method

.method public abstract performAction(Landroid/os/Bundle;Lmw4;J)V
.end method

.method public abstract registerOnMeasurementEventListener(Ltw4;)V
.end method

.method public abstract resetAnalyticsData(J)V
.end method

.method public abstract resetAnalyticsDataWithElapsedTime(JJ)V
.end method

.method public abstract retrieveAndUploadBatches(Lqw4;)V
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsent(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsentThirdParty(Landroid/os/Bundle;J)V
.end method

.method public abstract setCurrentScreen(Lkn1;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setCurrentScreenByScionActivityInfo(Ljx4;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setDataCollectionEnabled(Z)V
.end method

.method public abstract setDefaultEventParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setEventInterceptor(Ltw4;)V
.end method

.method public abstract setInstanceIdProvider(Lhx4;)V
.end method

.method public abstract setMeasurementEnabled(ZJ)V
.end method

.method public abstract setMinimumSessionDuration(J)V
.end method

.method public abstract setSessionTimeoutDuration(J)V
.end method

.method public abstract setSgtmDebugInfo(Landroid/content/Intent;)V
.end method

.method public abstract setUserId(Ljava/lang/String;J)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Lkn1;ZJ)V
.end method

.method public abstract unregisterOnMeasurementEventListener(Ltw4;)V
.end method
