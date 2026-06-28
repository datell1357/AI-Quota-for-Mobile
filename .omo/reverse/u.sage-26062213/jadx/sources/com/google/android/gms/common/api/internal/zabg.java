package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
abstract class zabg {
    private final zabf zaa;

    public zabg(zabf zabfVar) {
        this.zaa = zabfVar;
    }

    public abstract void zaa();

    public final void zab(zabi zabiVar) {
        zabiVar.zai.lock();
        try {
            if (zabiVar.zan == this.zaa) {
                zaa();
            }
        } finally {
            zabiVar.zai.unlock();
        }
    }
}
