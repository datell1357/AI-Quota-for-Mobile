package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class k24 implements Iterator, fx1 {
    public Object[] n = j24.e.d;
    public int o;
    public int p;

    public final void b(Object[] objArr, int i, int i2) {
        this.n = objArr;
        this.o = i;
        this.p = i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.p < this.o;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
