package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vn3 implements bc0, Iterable, fx1 {
    public final un3 n;
    public final int o;
    public final int p;

    public vn3(un3 un3Var, int i, int i2) {
        this.n = un3Var;
        this.o = i;
        this.p = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof vn3)) {
            return false;
        }
        vn3 vn3Var = (vn3) obj;
        return vn3Var.o == this.o && vn3Var.p == this.p && vn3Var.n == this.n;
    }

    public final int hashCode() {
        return (this.n.hashCode() * 31) + this.o;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        un3 un3Var = this.n;
        if (un3Var.f362u != this.p) {
            wn3.f();
        }
        int i = this.o;
        un3Var.h(i);
        return new ni1(un3Var, i + 1, un3Var.n[(i * 5) + 3] + i);
    }
}
