package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import defpackage.iv4;
import defpackage.ts4;
import defpackage.tt4;
import defpackage.xs4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzh extends zzn {
    final /* synthetic */ tt4 zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzh(AccountTransferClient accountTransferClient, int i, tt4 tt4Var) {
        super(1609);
        this.zza = tt4Var;
    }

    @Override // com.google.android.gms.auth.api.accounttransfer.zzl
    public final void zza(xs4 xs4Var) {
        ts4 ts4Var = this.zzc;
        tt4 tt4Var = this.zza;
        Parcel parcelZza = xs4Var.zza();
        iv4.d(parcelZza, ts4Var);
        iv4.c(parcelZza, tt4Var);
        xs4Var.zzc(8, parcelZza);
    }
}
