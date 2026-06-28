package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import defpackage.ct4;
import defpackage.iv4;
import defpackage.xs4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zze extends zzl {
    final /* synthetic */ ct4 zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zze(AccountTransferClient accountTransferClient, int i, ct4 ct4Var) {
        super(1607, null);
        this.zza = ct4Var;
    }

    @Override // com.google.android.gms.auth.api.accounttransfer.zzl
    public final void zza(xs4 xs4Var) {
        zzd zzdVar = new zzd(this, this);
        ct4 ct4Var = this.zza;
        Parcel parcelZza = xs4Var.zza();
        iv4.d(parcelZza, zzdVar);
        iv4.c(parcelZza, ct4Var);
        xs4Var.zzc(6, parcelZza);
    }
}
