package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class es2 implements hd4 {
    public final zr2 a;

    public es2(zr2 zr2Var) {
        this.a = zr2Var;
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        return as0Var.N(this.a.c());
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        return as0Var.N(this.a.d());
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        return as0Var.N(this.a.b(hy1Var));
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        return as0Var.N(this.a.a(hy1Var));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof es2) {
            return nt1.g(((es2) obj).a, this.a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        zr2 zr2Var = this.a;
        hy1 hy1Var = hy1.n;
        float fA = zr2Var.a(hy1Var);
        float fD = zr2Var.d();
        float fB = zr2Var.b(hy1Var);
        float fC = zr2Var.c();
        String strC = cw0.c(fA);
        String strC2 = cw0.c(fD);
        return xw1.t(di0.B("PaddingValues(", strC, ", ", strC2, ", "), cw0.c(fB), ", ", cw0.c(fC), ")");
    }
}
