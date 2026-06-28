package com.google.android.gms.common.api.internal;

import defpackage.ow3;
import defpackage.pw3;
import defpackage.xo2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zaac implements xo2 {
    final /* synthetic */ pw3 zaa;
    final /* synthetic */ zaad zab;

    public zaac(zaad zaadVar, pw3 pw3Var) {
        this.zab = zaadVar;
        this.zaa = pw3Var;
    }

    @Override // defpackage.xo2
    public final void onComplete(ow3 ow3Var) {
        this.zab.zab.remove(this.zaa);
    }
}
