package defpackage;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i1 extends j1 implements RandomAccess {
    public final j1 n;
    public final int o;
    public final int p;

    public i1(j1 j1Var, int i, int i2) {
        this.n = j1Var;
        this.o = i;
        on4.n(i, i2, j1Var.a());
        this.p = i2 - i;
    }

    @Override // defpackage.w
    public final int a() {
        return this.p;
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.p;
        if (i < 0 || i >= i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return null;
        }
        return this.n.get(this.o + i);
    }

    @Override // defpackage.j1, java.util.List
    public final List subList(int i, int i2) {
        on4.n(i, i2, this.p);
        int i3 = this.o;
        return new i1(this.n, i + i3, i3 + i2);
    }
}
