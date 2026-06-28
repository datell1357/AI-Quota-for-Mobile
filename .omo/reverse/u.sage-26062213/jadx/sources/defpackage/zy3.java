package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zy3 extends rd2 {
    public final xs1 b;
    public final boolean c;
    public final yq3 d;

    public zy3(xs1 xs1Var, boolean z, yq3 yq3Var) {
        this.b = xs1Var;
        this.c = z;
        this.d = yq3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        bz3 bz3Var = new bz3();
        bz3Var.B = this.b;
        bz3Var.C = this.c;
        bz3Var.D = this.d;
        bz3Var.H = Float.NaN;
        bz3Var.I = Float.NaN;
        return bz3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zy3)) {
            return false;
        }
        zy3 zy3Var = (zy3) obj;
        return nt1.g(this.b, zy3Var.b) && this.c == zy3Var.c && this.d.equals(zy3Var.d);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        bz3 bz3Var = (bz3) md2Var;
        bz3Var.B = this.b;
        boolean z = bz3Var.C;
        boolean z2 = this.c;
        if (z != z2) {
            ca.u(bz3Var);
        }
        bz3Var.C = z2;
        bz3Var.D = this.d;
        if (bz3Var.G == null && !Float.isNaN(bz3Var.I)) {
            bz3Var.G = dm0.a(bz3Var.I);
        }
        if (bz3Var.F != null || Float.isNaN(bz3Var.H)) {
            return;
        }
        bz3Var.F = dm0.a(bz3Var.H);
    }

    public final int hashCode() {
        return this.d.hashCode() + xw1.n(this.b.hashCode() * 31, this.c, 31);
    }

    public final String toString() {
        return "ThumbElement(interactionSource=" + this.b + ", checked=" + this.c + ", animationSpec=" + this.d + ")";
    }
}
