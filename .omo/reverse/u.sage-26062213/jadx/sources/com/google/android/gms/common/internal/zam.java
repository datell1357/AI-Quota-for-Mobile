package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.ki4;
import defpackage.kn1;
import defpackage.oi4;
import defpackage.yn2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zam extends ki4 implements IInterface {
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final kn1 zae(kn1 kn1Var, zax zaxVar) {
        Parcel parcelZaa = zaa();
        oi4.d(parcelZaa, kn1Var);
        oi4.c(parcelZaa, zaxVar);
        Parcel parcelZab = zab(2, parcelZaa);
        kn1 kn1VarE = yn2.E(parcelZab.readStrongBinder());
        parcelZab.recycle();
        return kn1VarE;
    }
}
