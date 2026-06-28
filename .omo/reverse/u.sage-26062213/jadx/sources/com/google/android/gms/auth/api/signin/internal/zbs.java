package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import defpackage.bk4;
import defpackage.hj4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zbs extends hj4 implements IInterface {
    public zbs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    public final void zbc(zbr zbrVar, GoogleSignInOptions googleSignInOptions) {
        Parcel parcelZba = zba();
        bk4.c(parcelZba, zbrVar);
        bk4.b(parcelZba, googleSignInOptions);
        zbb(101, parcelZba);
    }

    public final void zbd(zbr zbrVar, GoogleSignInOptions googleSignInOptions) {
        Parcel parcelZba = zba();
        bk4.c(parcelZba, zbrVar);
        bk4.b(parcelZba, googleSignInOptions);
        zbb(102, parcelZba);
    }

    public final void zbe(zbr zbrVar, GoogleSignInOptions googleSignInOptions) {
        Parcel parcelZba = zba();
        bk4.c(parcelZba, zbrVar);
        bk4.b(parcelZba, googleSignInOptions);
        zbb(103, parcelZba);
    }
}
