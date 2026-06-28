package com.google.android.gms.common.api.internal;

import defpackage.bj4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zacr implements Runnable {
    final /* synthetic */ bj4 zaa;
    final /* synthetic */ zact zab;

    public zacr(zact zactVar, bj4 bj4Var) {
        this.zab = zactVar;
        this.zaa = bj4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zact.zad(this.zab, this.zaa);
    }
}
