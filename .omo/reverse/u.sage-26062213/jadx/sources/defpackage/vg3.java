package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vg3 {
    public final float a;
    public final float b;

    public vg3(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof vg3)) {
            return false;
        }
        return cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f) && cw0.b(this.a, ((vg3) obj).a) && cw0.b(0.0f, 0.0f);
    }

    public final int hashCode() {
        return Float.hashCode(0.0f) + di0.l(this.a, di0.l(0.0f, di0.l(0.0f, Float.hashCode(0.0f) * 31, 31), 31), 31);
    }
}
