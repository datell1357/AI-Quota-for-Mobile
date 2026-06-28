package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qm4 implements Iterator {
    public final /* synthetic */ Iterator n;
    public final /* synthetic */ Iterator o;

    public qm4(vn4 vn4Var, Iterator it, Iterator it2) {
        this.n = it;
        this.o = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.n.hasNext()) {
            return true;
        }
        return this.o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Iterator it = this.n;
        if (it.hasNext()) {
            return new ss4(((Integer) it.next()).toString());
        }
        Iterator it2 = this.o;
        if (it2.hasNext()) {
            return new ss4((String) it2.next());
        }
        p61.v();
        return null;
    }
}
