package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class nn3 extends rd2 {
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final boolean f;

    public /* synthetic */ nn3(float f, float f2, float f3, float f4, int i) {
        this((i & 1) != 0 ? Float.NaN : f, (i & 2) != 0 ? Float.NaN : f2, (i & 4) != 0 ? Float.NaN : f3, (i & 8) != 0 ? Float.NaN : f4, true);
    }

    @Override // defpackage.rd2
    public final md2 e() {
        pn3 pn3Var = new pn3();
        pn3Var.B = this.b;
        pn3Var.C = this.c;
        pn3Var.D = this.d;
        pn3Var.E = this.e;
        pn3Var.F = this.f;
        return pn3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nn3)) {
            return false;
        }
        nn3 nn3Var = (nn3) obj;
        return cw0.b(this.b, nn3Var.b) && cw0.b(this.c, nn3Var.c) && cw0.b(this.d, nn3Var.d) && cw0.b(this.e, nn3Var.e) && this.f == nn3Var.f;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        pn3 pn3Var = (pn3) md2Var;
        pn3Var.B = this.b;
        pn3Var.C = this.c;
        pn3Var.D = this.d;
        pn3Var.E = this.e;
        pn3Var.F = this.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + di0.l(this.e, di0.l(this.d, di0.l(this.c, Float.hashCode(this.b) * 31, 31), 31), 31);
    }

    public nn3(float f, float f2, float f3, float f4, boolean z) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = z;
    }
}
