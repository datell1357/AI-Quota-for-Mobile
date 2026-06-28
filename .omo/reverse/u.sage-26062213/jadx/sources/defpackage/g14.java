package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g14 implements Iterator, fx1 {
    public final Iterator n;
    public final /* synthetic */ hw3 o;

    public g14(hw3 hw3Var) {
        this.o = hw3Var;
        this.n = hw3Var.b.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.n.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.o.c.k(this.n.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
