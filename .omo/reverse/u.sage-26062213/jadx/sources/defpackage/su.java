package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class su implements Iterator {
    public final jj1 n;
    public final uu o;
    public ru p;
    public b40 q;
    public ky0 r;

    public su(jj1 jj1Var) {
        uu uuVar = uu.a;
        this.p = null;
        this.q = null;
        this.r = null;
        w80.L(jj1Var, "Header iterator");
        this.n = jj1Var;
        this.o = uuVar;
    }

    public final void b() {
        ru ruVarB;
        loop0: while (true) {
            jj1 jj1Var = this.n;
            if (!jj1Var.hasNext() && this.r == null) {
                return;
            }
            ky0 ky0Var = this.r;
            if (ky0Var == null || ky0Var.a()) {
                this.r = null;
                this.q = null;
                while (true) {
                    if (!jj1Var.hasNext()) {
                        break;
                    }
                    gj1 gj1VarA = jj1Var.a();
                    if (gj1VarA instanceof cz) {
                        cz czVar = (cz) gj1VarA;
                        b40 b40Var = czVar.o;
                        this.q = b40Var;
                        ky0 ky0Var2 = new ky0(0, b40Var.o);
                        this.r = ky0Var2;
                        ky0Var2.b(czVar.p);
                        break;
                    }
                    String value = gj1VarA.getValue();
                    if (value != null) {
                        b40 b40Var2 = new b40(value.length());
                        this.q = b40Var2;
                        b40Var2.b(value);
                        this.r = new ky0(0, this.q.o);
                        break;
                    }
                }
            }
            if (this.r != null) {
                while (!this.r.a()) {
                    b40 b40Var3 = this.q;
                    ky0 ky0Var3 = this.r;
                    this.o.getClass();
                    ruVarB = uu.b(b40Var3, ky0Var3);
                    if (!ruVarB.n.isEmpty() || ruVarB.o != null) {
                        break loop0;
                    }
                }
                if (this.r.a()) {
                    this.r = null;
                    this.q = null;
                }
            }
        }
        this.p = ruVarB;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.p == null) {
            b();
        }
        return this.p != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.p == null) {
            b();
        }
        ru ruVar = this.p;
        if (ruVar != null) {
            this.p = null;
            return ruVar;
        }
        q73.l("No more header elements available");
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
