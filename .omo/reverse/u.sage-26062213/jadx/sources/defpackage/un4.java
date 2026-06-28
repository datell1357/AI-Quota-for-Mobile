package defpackage;

import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class un4 extends y64 implements ListIterator {
    public final int o;
    public int p;
    public final dq4 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public un4(dq4 dq4Var, int i) {
        super(2);
        int size = dq4Var.size();
        rp4.b(i, size);
        this.o = size;
        this.p = i;
        this.q = dq4Var;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Object b(int i) {
        return this.q.get(i);
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.p < this.o;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.p > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        int i = this.p;
        this.p = i + 1;
        return b(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.p;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            p61.v();
            return null;
        }
        int i = this.p - 1;
        this.p = i;
        return b(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.p - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
