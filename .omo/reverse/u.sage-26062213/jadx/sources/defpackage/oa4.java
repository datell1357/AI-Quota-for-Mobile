package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class oa4 extends rd2 {
    public final n14 b;
    public final j14 c;
    public final o11 d;
    public final y31 e;
    public final zl3 f;

    public oa4(n14 n14Var, j14 j14Var, o11 o11Var, y31 y31Var, zl3 zl3Var) {
        this.b = n14Var;
        this.c = j14Var;
        this.d = o11Var;
        this.e = y31Var;
        this.f = zl3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        qa4 qa4Var = new qa4();
        qa4Var.B = this.c;
        qa4Var.C = this.d;
        qa4Var.D = this.e;
        qa4Var.E = this.f;
        return qa4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof oa4) {
            oa4 oa4Var = (oa4) obj;
            return this.b.equals(oa4Var.b) && nt1.g(this.c, oa4Var.c) && this.d.equals(oa4Var.d) && nt1.g(this.e, oa4Var.e) && this.f == oa4Var.f;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        qa4 qa4Var = (qa4) md2Var;
        qa4Var.getClass();
        qa4Var.B = this.c;
        qa4Var.C = this.d;
        qa4Var.D = this.e;
        qa4Var.E = this.f;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.e.a.hashCode() + ((this.d.a.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "VeilModifierElement(transition=" + this.b + ", veilAnimation=" + this.c + ", enter=" + this.d + ", exit=" + this.e + ", mutableTransformState=" + this.f + ")";
    }
}
