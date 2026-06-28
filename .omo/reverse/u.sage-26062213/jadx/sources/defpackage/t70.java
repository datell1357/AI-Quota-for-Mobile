package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t70 {
    public static final long b = c75.c(4278190080L);
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;
    public static final /* synthetic */ int g = 0;
    public final long a;

    static {
        c75.c(4282664004L);
        c75.c(4287137928L);
        c75.c(4291611852L);
        c75.c(4294967295L);
        c = c75.c(4294901760L);
        c75.c(4278255360L);
        d = c75.c(4278190335L);
        c75.c(4294967040L);
        c75.c(4278255615L);
        c75.c(4294902015L);
        e = c75.b(0);
        f = c75.a(0.0f, 0.0f, 0.0f, 0.0f, e80.f81u);
    }

    public /* synthetic */ t70(long j) {
        this.a = j;
    }

    public static final long a(long j, b80 b80Var) {
        ve0 ve0VarY;
        b80 b80VarF = f(j);
        int i = b80VarF.c;
        int i2 = b80Var.c;
        if ((i | i2) < 0) {
            ve0VarY = zf5.y(b80VarF, b80Var);
        } else {
            tf2 tf2Var = we0.a;
            int i3 = i | (i2 << 6);
            Object objB = tf2Var.b(i3);
            if (objB == null) {
                objB = zf5.y(b80VarF, b80Var);
                tf2Var.h(i3, objB);
            }
            ve0VarY = (ve0) objB;
        }
        return ve0VarY.a(j);
    }

    public static long b(float f2, long j) {
        return c75.a(h(j), g(j), e(j), f2, f(j));
    }

    public static final boolean c(long j, long j2) {
        return j == j2;
    }

    public static final float d(long j) {
        float fQ;
        float f2;
        if ((63 & j) == 0) {
            fQ = (float) on4.Q((j >>> 56) & 255);
            f2 = 255.0f;
        } else {
            fQ = (float) on4.Q((j >>> 6) & 1023);
            f2 = 1023.0f;
        }
        return fQ / f2;
    }

    public static final float e(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) on4.Q((j >>> 32) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 16) & 65535);
        int i4 = Short.MIN_VALUE & s;
        int i5 = ((65535 & s) >>> 10) & 31;
        int i6 = s & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = 255;
                if (i7 != 0) {
                    i7 |= 4194304;
                }
            } else {
                i = i5 + 112;
            }
            int i8 = i;
            i2 = i7;
            i3 = i8;
        } else {
            if (i6 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i6 + 1056964608) - r71.a;
                return i4 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    public static final b80 f(long j) {
        float[] fArr = e80.a;
        return e80.y[(int) (j & 63)];
    }

    public static final float g(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) on4.Q((j >>> 40) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 32) & 65535);
        int i4 = Short.MIN_VALUE & s;
        int i5 = ((65535 & s) >>> 10) & 31;
        int i6 = s & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = 255;
                if (i7 != 0) {
                    i7 |= 4194304;
                }
            } else {
                i = i5 + 112;
            }
            int i8 = i;
            i2 = i7;
            i3 = i8;
        } else {
            if (i6 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i6 + 1056964608) - r71.a;
                return i4 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    public static final float h(long j) {
        int i;
        int i2;
        int i3;
        if ((63 & j) == 0) {
            return ((float) on4.Q((j >>> 48) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 48) & 65535);
        int i4 = Short.MIN_VALUE & s;
        int i5 = ((65535 & s) >>> 10) & 31;
        int i6 = s & 1023;
        if (i5 != 0) {
            int i7 = i6 << 13;
            if (i5 == 31) {
                i = 255;
                if (i7 != 0) {
                    i7 |= 4194304;
                }
            } else {
                i = i5 + 112;
            }
            int i8 = i;
            i2 = i7;
            i3 = i8;
        } else {
            if (i6 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i6 + 1056964608) - r71.a;
                return i4 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i4 << 16) | i2);
    }

    public static String i(long j) {
        float fH = h(j);
        float fG = g(j);
        float fE = e(j);
        float fD = d(j);
        String str = f(j).a;
        StringBuilder sbZ = di0.z("Color(", fH, ", ", fG, ", ");
        sbZ.append(fE);
        sbZ.append(", ");
        sbZ.append(fD);
        sbZ.append(", ");
        return xw1.s(sbZ, str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof t70) {
            return this.a == ((t70) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return i(this.a);
    }
}
