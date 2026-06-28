package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class xr2 extends rd2 {
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    public xr2(float f, float f2, float f3, float f4) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        boolean z = true;
        boolean z2 = (f >= 0.0f || Float.isNaN(f)) & (f2 >= 0.0f || Float.isNaN(f2)) & (f3 >= 0.0f || Float.isNaN(f3));
        if (f4 < 0.0f && !Float.isNaN(f4)) {
            z = false;
        }
        if (!z2 || !z) {
            yq1.a("Padding must be non-negative");
        }
    }

    @Override // defpackage.rd2
    public final md2 e() {
        yr2 yr2Var = new yr2();
        yr2Var.B = this.b;
        yr2Var.C = this.c;
        yr2Var.D = this.d;
        yr2Var.E = this.e;
        yr2Var.F = true;
        return yr2Var;
    }

    public final boolean equals(Object obj) {
        xr2 xr2Var = obj instanceof xr2 ? (xr2) obj : null;
        return xr2Var != null && cw0.b(this.b, xr2Var.b) && cw0.b(this.c, xr2Var.c) && cw0.b(this.d, xr2Var.d) && cw0.b(this.e, xr2Var.e);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        yr2 yr2Var = (yr2) md2Var;
        yr2Var.B = this.b;
        yr2Var.C = this.c;
        yr2Var.D = this.d;
        yr2Var.E = this.e;
        yr2Var.F = true;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + di0.l(this.e, di0.l(this.d, di0.l(this.c, Float.hashCode(this.b) * 31, 31), 31), 31);
    }
}
