package defpackage;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lf2 implements Iterator {
    public final up3 n;
    public final Iterator o;
    public jf2 p;
    public int q;
    public int r;
    public boolean s;

    public lf2(up3 up3Var, Iterator it) {
        this.n = up3Var;
        this.o = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.q > 0 || this.o.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        if (this.q == 0) {
            jf2 jf2Var = (jf2) this.o.next();
            this.p = jf2Var;
            int iA = jf2Var.a();
            this.q = iA;
            this.r = iA;
        }
        this.q--;
        this.s = true;
        jf2 jf2Var2 = this.p;
        Objects.requireNonNull(jf2Var2);
        return jf2Var2.b();
    }

    @Override // java.util.Iterator
    public final void remove() {
        n44.b0(this.s, "no calls to next() since the last call to remove()");
        if (this.r == 1) {
            this.o.remove();
        } else {
            jf2 jf2Var = this.p;
            Objects.requireNonNull(jf2Var);
            this.n.remove(jf2Var.b());
        }
        this.r--;
        this.s = false;
    }
}
