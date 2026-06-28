package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class xp1 extends rd2 {
    public final xs1 b;
    public final zp1 c;

    public xp1(xs1 xs1Var, zp1 zp1Var) {
        this.b = xs1Var;
        this.c = zp1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        jr0 jr0VarA = this.c.a(this.b);
        yp1 yp1Var = new yp1();
        yp1Var.D = jr0VarA;
        yp1Var.G0(jr0VarA);
        return yp1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xp1)) {
            return false;
        }
        xp1 xp1Var = (xp1) obj;
        return nt1.g(this.b, xp1Var.b) && nt1.g(this.c, xp1Var.c);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        yp1 yp1Var = (yp1) md2Var;
        jr0 jr0VarA = this.c.a(this.b);
        yp1Var.H0(yp1Var.D);
        yp1Var.D = jr0VarA;
        yp1Var.G0(jr0VarA);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }
}
