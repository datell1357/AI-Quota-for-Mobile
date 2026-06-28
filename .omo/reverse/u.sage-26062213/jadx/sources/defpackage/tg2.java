package defpackage;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tg2 implements ListIterator, fx1 {
    public final List n;
    public int o;

    public tg2(int i, List list) {
        this.n = list;
        this.o = i;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        this.n.add(this.o, obj);
        this.o++;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.o < this.n.size();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.o > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i = this.o;
        this.o = i + 1;
        return this.n.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.o;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        int i = this.o - 1;
        this.o = i;
        return this.n.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.o - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i = this.o - 1;
        this.o = i;
        this.n.remove(i);
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        this.n.set(this.o, obj);
    }
}
