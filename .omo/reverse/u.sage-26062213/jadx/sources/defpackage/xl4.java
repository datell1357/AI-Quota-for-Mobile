package defpackage;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xl4 extends AbstractSet {
    public final int n;
    public final /* synthetic */ yl4 o;

    public xl4(yl4 yl4Var, int i) {
        this.o = yl4Var;
        this.n = i;
    }

    public final int a() {
        int i = this.n;
        if (i == -1) {
            return 0;
        }
        return this.o.o[i];
    }

    public final int c() {
        return this.o.o[this.n + 1];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return Arrays.binarySearch(this.o.n, a(), c(), obj, this.n == -1 ? yl4.s : zl4.b) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new wl4(this, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return c() - a();
    }
}
