package defpackage;

import java.util.AbstractCollection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p62 extends AbstractCollection {
    public final /* synthetic */ v62 n;

    public p62(v62 v62Var) {
        this.n = v62Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.n.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.n.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.n.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new c62(this.n, 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.n.size();
    }
}
