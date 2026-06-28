package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class uz3 extends rd2 {
    public final boolean b;
    public final vf2 c;
    public final boolean d;
    public final q93 e;
    public final pe1 f;

    public uz3(boolean z, vf2 vf2Var, boolean z2, q93 q93Var, pe1 pe1Var) {
        this.b = z;
        this.c = vf2Var;
        this.d = z2;
        this.e = q93Var;
        this.f = pe1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new vz3(this.b, this.c, this.d, this.e, this.f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || uz3.class != obj.getClass()) {
            return false;
        }
        uz3 uz3Var = (uz3) obj;
        return this.b == uz3Var.b && nt1.g(this.c, uz3Var.c) && this.d == uz3Var.d && this.e.equals(uz3Var.e) && this.f == uz3Var.f;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        vz3 vz3Var = (vz3) md2Var;
        boolean z = vz3Var.Y;
        boolean z2 = this.b;
        if (z != z2) {
            vz3Var.Y = z2;
            w80.A(vz3Var);
        }
        vz3Var.Z = this.f;
        vz3Var.Q0(vz3Var.a0, null, this.c, this.e, false, this.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.b) * 31;
        vf2 vf2Var = this.c;
        return this.f.hashCode() + xw1.j(this.e.a, xw1.n(xw1.n((iHashCode + (vf2Var != null ? vf2Var.hashCode() : 0)) * 961, false, 31), this.d, 31), 31);
    }
}
