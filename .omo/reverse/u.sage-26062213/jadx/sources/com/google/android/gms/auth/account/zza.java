package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;
import defpackage.iv4;
import defpackage.lt4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zza extends lt4 implements zzb {
    public zza() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override // defpackage.lt4
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int i3 = iv4.a;
            int i4 = parcel.readInt();
            iv4.b(parcel);
            zzc(i4 != 0);
        } else {
            Account account = (Account) iv4.a(parcel, Account.CREATOR);
            iv4.b(parcel);
            zzb(account);
        }
        return true;
    }
}
