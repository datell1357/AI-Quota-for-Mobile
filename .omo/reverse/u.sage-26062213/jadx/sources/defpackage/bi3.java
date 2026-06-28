package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bi3 implements Iterator, dh0, fx1 {
    public int n;
    public Object o;
    public dh0 p;

    public final RuntimeException b() {
        int i = this.n;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.n);
    }

    public final void d(Object obj, e83 e83Var) {
        this.o = obj;
        this.n = 3;
        this.p = e83Var;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return d01.n;
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        gg4.T(obj);
        this.n = 4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        while (true) {
            i = this.n;
            if (i != 0) {
                break;
            }
            this.n = 5;
            dh0 dh0Var = this.p;
            dh0Var.getClass();
            this.p = null;
            dh0Var.g(t64.a);
        }
        if (i == 1) {
            throw null;
        }
        if (i == 2 || i == 3) {
            return true;
        }
        if (i == 4) {
            return false;
        }
        throw b();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            p61.v();
            return null;
        }
        if (i == 2) {
            this.n = 1;
            throw null;
        }
        if (i != 3) {
            throw b();
        }
        this.n = 0;
        Object obj = this.o;
        this.o = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
