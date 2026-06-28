package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class b60 extends rd2 {
    public final vf2 b;
    public final zp1 c;
    public final boolean d;
    public final boolean e;
    public final q93 f;
    public final ne1 g;

    public b60(ne1 ne1Var, zp1 zp1Var, vf2 vf2Var, q93 q93Var, boolean z, boolean z2) {
        this.b = vf2Var;
        this.c = zp1Var;
        this.d = z;
        this.e = z2;
        this.f = q93Var;
        this.g = ne1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new e60(this.g, this.c, this.b, this.f, this.d, this.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b60.class != obj.getClass()) {
            return false;
        }
        b60 b60Var = (b60) obj;
        return nt1.g(this.b, b60Var.b) && nt1.g(this.c, b60Var.c) && this.d == b60Var.d && this.e == b60Var.e && nt1.g(this.f, b60Var.f) && this.g == b60Var.g;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((e60) md2Var).Q0(this.g, this.c, this.b, this.f, this.d, this.e);
    }

    public final int hashCode() {
        vf2 vf2Var = this.b;
        int iHashCode = (vf2Var != null ? vf2Var.hashCode() : 0) * 31;
        zp1 zp1Var = this.c;
        int iN = xw1.n(xw1.n((iHashCode + (zp1Var != null ? zp1Var.hashCode() : 0)) * 31, this.d, 31), this.e, 961);
        q93 q93Var = this.f;
        return this.g.hashCode() + ((iN + (q93Var != null ? Integer.hashCode(q93Var.a) : 0)) * 31);
    }
}
