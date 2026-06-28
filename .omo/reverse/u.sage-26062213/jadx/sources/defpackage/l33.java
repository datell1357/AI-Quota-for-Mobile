package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l33 {
    public static final l33 e = new l33(0.0f, 0.0f, 0.0f, 0.0f);
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public l33(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public final long a() {
        float f = this.c;
        float f2 = this.a;
        float f3 = ((f - f2) / 2.0f) + f2;
        float f4 = this.d;
        float f5 = this.b;
        return (((long) Float.floatToRawIntBits(((f4 - f5) / 2.0f) + f5)) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32);
    }

    public final long b() {
        float f = this.c - this.a;
        return (((long) Float.floatToRawIntBits(this.d - this.b)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public final l33 c(l33 l33Var) {
        return new l33(Math.max(this.a, l33Var.a), Math.max(this.b, l33Var.b), Math.min(this.c, l33Var.c), Math.min(this.d, l33Var.d));
    }

    public final l33 d(float f, float f2) {
        return new l33(this.a + f, this.b + f2, this.c + f, this.d + f2);
    }

    public final l33 e(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new l33(Float.intBitsToFloat(i) + this.a, Float.intBitsToFloat(i2) + this.b, Float.intBitsToFloat(i) + this.c, Float.intBitsToFloat(i2) + this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l33)) {
            return false;
        }
        l33 l33Var = (l33) obj;
        return Float.compare(this.a, l33Var.a) == 0 && Float.compare(this.b, l33Var.b) == 0 && Float.compare(this.c, l33Var.c) == 0 && Float.compare(this.d, l33Var.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + di0.l(this.c, di0.l(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        String strN = k75.N(this.a);
        String strN2 = k75.N(this.b);
        return xw1.t(di0.B("Rect.fromLTRB(", strN, ", ", strN2, ", "), k75.N(this.c), ", ", k75.N(this.d), ")");
    }
}
