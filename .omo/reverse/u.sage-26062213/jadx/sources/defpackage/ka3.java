package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ka3 {
    public final float a;
    public final float b;
    public final float c;
    public final float d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;

    static {
        k30.d(0.0f, 0.0f, 0.0f, 0.0f, 0L);
    }

    public ka3(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = j4;
    }

    public final float a() {
        return this.d - this.b;
    }

    public final float b() {
        return this.c - this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ka3)) {
            return false;
        }
        ka3 ka3Var = (ka3) obj;
        return Float.compare(this.a, ka3Var.a) == 0 && Float.compare(this.b, ka3Var.b) == 0 && Float.compare(this.c, ka3Var.c) == 0 && Float.compare(this.d, ka3Var.d) == 0 && zf5.C(this.e, ka3Var.e) && zf5.C(this.f, ka3Var.f) && zf5.C(this.g, ka3Var.g) && zf5.C(this.h, ka3Var.h);
    }

    public final int hashCode() {
        return Long.hashCode(this.h) + xw1.l(xw1.l(xw1.l(di0.l(this.d, di0.l(this.c, di0.l(this.b, Float.hashCode(this.a) * 31, 31), 31), 31), 31, this.e), 31, this.f), 31, this.g);
    }

    public final String toString() {
        String strN = k75.N(this.a);
        String strN2 = k75.N(this.b);
        String strN3 = k75.N(this.c);
        String strN4 = k75.N(this.d);
        StringBuilder sb = new StringBuilder();
        sb.append(strN);
        sb.append(", ");
        sb.append(strN2);
        sb.append(", ");
        sb.append(strN3);
        String strS = xw1.s(sb, ", ", strN4);
        long j = this.e;
        long j2 = this.f;
        boolean zC = zf5.C(j, j2);
        long j3 = this.g;
        long j4 = this.h;
        if (zC && zf5.C(j2, j3) && zf5.C(j3, j4)) {
            int i = (int) (j >> 32);
            int i2 = (int) (j & 4294967295L);
            if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
                return xw1.r("RoundRect(rect=", strS, ", radius=", k75.N(Float.intBitsToFloat(i)), ")");
            }
            String strN5 = k75.N(Float.intBitsToFloat(i));
            return xw1.s(di0.B("RoundRect(rect=", strS, ", x=", strN5, ", y="), k75.N(Float.intBitsToFloat(i2)), ")");
        }
        String strW = zf5.W(j);
        String strW2 = zf5.W(j2);
        String strW3 = zf5.W(j3);
        String strW4 = zf5.W(j4);
        StringBuilder sbB = di0.B("RoundRect(rect=", strS, ", topLeft=", strW, ", topRight=");
        di0.E(sbB, strW2, ", bottomRight=", strW3, ", bottomLeft=");
        return xw1.s(sbB, strW4, ")");
    }
}
