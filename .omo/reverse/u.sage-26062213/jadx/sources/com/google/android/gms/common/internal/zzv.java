package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.kn1;
import defpackage.pk4;
import defpackage.yn2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zzv extends pk4 implements zzx {
    public zzv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final kn1 zzd() {
        Parcel parcelZzB = zzB(1, zza());
        kn1 kn1VarE = yn2.E(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return kn1VarE;
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final int zze() {
        Parcel parcelZzB = zzB(2, zza());
        int i = parcelZzB.readInt();
        parcelZzB.recycle();
        return i;
    }
}
