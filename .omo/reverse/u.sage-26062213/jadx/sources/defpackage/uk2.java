package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class uk2 extends rd2 {
    public final tk2 b;

    public uk2(tk2 tk2Var) {
        this.b = tk2Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new xk2(cd.a, this.b);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof uk2) && ((uk2) obj).b == this.b;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        xk2 xk2Var = (xk2) md2Var;
        xk2Var.B = cd.a;
        tk2 tk2Var = xk2Var.C;
        if (tk2Var.a == xk2Var) {
            tk2Var.a = null;
        }
        tk2 tk2Var2 = this.b;
        if (tk2Var2 != tk2Var) {
            xk2Var.C = tk2Var2;
        }
        if (xk2Var.A) {
            tk2 tk2Var3 = xk2Var.C;
            tk2Var3.a = xk2Var;
            tk2Var3.b = null;
            xk2Var.D = null;
            tk2Var3.c = new je(10, xk2Var);
            tk2Var3.d = xk2Var.u0();
        }
    }

    public final int hashCode() {
        return this.b.hashCode() + (cd.a.hashCode() * 31);
    }
}
