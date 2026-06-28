package com.google.android.gms.common.api.internal;

import defpackage.bj4;
import defpackage.ni4;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zaar extends ni4 {
    private final WeakReference zaa;

    public zaar(zaaw zaawVar) {
        this.zaa = new WeakReference(zaawVar);
    }

    @Override // defpackage.qi4
    public final void zab(bj4 bj4Var) {
        zaaw zaawVar = (zaaw) this.zaa.get();
        if (zaawVar == null) {
            return;
        }
        zaawVar.zaa.zal(new zaaq(this, zaawVar, zaawVar, bj4Var));
    }
}
