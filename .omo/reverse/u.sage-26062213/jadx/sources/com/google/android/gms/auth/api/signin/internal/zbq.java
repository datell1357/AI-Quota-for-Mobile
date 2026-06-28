package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import defpackage.bk4;
import defpackage.sj4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zbq extends sj4 implements zbr {
    public zbq() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // defpackage.sj4
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 101:
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) bk4.a(parcel, GoogleSignInAccount.CREATOR);
                Status status = (Status) bk4.a(parcel, Status.CREATOR);
                bk4.d(parcel);
                zbb(googleSignInAccount, status);
                break;
            case 102:
                Status status2 = (Status) bk4.a(parcel, Status.CREATOR);
                bk4.d(parcel);
                zbc(status2);
                break;
            case 103:
                Status status3 = (Status) bk4.a(parcel, Status.CREATOR);
                bk4.d(parcel);
                zbd(status3);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
