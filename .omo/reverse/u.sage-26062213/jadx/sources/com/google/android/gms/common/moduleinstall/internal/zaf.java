package com.google.android.gms.common.moduleinstall.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;
import defpackage.ki4;
import defpackage.oi4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zaf extends ki4 implements IInterface {
    public zaf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.moduleinstall.internal.IModuleInstallService");
    }

    public final void zae(zae zaeVar, ApiFeatureRequest apiFeatureRequest) {
        Parcel parcelZaa = zaa();
        oi4.d(parcelZaa, zaeVar);
        oi4.c(parcelZaa, apiFeatureRequest);
        zac(1, parcelZaa);
    }

    public final void zaf(zae zaeVar, ApiFeatureRequest apiFeatureRequest) {
        Parcel parcelZaa = zaa();
        oi4.d(parcelZaa, zaeVar);
        oi4.c(parcelZaa, apiFeatureRequest);
        zac(3, parcelZaa);
    }

    public final void zag(zae zaeVar, ApiFeatureRequest apiFeatureRequest, zah zahVar) {
        Parcel parcelZaa = zaa();
        oi4.d(parcelZaa, zaeVar);
        oi4.c(parcelZaa, apiFeatureRequest);
        oi4.d(parcelZaa, zahVar);
        zac(2, parcelZaa);
    }

    public final void zah(IStatusCallback iStatusCallback, ApiFeatureRequest apiFeatureRequest) {
        Parcel parcelZaa = zaa();
        oi4.d(parcelZaa, iStatusCallback);
        oi4.c(parcelZaa, apiFeatureRequest);
        zac(4, parcelZaa);
    }

    public final void zai(IStatusCallback iStatusCallback, zah zahVar) {
        Parcel parcelZaa = zaa();
        oi4.d(parcelZaa, iStatusCallback);
        oi4.d(parcelZaa, zahVar);
        zac(6, parcelZaa);
    }
}
