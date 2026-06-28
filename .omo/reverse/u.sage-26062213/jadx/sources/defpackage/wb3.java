package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wb3 extends zb3 implements Iterator {
    public xb3 n;
    public xb3 o;
    public final /* synthetic */ int p;

    public wb3(xb3 xb3Var, xb3 xb3Var2, int i) {
        this.p = i;
        this.n = xb3Var2;
        this.o = xb3Var;
    }

    @Override // defpackage.zb3
    public final void b(xb3 xb3Var) {
        xb3 xb3Var2;
        xb3 xb3VarC = null;
        if (this.n == xb3Var && xb3Var == this.o) {
            this.o = null;
            this.n = null;
        }
        xb3 xb3Var3 = this.n;
        if (xb3Var3 == xb3Var) {
            switch (this.p) {
                case 0:
                    xb3Var2 = xb3Var3.q;
                    break;
                default:
                    xb3Var2 = xb3Var3.p;
                    break;
            }
            this.n = xb3Var2;
        }
        xb3 xb3Var4 = this.o;
        if (xb3Var4 == xb3Var) {
            xb3 xb3Var5 = this.n;
            if (xb3Var4 != xb3Var5 && xb3Var5 != null) {
                xb3VarC = c(xb3Var4);
            }
            this.o = xb3VarC;
        }
    }

    public final xb3 c(xb3 xb3Var) {
        switch (this.p) {
            case 0:
                return xb3Var.p;
            default:
                return xb3Var.q;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        xb3 xb3Var = this.o;
        xb3 xb3Var2 = this.n;
        this.o = (xb3Var == xb3Var2 || xb3Var2 == null) ? null : c(xb3Var);
        return xb3Var;
    }
}
