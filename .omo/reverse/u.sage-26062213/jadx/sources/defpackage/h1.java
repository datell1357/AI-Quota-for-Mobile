package defpackage;

import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h1 extends g1 implements ListIterator {
    public final /* synthetic */ j1 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(j1 j1Var, int i) {
        super(0, j1Var);
        this.q = j1Var;
        int iA = j1Var.a();
        if (i < 0 || i > iA) {
            mk0.h(di0.p(i, iA, "index: ", ", size: "));
            throw null;
        }
        this.o = i;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.o > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.o;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            p61.v();
            return null;
        }
        int i = this.o - 1;
        this.o = i;
        return this.q.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.o - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
