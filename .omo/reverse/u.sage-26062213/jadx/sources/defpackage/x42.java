package defpackage;

import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x42 implements ListIterator {
    public boolean n;
    public final /* synthetic */ ListIterator o;
    public final /* synthetic */ y42 p;

    public x42(y42 y42Var, ListIterator listIterator) {
        this.o = listIterator;
        this.p = y42Var;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        ListIterator listIterator = this.o;
        listIterator.add(obj);
        listIterator.previous();
        this.n = false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.o.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.o.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        ListIterator listIterator = this.o;
        if (listIterator.hasPrevious()) {
            this.n = true;
            return listIterator.previous();
        }
        p61.v();
        return null;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.p.a(this.o.nextIndex());
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        ListIterator listIterator = this.o;
        if (listIterator.hasNext()) {
            this.n = true;
            return listIterator.next();
        }
        p61.v();
        return null;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return nextIndex() - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        n44.b0(this.n, "no calls to next() since the last call to remove()");
        this.o.remove();
        this.n = false;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        n44.a0(this.n);
        this.o.set(obj);
    }
}
