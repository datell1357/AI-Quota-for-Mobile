package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import defpackage.ft4;
import defpackage.iv4;
import defpackage.ts4;
import defpackage.xs4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzc extends zzn {
    final /* synthetic */ ft4 zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(AccountTransferClient accountTransferClient, int i, ft4 ft4Var) {
        super(1606);
        this.zza = ft4Var;
    }

    @Override // com.google.android.gms.auth.api.accounttransfer.zzl
    public final void zza(xs4 xs4Var) {
        ts4 ts4Var = this.zzc;
        ft4 ft4Var = this.zza;
        Parcel parcelZza = xs4Var.zza();
        iv4.d(parcelZza, ts4Var);
        iv4.c(parcelZza, ft4Var);
        xs4Var.zzc(5, parcelZza);
    }
}
