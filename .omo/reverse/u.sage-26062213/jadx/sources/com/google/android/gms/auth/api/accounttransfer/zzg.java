package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import defpackage.iv4;
import defpackage.qs4;
import defpackage.xs4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzg extends zzl {
    final /* synthetic */ qs4 zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(AccountTransferClient accountTransferClient, int i, qs4 qs4Var) {
        super(1608, null);
        this.zza = qs4Var;
    }

    @Override // com.google.android.gms.auth.api.accounttransfer.zzl
    public final void zza(xs4 xs4Var) {
        zzf zzfVar = new zzf(this, this);
        qs4 qs4Var = this.zza;
        Parcel parcelZza = xs4Var.zza();
        iv4.d(parcelZza, zzfVar);
        iv4.c(parcelZza, qs4Var);
        xs4Var.zzc(7, parcelZza);
    }
}
