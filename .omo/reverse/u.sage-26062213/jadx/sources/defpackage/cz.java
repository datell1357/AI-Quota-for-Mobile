package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cz implements Cloneable, Serializable, gj1 {
    public final String n;
    public final b40 o;
    public final int p;

    public cz(b40 b40Var) {
        w80.L(b40Var, "Char array buffer");
        int iG = b40Var.g(58, 0, b40Var.o);
        if (iG == -1) {
            throw new zs2("Invalid header: ".concat(b40Var.toString()));
        }
        String strI = b40Var.i(0, iG);
        if (strI.isEmpty()) {
            throw new zs2("Invalid header: ".concat(b40Var.toString()));
        }
        this.o = b40Var;
        this.n = strI;
        this.p = iG + 1;
    }

    @Override // defpackage.gj1
    public final ru[] a() {
        b40 b40Var = this.o;
        ky0 ky0Var = new ky0(0, b40Var.o);
        ky0Var.b(this.p);
        uu uuVar = uu.a;
        return uu.a(b40Var, ky0Var);
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.sh2
    public final String getName() {
        return this.n;
    }

    @Override // defpackage.sh2
    public final String getValue() {
        int i = this.p;
        b40 b40Var = this.o;
        return b40Var.i(i, b40Var.o);
    }

    public final String toString() {
        return this.o.toString();
    }
}
