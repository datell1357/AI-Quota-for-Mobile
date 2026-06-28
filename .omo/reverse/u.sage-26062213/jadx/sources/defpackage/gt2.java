package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gt2 extends xt2 {
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;

    public gt2(float f, float f2, float f3, float f4, float f5, float f6) {
        super(2);
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = f4;
        this.g = f5;
        this.h = f6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gt2)) {
            return false;
        }
        gt2 gt2Var = (gt2) obj;
        return Float.compare(this.c, gt2Var.c) == 0 && Float.compare(this.d, gt2Var.d) == 0 && Float.compare(this.e, gt2Var.e) == 0 && Float.compare(this.f, gt2Var.f) == 0 && Float.compare(this.g, gt2Var.g) == 0 && Float.compare(this.h, gt2Var.h) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.h) + di0.l(this.g, di0.l(this.f, di0.l(this.e, di0.l(this.d, Float.hashCode(this.c) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("CurveTo(x1=", this.c, ", y1=", this.d, ", x2=");
        sbZ.append(this.e);
        sbZ.append(", y2=");
        sbZ.append(this.f);
        sbZ.append(", x3=");
        sbZ.append(this.g);
        sbZ.append(", y3=");
        sbZ.append(this.h);
        sbZ.append(")");
        return sbZ.toString();
    }
}
