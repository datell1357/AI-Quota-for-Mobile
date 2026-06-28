package com.google.android.gms.common;

import android.content.Context;
import defpackage.yn2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzw {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;

    public /* synthetic */ zzw(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, byte[] bArr) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z4;
    }

    public final boolean zza() {
        return this.zzc;
    }

    public final zzp zzb(Context context) {
        return new zzp(this.zza, this.zzb, false, new yn2(context), false, true, false);
    }
}
