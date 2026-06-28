package com.google.android.gms.auth.api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class zbc {
    protected Boolean zba;
    protected String zbb;

    public zbc(zbd zbdVar) {
        this.zba = Boolean.FALSE;
        this.zba = Boolean.valueOf(zbdVar.zbb());
        this.zbb = zbdVar.zbc();
    }

    public final zbc zba(String str) {
        this.zbb = str;
        return this;
    }

    public zbc() {
        this.zba = Boolean.FALSE;
    }
}
