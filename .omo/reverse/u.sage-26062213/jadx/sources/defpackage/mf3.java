package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class mf3 extends rd2 {
    public final xf3 b;
    public final hr2 c;
    public final boolean d;
    public final to0 e;
    public final vf2 f;
    public final boolean g;
    public final wa h;

    public mf3(wa waVar, to0 to0Var, vf2 vf2Var, hr2 hr2Var, xf3 xf3Var, boolean z, boolean z2) {
        this.b = xf3Var;
        this.c = hr2Var;
        this.d = z;
        this.e = to0Var;
        this.f = vf2Var;
        this.g = z2;
        this.h = waVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        nf3 nf3Var = new nf3();
        nf3Var.D = this.b;
        nf3Var.E = this.c;
        nf3Var.F = this.d;
        nf3Var.G = this.e;
        nf3Var.H = this.f;
        nf3Var.I = this.g;
        nf3Var.J = this.h;
        return nf3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || mf3.class != obj.getClass()) {
            return false;
        }
        mf3 mf3Var = (mf3) obj;
        return nt1.g(this.b, mf3Var.b) && this.c == mf3Var.c && this.d == mf3Var.d && nt1.g(this.e, mf3Var.e) && nt1.g(this.f, mf3Var.f) && this.g == mf3Var.g && nt1.g(this.h, mf3Var.h);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((nf3) md2Var).L0(this.h, this.e, this.f, this.c, this.b, this.g, this.d);
    }

    public final int hashCode() {
        int iN = xw1.n(xw1.n((this.c.hashCode() + (this.b.hashCode() * 31)) * 31, this.d, 31), false, 31);
        to0 to0Var = this.e;
        int iHashCode = (iN + (to0Var != null ? to0Var.hashCode() : 0)) * 31;
        vf2 vf2Var = this.f;
        int iN2 = xw1.n((iHashCode + (vf2Var != null ? vf2Var.hashCode() : 0)) * 961, this.g, 31);
        wa waVar = this.h;
        return iN2 + (waVar != null ? waVar.hashCode() : 0);
    }
}
