package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.dq4;
import defpackage.k21;
import defpackage.sr4;
import defpackage.un4;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzaa {
    private String zza = null;
    private long zzb = -1;
    private dq4 zzc;
    private dq4 zzd;

    public zzaa() {
        un4 un4Var = dq4.o;
        sr4 sr4Var = sr4.r;
        this.zzc = sr4Var;
        this.zzd = sr4Var;
    }

    public final zzaa zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzaa zzb(long j) {
        this.zzb = j;
        return this;
    }

    public final zzaa zzc(List list) {
        Preconditions.checkNotNull(list);
        this.zzc = dq4.k(list);
        return this;
    }

    public final zzaa zzd(List list) {
        Preconditions.checkNotNull(list);
        this.zzd = dq4.k(list);
        return this;
    }

    public final zzab zze() {
        if (this.zza == null) {
            k21.n("packageName must be defined");
            return null;
        }
        if (this.zzb < 0) {
            k21.n("minimumStampedVersionNumber must be greater than or equal to 0");
            return null;
        }
        if (!this.zzc.isEmpty() || !this.zzd.isEmpty()) {
            return new zzab(this.zza, this.zzb, this.zzc, this.zzd, null);
        }
        k21.n("Either orderedTestCerts or orderedProdCerts must have at least one cert");
        return null;
    }
}
