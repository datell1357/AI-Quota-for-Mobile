package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import defpackage.os4;
import defpackage.pw3;
import defpackage.xs4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
abstract class zzl extends TaskApiCall {
    protected pw3 zzb;

    public /* synthetic */ zzl(int i, zzk zzkVar) {
        super(null, false, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient, pw3 pw3Var) {
        this.zzb = pw3Var;
        zza((xs4) ((os4) anyClient).getService());
    }

    public abstract void zza(xs4 xs4Var);
}
