package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pu2 implements Iterator, fx1 {
    public final /* synthetic */ int n = 1;
    public final Iterator o;

    public pu2(gu2 gu2Var) {
        k24[] k24VarArr = new k24[8];
        for (int i = 0; i < 8; i++) {
            k24VarArr[i] = new m24(this);
        }
        this.o = new nu2(gu2Var, k24VarArr);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
            case 0:
                return ((nu2) this.o).p;
            default:
                return this.o.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.n) {
            case 0:
                return (Map.Entry) ((nu2) this.o).next();
            default:
                return (fa4) this.o.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                ((nu2) this.o).remove();
                return;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public pu2(da4 da4Var) {
        this.o = da4Var.w.iterator();
    }
}
