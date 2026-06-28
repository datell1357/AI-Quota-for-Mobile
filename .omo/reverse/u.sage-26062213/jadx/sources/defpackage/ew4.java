package defpackage;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ew4 extends gu4 implements hw4 {
    @Override // defpackage.hw4
    public final void beginAdUnitExposure(String str, long j) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeLong(j);
        G(23, parcelF);
    }

    @Override // defpackage.hw4
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ku4.b(parcelF, bundle);
        G(9, parcelF);
    }

    @Override // defpackage.hw4
    public final void endAdUnitExposure(String str, long j) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeLong(j);
        G(24, parcelF);
    }

    @Override // defpackage.hw4
    public final void generateEventId(mw4 mw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, mw4Var);
        G(22, parcelF);
    }

    @Override // defpackage.hw4
    public final void getCachedAppInstanceId(mw4 mw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, mw4Var);
        G(19, parcelF);
    }

    @Override // defpackage.hw4
    public final void getConditionalUserProperties(String str, String str2, mw4 mw4Var) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ku4.c(parcelF, mw4Var);
        G(10, parcelF);
    }

    @Override // defpackage.hw4
    public final void getCurrentScreenClass(mw4 mw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, mw4Var);
        G(17, parcelF);
    }

    @Override // defpackage.hw4
    public final void getCurrentScreenName(mw4 mw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, mw4Var);
        G(16, parcelF);
    }

    @Override // defpackage.hw4
    public final void getGmpAppId(mw4 mw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, mw4Var);
        G(21, parcelF);
    }

    @Override // defpackage.hw4
    public final void getMaxUserProperties(String str, mw4 mw4Var) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        ku4.c(parcelF, mw4Var);
        G(6, parcelF);
    }

    @Override // defpackage.hw4
    public final void getUserProperties(String str, String str2, boolean z, mw4 mw4Var) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ClassLoader classLoader = ku4.a;
        parcelF.writeInt(z ? 1 : 0);
        ku4.c(parcelF, mw4Var);
        G(5, parcelF);
    }

    @Override // defpackage.hw4
    public final void initialize(kn1 kn1Var, ix4 ix4Var, long j) {
        Parcel parcelF = F();
        ku4.c(parcelF, kn1Var);
        ku4.b(parcelF, ix4Var);
        parcelF.writeLong(j);
        G(1, parcelF);
    }

    @Override // defpackage.hw4
    public final void initializeWithElapsedTime(kn1 kn1Var, ix4 ix4Var, long j, long j2) {
        Parcel parcelF = F();
        ku4.c(parcelF, kn1Var);
        ku4.b(parcelF, ix4Var);
        parcelF.writeLong(j);
        parcelF.writeLong(j2);
        G(60, parcelF);
    }

    @Override // defpackage.hw4
    public final void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j, long j2) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ku4.b(parcelF, bundle);
        parcelF.writeInt(z ? 1 : 0);
        parcelF.writeInt(1);
        parcelF.writeLong(j);
        parcelF.writeLong(j2);
        G(59, parcelF);
    }

    @Override // defpackage.hw4
    public final void logHealthData(int i, String str, kn1 kn1Var, kn1 kn1Var2, kn1 kn1Var3) {
        Parcel parcelF = F();
        parcelF.writeInt(5);
        parcelF.writeString("Error with data collection. Data lost.");
        ku4.c(parcelF, kn1Var);
        ku4.c(parcelF, kn1Var2);
        ku4.c(parcelF, kn1Var3);
        G(33, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivityCreatedByScionActivityInfo(jx4 jx4Var, Bundle bundle, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        ku4.b(parcelF, bundle);
        parcelF.writeLong(j);
        G(53, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivityDestroyedByScionActivityInfo(jx4 jx4Var, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        parcelF.writeLong(j);
        G(54, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivityPausedByScionActivityInfo(jx4 jx4Var, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        parcelF.writeLong(j);
        G(55, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivityResumedByScionActivityInfo(jx4 jx4Var, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        parcelF.writeLong(j);
        G(56, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivitySaveInstanceStateByScionActivityInfo(jx4 jx4Var, mw4 mw4Var, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        ku4.c(parcelF, mw4Var);
        parcelF.writeLong(j);
        G(57, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivityStartedByScionActivityInfo(jx4 jx4Var, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        parcelF.writeLong(j);
        G(51, parcelF);
    }

    @Override // defpackage.hw4
    public final void onActivityStoppedByScionActivityInfo(jx4 jx4Var, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        parcelF.writeLong(j);
        G(52, parcelF);
    }

    @Override // defpackage.hw4
    public final void registerOnMeasurementEventListener(tw4 tw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, tw4Var);
        G(35, parcelF);
    }

    @Override // defpackage.hw4
    public final void retrieveAndUploadBatches(qw4 qw4Var) {
        Parcel parcelF = F();
        ku4.c(parcelF, qw4Var);
        G(58, parcelF);
    }

    @Override // defpackage.hw4
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, bundle);
        parcelF.writeLong(j);
        G(8, parcelF);
    }

    @Override // defpackage.hw4
    public final void setCurrentScreenByScionActivityInfo(jx4 jx4Var, String str, String str2, long j) {
        Parcel parcelF = F();
        ku4.b(parcelF, jx4Var);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        parcelF.writeLong(j);
        G(50, parcelF);
    }

    @Override // defpackage.hw4
    public final void setDataCollectionEnabled(boolean z) {
        throw null;
    }

    @Override // defpackage.hw4
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel parcelF = F();
        ku4.b(parcelF, bundle);
        G(42, parcelF);
    }

    @Override // defpackage.hw4
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel parcelF = F();
        ClassLoader classLoader = ku4.a;
        parcelF.writeInt(z ? 1 : 0);
        parcelF.writeLong(j);
        G(11, parcelF);
    }

    @Override // defpackage.hw4
    public final void setUserProperty(String str, String str2, kn1 kn1Var, boolean z, long j) {
        Parcel parcelF = F();
        parcelF.writeString(null);
        parcelF.writeString(str2);
        ku4.c(parcelF, kn1Var);
        parcelF.writeInt(0);
        parcelF.writeLong(j);
        G(4, parcelF);
    }
}
