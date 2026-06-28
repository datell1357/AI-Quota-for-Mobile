package com.google.android.gms.common.internal;

import android.content.Intent;
import defpackage.lc1;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zae extends zag {
    final /* synthetic */ Intent zaa;
    final /* synthetic */ lc1 zab;
    final /* synthetic */ int zac;

    public zae(Intent intent, lc1 lc1Var, int i) {
        this.zaa = intent;
        this.zab = lc1Var;
        this.zac = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.zaa;
        if (intent != null) {
            this.zab.startActivityForResult(intent, this.zac);
        }
    }
}
