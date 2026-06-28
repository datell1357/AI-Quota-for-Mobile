package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fx {
    public final float a;
    public final sp3 b;

    public fx(float f, sp3 sp3Var) {
        this.a = f;
        this.b = sp3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fx)) {
            return false;
        }
        fx fxVar = (fx) obj;
        return cw0.b(this.a, fxVar.a) && this.b.equals(fxVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "BorderStroke(width=" + cw0.c(this.a) + ", brush=" + this.b + ")";
    }
}
