package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aw {
    public final float a;

    public aw(float f) {
        this.a = f;
    }

    public final int a(int i, int i2, hy1 hy1Var) {
        float f = (i2 - i) / 2.0f;
        hy1 hy1Var2 = hy1.n;
        float f2 = this.a;
        if (hy1Var != hy1Var2) {
            f2 *= -1.0f;
        }
        return Math.round((1.0f + f2) * f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof aw) && Float.compare(this.a, ((aw) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Horizontal(bias=" + this.a + ")";
    }
}
