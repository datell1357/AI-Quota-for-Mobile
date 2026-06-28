package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class c11 extends rd2 {
    public final n14 b;
    public final j14 c;
    public final j14 d;
    public final j14 e;
    public final o11 f;
    public final y31 g;
    public final zl3 h;
    public final ne1 i;
    public final d11 j;

    public c11(n14 n14Var, j14 j14Var, j14 j14Var2, j14 j14Var3, o11 o11Var, y31 y31Var, zl3 zl3Var, ne1 ne1Var, d11 d11Var) {
        this.b = n14Var;
        this.c = j14Var;
        this.d = j14Var2;
        this.e = j14Var3;
        this.f = o11Var;
        this.g = y31Var;
        this.h = zl3Var;
        this.i = ne1Var;
        this.j = d11Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new n11(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c11)) {
            return false;
        }
        c11 c11Var = (c11) obj;
        return c11Var.b.equals(this.b) && nt1.g(c11Var.c, this.c) && nt1.g(c11Var.d, this.d) && nt1.g(c11Var.e, this.e) && c11Var.f.equals(this.f) && nt1.g(c11Var.g, this.g) && c11Var.h == this.h && c11Var.i == this.i && nt1.g(c11Var.j, this.j);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        n11 n11Var = (n11) md2Var;
        n11Var.B = this.b;
        n11Var.C = this.c;
        n11Var.D = this.d;
        n11Var.E = this.e;
        n11Var.F = this.f;
        n11Var.G = this.g;
        n11Var.H = this.h;
        n11Var.I = this.i;
        n11Var.J = this.j;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        j14 j14Var = this.c;
        int iHashCode2 = (iHashCode + (j14Var != null ? j14Var.hashCode() : 0)) * 31;
        j14 j14Var2 = this.d;
        int iHashCode3 = (iHashCode2 + (j14Var2 != null ? j14Var2.hashCode() : 0)) * 31;
        j14 j14Var3 = this.e;
        return this.h.hashCode() + (this.j.hashCode() * 31) + ((this.i.hashCode() + ((this.g.a.hashCode() + ((this.f.a.hashCode() + ((iHashCode3 + (j14Var3 != null ? j14Var3.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }
}
