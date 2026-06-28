package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yb3 extends zb3 implements Iterator {
    public xb3 n;
    public boolean o = true;
    public final /* synthetic */ ac3 p;

    public yb3(ac3 ac3Var) {
        this.p = ac3Var;
    }

    @Override // defpackage.zb3
    public final void b(xb3 xb3Var) {
        xb3 xb3Var2 = this.n;
        if (xb3Var == xb3Var2) {
            xb3 xb3Var3 = xb3Var2.q;
            this.n = xb3Var3;
            this.o = xb3Var3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.o) {
            return this.p.n != null;
        }
        xb3 xb3Var = this.n;
        return (xb3Var == null || xb3Var.p == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.o) {
            this.o = false;
            this.n = this.p.n;
        } else {
            xb3 xb3Var = this.n;
            this.n = xb3Var != null ? xb3Var.p : null;
        }
        return this.n;
    }
}
