package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class t02 extends rd2 {
    public final ne1 b;
    public final s02 c;
    public final hr2 d;
    public final boolean e;

    public t02(ne1 ne1Var, s02 s02Var, hr2 hr2Var, boolean z) {
        this.b = ne1Var;
        this.c = s02Var;
        this.d = hr2Var;
        this.e = z;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new w02(this.b, this.c, this.d, this.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t02)) {
            return false;
        }
        t02 t02Var = (t02) obj;
        return this.b == t02Var.b && nt1.g(this.c, t02Var.c) && this.d == t02Var.d && this.e == t02Var.e;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        w02 w02Var = (w02) md2Var;
        w02Var.B = this.b;
        w02Var.C = this.c;
        hr2 hr2Var = w02Var.D;
        hr2 hr2Var2 = this.d;
        if (hr2Var != hr2Var2) {
            w02Var.D = hr2Var2;
            w80.A(w02Var);
        }
        boolean z = w02Var.E;
        boolean z2 = this.e;
        if (z == z2) {
            return;
        }
        w02Var.E = z2;
        w02Var.G0();
        w80.A(w02Var);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + xw1.n((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31, this.e, 31);
    }
}
