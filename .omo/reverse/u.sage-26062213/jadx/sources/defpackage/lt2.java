package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lt2 extends xt2 {
    public final float c;
    public final float d;
    public final float e;
    public final float f;

    public lt2(float f, float f2, float f3, float f4) {
        super(2);
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lt2)) {
            return false;
        }
        lt2 lt2Var = (lt2) obj;
        return Float.compare(this.c, lt2Var.c) == 0 && Float.compare(this.d, lt2Var.d) == 0 && Float.compare(this.e, lt2Var.e) == 0 && Float.compare(this.f, lt2Var.f) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f) + di0.l(this.e, di0.l(this.d, Float.hashCode(this.c) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("ReflectiveCurveTo(x1=", this.c, ", y1=", this.d, ", x2=");
        sbZ.append(this.e);
        sbZ.append(", y2=");
        sbZ.append(this.f);
        sbZ.append(")");
        return sbZ.toString();
    }
}
