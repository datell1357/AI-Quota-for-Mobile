package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class if2 implements Iterator {
    public final /* synthetic */ int n = 0;
    public final Iterator o;

    public if2(zt4 zt4Var) {
        this.o = zt4Var.n.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
        }
        return this.o.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.n) {
        }
        return (String) this.o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                this.o.remove();
                return;
            case 1:
                throw new UnsupportedOperationException("Remove not supported");
            default:
                throw new UnsupportedOperationException();
        }
    }

    public if2(z25 z25Var) {
        this.o = z25Var.n.iterator();
    }

    public if2(Iterator it) {
        it.getClass();
        this.o = it;
    }
}
