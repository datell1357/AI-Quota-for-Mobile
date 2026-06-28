package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zbh extends zba {
    final /* synthetic */ zbi zba;

    public zbh(zbi zbiVar) {
        Objects.requireNonNull(zbiVar);
        this.zba = zbiVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbc(Status status) {
        this.zba.setResult(status);
    }
}
