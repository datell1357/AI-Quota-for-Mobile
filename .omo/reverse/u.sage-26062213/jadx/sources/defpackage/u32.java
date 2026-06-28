package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u32 implements Iterator {
    public w32 n;
    public w32 o = null;
    public int p;
    public final /* synthetic */ x32 q;
    public final /* synthetic */ int r;

    public u32(x32 x32Var, int i) {
        this.r = i;
        this.q = x32Var;
        this.n = x32Var.s.q;
        this.p = x32Var.r;
    }

    public final Object b() {
        return c();
    }

    public final w32 c() {
        w32 w32Var = this.n;
        x32 x32Var = this.q;
        if (w32Var == x32Var.s) {
            p61.v();
            return null;
        }
        if (x32Var.r != this.p) {
            throw new ConcurrentModificationException();
        }
        this.n = w32Var.q;
        this.o = w32Var;
        return w32Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.n != this.q.s;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.r) {
            case 1:
                return c().s;
            default:
                return b();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        w32 w32Var = this.o;
        if (w32Var == null) {
            throw new IllegalStateException();
        }
        x32 x32Var = this.q;
        x32Var.d(w32Var, true);
        this.o = null;
        this.p = x32Var.r;
    }
}
