package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zx0 implements Iterator, fx1 {
    public final /* synthetic */ int n = 0;
    public final Iterator o;
    public int p;

    public zx0(ay0 ay0Var) {
        this.o = ay0Var.a.iterator();
        this.p = ay0Var.b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        Iterator it = this.o;
        switch (i) {
            case 0:
                break;
            default:
                return it.hasNext();
        }
        while (this.p > 0 && it.hasNext()) {
            it.next();
            this.p--;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        Iterator it = this.o;
        switch (i) {
            case 0:
                break;
            default:
                int i2 = this.p;
                this.p = i2 + 1;
                if (i2 >= 0) {
                    return new vp1(i2, it.next());
                }
                tv4.S();
                throw null;
        }
        while (this.p > 0 && it.hasNext()) {
            it.next();
            this.p--;
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public zx0(Iterator it) {
        it.getClass();
        this.o = it;
    }
}
