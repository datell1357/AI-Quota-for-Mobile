package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Status;
import defpackage.js4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzm extends js4 {
    final /* synthetic */ zzn zza;

    public zzm(zzn zznVar) {
        this.zza = zznVar;
    }

    @Override // defpackage.ts4
    public final void zzd(Status status) {
        this.zza.zzb.a(new AccountTransferException(status));
    }

    @Override // defpackage.js4, defpackage.ts4
    public final void zze() {
        this.zza.zzb.b(null);
    }
}
