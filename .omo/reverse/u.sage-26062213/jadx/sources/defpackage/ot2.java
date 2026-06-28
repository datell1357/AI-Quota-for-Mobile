package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ot2 extends xt2 {
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;

    public ot2(float f, float f2, float f3, float f4, float f5, float f6) {
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
        if (!(obj instanceof ot2)) {
            return false;
        }
        ot2 ot2Var = (ot2) obj;
        return Float.compare(this.c, ot2Var.c) == 0 && Float.compare(this.d, ot2Var.d) == 0 && Float.compare(this.e, ot2Var.e) == 0 && Float.compare(this.f, ot2Var.f) == 0 && Float.compare(this.g, ot2Var.g) == 0 && Float.compare(this.h, ot2Var.h) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.h) + di0.l(this.g, di0.l(this.f, di0.l(this.e, di0.l(this.d, Float.hashCode(this.c) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("RelativeCurveTo(dx1=", this.c, ", dy1=", this.d, ", dx2=");
        sbZ.append(this.e);
        sbZ.append(", dy2=");
        sbZ.append(this.f);
        sbZ.append(", dx3=");
        sbZ.append(this.g);
        sbZ.append(", dy3=");
        sbZ.append(this.h);
        sbZ.append(")");
        return sbZ.toString();
    }
}
