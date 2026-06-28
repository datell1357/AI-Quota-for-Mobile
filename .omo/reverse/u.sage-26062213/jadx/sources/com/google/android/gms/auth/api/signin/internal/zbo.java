package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import defpackage.sj4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zbo extends sj4 implements zbp {
    public zbo() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // defpackage.sj4
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zbb();
        } else {
            if (i != 2) {
                return false;
            }
            zbc();
        }
        return true;
    }
}
