package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kp1 extends j1 {
    public final s1 n;
    public final int o;
    public final int p;

    public kp1(s1 s1Var, int i, int i2) {
        this.n = s1Var;
        this.o = i;
        zf5.r(i, i2, s1Var.a());
        this.p = i2 - i;
    }

    @Override // defpackage.w
    public final int a() {
        return this.p;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zf5.o(i, this.p);
        return this.n.get(this.o + i);
    }

    @Override // defpackage.j1, java.util.List
    public final List subList(int i, int i2) {
        zf5.r(i, i2, this.p);
        int i3 = this.o;
        return new kp1(this.n, i + i3, i3 + i2);
    }
}
