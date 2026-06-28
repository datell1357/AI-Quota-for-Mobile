package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class wg3 extends rd2 {
    public final boolean b;
    public final vf2 c;
    public final zp1 d;
    public final boolean e;
    public final q93 f;
    public final ne1 g;

    public wg3(ne1 ne1Var, zp1 zp1Var, vf2 vf2Var, q93 q93Var, boolean z, boolean z2) {
        this.b = z;
        this.c = vf2Var;
        this.d = zp1Var;
        this.e = z2;
        this.f = q93Var;
        this.g = ne1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        yg3 yg3Var = new yg3(this.g, this.d, this.c, this.f, false, this.e);
        yg3Var.Y = this.b;
        return yg3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wg3.class != obj.getClass()) {
            return false;
        }
        wg3 wg3Var = (wg3) obj;
        return this.b == wg3Var.b && nt1.g(this.c, wg3Var.c) && nt1.g(this.d, wg3Var.d) && this.e == wg3Var.e && nt1.g(this.f, wg3Var.f) && this.g == wg3Var.g;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        yg3 yg3Var = (yg3) md2Var;
        boolean z = yg3Var.Y;
        boolean z2 = this.b;
        if (z != z2) {
            yg3Var.Y = z2;
            w80.A(yg3Var);
        }
        yg3Var.Q0(this.g, this.d, this.c, this.f, false, this.e);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.b) * 31;
        vf2 vf2Var = this.c;
        int iHashCode2 = (iHashCode + (vf2Var != null ? vf2Var.hashCode() : 0)) * 31;
        zp1 zp1Var = this.d;
        int iN = xw1.n(xw1.n((iHashCode2 + (zp1Var != null ? zp1Var.hashCode() : 0)) * 31, false, 31), this.e, 31);
        q93 q93Var = this.f;
        return this.g.hashCode() + ((iN + (q93Var != null ? Integer.hashCode(q93Var.a) : 0)) * 31);
    }
}
