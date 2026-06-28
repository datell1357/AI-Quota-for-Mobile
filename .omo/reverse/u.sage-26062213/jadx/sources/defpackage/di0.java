package defpackage;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class di0 implements c20 {
    public static final int[] n = {1, 2, 3, 4, 5, 6, 7, 8};
    public static final /* synthetic */ int[] o = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61};

    public static StringBuilder A(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder B(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void C(int i, ag1 ag1Var, fd fdVar, ag1 ag1Var2, l9 l9Var) {
        ht4.D(fdVar, ag1Var, Integer.valueOf(i));
        ht4.y(ag1Var2, l9Var);
    }

    public static /* synthetic */ void D(Object obj) {
        if (obj == null) {
            return;
        }
        mk0.b();
    }

    public static void E(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static /* synthetic */ int F(int i) {
        if (i != 0) {
            return i - 1;
        }
        throw null;
    }

    public static /* synthetic */ String G(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "SUCCESS" : "FAILURE" : "HANDSHAKE" : "CHALLENGED" : "UNCHALLENGED";
    }

    public static /* synthetic */ String H(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "INVALID_PAYLOAD" : "FATAL_ERROR" : "TRANSIENT_ERROR" : "OK";
    }

    public static /* synthetic */ String I(int i) {
        return i != 1 ? i != 2 ? "null" : "BAD_CONFIG" : "OK";
    }

    public static /* synthetic */ int[] J(int i) {
        int[] iArr = new int[i];
        System.arraycopy(o, 0, iArr, 0, i);
        return iArr;
    }

    public static x33 a(int i, i62 i62Var, Object obj, int i2, x33 x33Var) {
        switch (i) {
            case 1:
                return new l62(obj, i2, x33Var);
            case 2:
                j62 j62Var = new j62(obj, i2, x33Var);
                w52 w52Var = v62.F;
                h62 h62Var = h62.n;
                j62Var.r = h62Var;
                j62Var.s = h62Var;
                return j62Var;
            case 3:
                n62 n62Var = new n62(obj, i2, x33Var);
                n62Var.r = Long.MAX_VALUE;
                w52 w52Var2 = v62.F;
                h62 h62Var2 = h62.n;
                n62Var.s = h62Var2;
                n62Var.t = h62Var2;
                return n62Var;
            case 4:
                k62 k62Var = new k62(obj, i2, x33Var);
                w52 w52Var3 = v62.F;
                h62 h62Var3 = h62.n;
                k62Var.r = h62Var3;
                k62Var.s = h62Var3;
                k62Var.t = Long.MAX_VALUE;
                k62Var.f160u = h62Var3;
                k62Var.v = h62Var3;
                return k62Var;
            case 5:
                return new s62(i62Var.f132u, obj, i2, x33Var);
            case 6:
                q62 q62Var = new q62(i62Var.f132u, obj, i2, x33Var);
                w52 w52Var4 = v62.F;
                h62 h62Var4 = h62.n;
                q62Var.q = h62Var4;
                q62Var.r = h62Var4;
                return q62Var;
            case 7:
                t62 t62Var = new t62(i62Var.f132u, obj, i2, x33Var);
                t62Var.q = Long.MAX_VALUE;
                w52 w52Var5 = v62.F;
                h62 h62Var5 = h62.n;
                t62Var.r = h62Var5;
                t62Var.s = h62Var5;
                return t62Var;
            default:
                r62 r62Var = new r62(i62Var.f132u, obj, i2, x33Var);
                w52 w52Var6 = v62.F;
                h62 h62Var6 = h62.n;
                r62Var.q = h62Var6;
                r62Var.r = h62Var6;
                r62Var.s = Long.MAX_VALUE;
                r62Var.t = h62Var6;
                r62Var.f293u = h62Var6;
                return r62Var;
        }
    }

    public static String b(int i, Field field) {
        switch (i) {
            case 1:
                return field.getName();
            case 2:
                return e(field.getName());
            case 3:
                return e(c(field.getName(), ' '));
            case 4:
                return c(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            case 5:
                return c(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            case 6:
                return c(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            default:
                return c(field.getName(), '.').toLowerCase(Locale.ENGLISH);
        }
    }

    public static String c(String str, char c) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String e(String str) {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char cCharAt = str.charAt(i);
            if (!Character.isLetter(cCharAt)) {
                i++;
            } else if (!Character.isUpperCase(cCharAt)) {
                char upperCase = Character.toUpperCase(cCharAt);
                if (i == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i) + upperCase + str.substring(i + 1);
            }
        }
        return str;
    }

    public static /* synthetic */ Integer f(int i) {
        if (i == 0) {
            return null;
        }
        return Integer.valueOf(i - 1);
    }

    public static /* synthetic */ void g(int i, String str) {
        if (i != 0) {
            return;
        }
        q73.r(str);
    }

    public static /* synthetic */ int h(int i, int i2) {
        if (i == 0 || i2 == 0) {
            throw null;
        }
        return i - i2;
    }

    public static /* synthetic */ boolean i(int i, int i2) {
        if (i != 0) {
            return i == i2;
        }
        throw null;
    }

    public static /* synthetic */ int j(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    if (i == 4) {
                        return 4;
                    }
                    throw null;
                }
            }
        }
        return i2;
    }

    public static /* synthetic */ long k(int i) {
        if (i == 1) {
            return 0L;
        }
        if (i == 2) {
            return 1L;
        }
        if (i == 3) {
            return 2L;
        }
        if (i == 4) {
            return 3L;
        }
        if (i == 5) {
            return 4L;
        }
        throw null;
    }

    public static int l(float f, int i, int i2) {
        return (Float.hashCode(f) + i) * i2;
    }

    public static v00 m(String str) {
        ar1.c(str);
        return new v00(6);
    }

    public static ClassCastException o(Object obj) {
        obj.getClass();
        return new ClassCastException();
    }

    public static String p(int i, int i2, String str, String str2) {
        return str + i + str2 + i2;
    }

    public static String q(int i, String str) {
        return str + i;
    }

    public static String r(int i, String str, StringBuilder sb) {
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    public static String s(long j, String str) {
        return str + j;
    }

    public static String t(String str, lc1 lc1Var, String str2) {
        return str + lc1Var + str2;
    }

    public static String u(String str, String str2) {
        return str + str2;
    }

    public static String v(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String w(String str, StringBuilder sb) {
        return str + ((Object) sb);
    }

    public static String x(StringBuilder sb, long j, String str) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    public static String y(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static StringBuilder z(String str, float f, String str2, float f2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(f);
        sb.append(str2);
        sb.append(f2);
        sb.append(str3);
        return sb;
    }
}
