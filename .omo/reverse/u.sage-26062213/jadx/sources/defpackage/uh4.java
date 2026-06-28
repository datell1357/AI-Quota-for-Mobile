package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uh4 extends s13 implements Serializable {
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;

    public final int a() {
        int i = this.o;
        int i2 = i ^ (i >>> 2);
        this.o = this.p;
        this.p = this.q;
        this.q = this.r;
        int i3 = this.s;
        this.r = i3;
        int i4 = ((i2 ^ (i2 << 1)) ^ i3) ^ (i3 << 4);
        this.s = i4;
        int i5 = this.t + 362437;
        this.t = i5;
        return i4 + i5;
    }
}
