package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ds2 implements zr2 {
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public ds2(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        if (!((f >= 0.0f) & (f2 >= 0.0f) & (f3 >= 0.0f)) || !(f4 >= 0.0f)) {
            yq1.a("Padding must be non-negative");
        }
    }

    @Override // defpackage.zr2
    public final float a(hy1 hy1Var) {
        return hy1Var == hy1.n ? this.a : this.c;
    }

    @Override // defpackage.zr2
    public final float b(hy1 hy1Var) {
        return hy1Var == hy1.n ? this.c : this.a;
    }

    @Override // defpackage.zr2
    public final float c() {
        return this.d;
    }

    @Override // defpackage.zr2
    public final float d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ds2)) {
            return false;
        }
        ds2 ds2Var = (ds2) obj;
        return cw0.b(this.a, ds2Var.a) && cw0.b(this.b, ds2Var.b) && cw0.b(this.c, ds2Var.c) && cw0.b(this.d, ds2Var.d);
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + di0.l(this.c, di0.l(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        String strC = cw0.c(this.a);
        String strC2 = cw0.c(this.b);
        return xw1.t(di0.B("PaddingValues(start=", strC, ", top=", strC2, ", end="), cw0.c(this.c), ", bottom=", cw0.c(this.d), ")");
    }
}
