package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b80 {
    public final String a;
    public final long b;
    public final int c;

    public b80(String str, int i, long j) {
        this.a = str;
        this.b = j;
        this.c = i;
        if (str.length() == 0) {
            k21.f("The name of a color space cannot be null and must contain at least 1 character");
            throw null;
        }
        if (i < -1 || i > 63) {
            k21.f("The id must be between -1 and 63");
            throw null;
        }
    }

    public abstract float a(int i);

    public abstract float b(int i);

    public boolean c() {
        return false;
    }

    public abstract long d(float f, float f2, float f3);

    public abstract float e(float f, float f2, float f3);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b80 b80Var = (b80) obj;
        if (this.c == b80Var.c && this.a.equals(b80Var.a)) {
            return k75.v(this.b, b80Var.b);
        }
        return false;
    }

    public abstract long f(float f, float f2, float f3, float f4, b80 b80Var);

    public int hashCode() {
        return xw1.l(this.a.hashCode() * 31, 31, this.b) + this.c;
    }

    public final String toString() {
        long j = this.b;
        return this.a + " (id=" + this.c + ", model=" + (k75.v(j, 12884901888L) ? "Rgb" : k75.v(j, 12884901889L) ? "Xyz" : k75.v(j, 12884901890L) ? "Lab" : k75.v(j, 17179869187L) ? "Cmyk" : "Unknown") + ")";
    }
}
