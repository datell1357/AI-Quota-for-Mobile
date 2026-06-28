package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class st2 extends xt2 {
    public final float c;
    public final float d;
    public final float e;
    public final float f;

    public st2(float f, float f2, float f3, float f4) {
        super(1);
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof st2)) {
            return false;
        }
        st2 st2Var = (st2) obj;
        return Float.compare(this.c, st2Var.c) == 0 && Float.compare(this.d, st2Var.d) == 0 && Float.compare(this.e, st2Var.e) == 0 && Float.compare(this.f, st2Var.f) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f) + di0.l(this.e, di0.l(this.d, Float.hashCode(this.c) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("RelativeQuadTo(dx1=", this.c, ", dy1=", this.d, ", dx2=");
        sbZ.append(this.e);
        sbZ.append(", dy2=");
        sbZ.append(this.f);
        sbZ.append(")");
        return sbZ.toString();
    }
}
