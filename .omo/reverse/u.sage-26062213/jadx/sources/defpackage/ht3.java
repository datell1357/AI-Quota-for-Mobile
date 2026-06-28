package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ht3 extends tv4 {
    public final float f;
    public final float g;
    public final int h;
    public final int i;

    public ht3(float f, float f2, int i, int i2, int i3) {
        f2 = (i3 & 2) != 0 ? 4.0f : f2;
        i = (i3 & 4) != 0 ? 0 : i;
        i2 = (i3 & 8) != 0 ? 0 : i2;
        this.f = f;
        this.g = f2;
        this.h = i;
        this.i = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ht3)) {
            return false;
        }
        ht3 ht3Var = (ht3) obj;
        return this.f == ht3Var.f && this.g == ht3Var.g && this.h == ht3Var.h && this.i == ht3Var.i;
    }

    public final int hashCode() {
        return xw1.j(this.i, xw1.j(this.h, di0.l(this.g, Float.hashCode(this.f) * 31, 31), 31), 31);
    }

    public final String toString() {
        String str = "Unknown";
        int i = this.h;
        String str2 = i == 0 ? "Butt" : i == 1 ? "Round" : i == 2 ? "Square" : "Unknown";
        int i2 = this.i;
        if (i2 == 0) {
            str = "Miter";
        } else if (i2 == 1) {
            str = "Round";
        } else if (i2 == 2) {
            str = "Bevel";
        }
        return xw1.t(di0.z("Stroke(width=", this.f, ", miter=", this.g, ", cap="), str2, ", join=", str, ", pathEffect=null)");
    }
}
