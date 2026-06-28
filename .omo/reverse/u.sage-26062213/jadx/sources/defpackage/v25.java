package defpackage;

import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v25 implements ListIterator {
    public final ListIterator n;

    public v25(z25 z25Var, int i) {
        this.n = z25Var.n.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.n.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.n.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.n.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.n.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.n.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.n.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
