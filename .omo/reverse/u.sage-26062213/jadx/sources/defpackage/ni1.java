package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ni1 implements Iterator, fx1 {
    public final un3 n;
    public final int o;
    public int p;
    public final int q;

    public ni1(un3 un3Var, int i, int i2) {
        this.n = un3Var;
        this.o = i2;
        this.p = i;
        this.q = un3Var.f362u;
        if (un3Var.t) {
            wn3.f();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.p < this.o;
    }

    @Override // java.util.Iterator
    public final Object next() {
        un3 un3Var = this.n;
        int i = un3Var.f362u;
        int i2 = this.q;
        if (i != i2) {
            wn3.f();
        }
        int i3 = this.p;
        this.p = un3Var.n[(i3 * 5) + 3] + i3;
        return new vn3(un3Var, i3, i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
