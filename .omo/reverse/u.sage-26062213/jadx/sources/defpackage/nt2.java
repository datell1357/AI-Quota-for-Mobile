package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nt2 extends xt2 {
    public final float c;
    public final float d;
    public final float e;
    public final boolean f;
    public final boolean g;
    public final float h;
    public final float i;

    public nt2(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
        super(3);
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = z;
        this.g = z2;
        this.h = f4;
        this.i = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nt2)) {
            return false;
        }
        nt2 nt2Var = (nt2) obj;
        return Float.compare(this.c, nt2Var.c) == 0 && Float.compare(this.d, nt2Var.d) == 0 && Float.compare(this.e, nt2Var.e) == 0 && this.f == nt2Var.f && this.g == nt2Var.g && Float.compare(this.h, nt2Var.h) == 0 && Float.compare(this.i, nt2Var.i) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.i) + di0.l(this.h, xw1.n(xw1.n(di0.l(this.e, di0.l(this.d, Float.hashCode(this.c) * 31, 31), 31), this.f, 31), this.g, 31), 31);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("RelativeArcTo(horizontalEllipseRadius=", this.c, ", verticalEllipseRadius=", this.d, ", theta=");
        sbZ.append(this.e);
        sbZ.append(", isMoreThanHalf=");
        sbZ.append(this.f);
        sbZ.append(", isPositiveArc=");
        sbZ.append(this.g);
        sbZ.append(", arcStartDx=");
        sbZ.append(this.h);
        sbZ.append(", arcStartDy=");
        sbZ.append(this.i);
        sbZ.append(")");
        return sbZ.toString();
    }
}
