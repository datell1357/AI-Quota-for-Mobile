package defpackage;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y55 {
    public static final y55 c = new y55(100);
    public final EnumMap a;
    public final int b;

    public y55(int i) {
        EnumMap enumMap = new EnumMap(x55.class);
        this.a = enumMap;
        x55 x55Var = x55.AD_STORAGE;
        u55 u55Var = u55.UNINITIALIZED;
        enumMap.put(x55Var, u55Var);
        enumMap.put(x55.ANALYTICS_STORAGE, u55Var);
        this.b = i;
    }

    public static String a(int i) {
        return i != -30 ? i != -20 ? i != -10 ? i != 0 ? i != 30 ? i != 90 ? i != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    public static y55 b(int i, Bundle bundle) {
        if (bundle == null) {
            return new y55(i);
        }
        EnumMap enumMap = new EnumMap(x55.class);
        for (x55 x55Var : v55.STORAGE.n) {
            enumMap.put(x55Var, d(bundle.getString(x55Var.n)));
        }
        return new y55(enumMap, i);
    }

    public static y55 c(int i, String str) {
        EnumMap enumMap = new EnumMap(x55.class);
        x55[] x55VarArr = v55.STORAGE.n;
        for (int i2 = 0; i2 < x55VarArr.length; i2++) {
            String str2 = str == null ? "" : str;
            x55 x55Var = x55VarArr[i2];
            int i3 = i2 + 2;
            if (i3 < str2.length()) {
                enumMap.put(x55Var, e(str2.charAt(i3)));
            } else {
                enumMap.put(x55Var, u55.UNINITIALIZED);
            }
        }
        return new y55(enumMap, i);
    }

    public static u55 d(String str) {
        u55 u55Var = u55.UNINITIALIZED;
        return str == null ? u55Var : str.equals("granted") ? u55.GRANTED : str.equals("denied") ? u55.DENIED : u55Var;
    }

    public static u55 e(char c2) {
        return c2 != '+' ? c2 != '0' ? c2 != '1' ? u55.UNINITIALIZED : u55.GRANTED : u55.DENIED : u55.POLICY;
    }

    public static char h(u55 u55Var) {
        if (u55Var == null) {
            return '-';
        }
        int iOrdinal = u55Var.ordinal();
        if (iOrdinal == 1) {
            return '+';
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? '-' : '1';
        }
        return '0';
    }

    public static boolean l(int i, int i2) {
        int i3 = -30;
        if (i == -20) {
            if (i2 == -30) {
                return true;
            }
            i = -20;
        }
        if (i != -30) {
            i3 = i;
        } else if (i2 == -20) {
            return true;
        }
        return i3 == i2 || i < i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof y55) {
            y55 y55Var = (y55) obj;
            x55[] x55VarArr = v55.STORAGE.n;
            int length = x55VarArr.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    x55 x55Var = x55VarArr[i];
                    if (this.a.get(x55Var) != y55Var.a.get(x55Var)) {
                        break;
                    }
                    i++;
                } else if (this.b == y55Var.b) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String f() {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "G1"
            r0.<init>(r1)
            v55 r1 = defpackage.v55.STORAGE
            x55[] r1 = r1.n
            int r2 = r1.length
            r3 = 0
        Ld:
            if (r3 >= r2) goto L38
            r4 = r1[r3]
            java.util.EnumMap r5 = r7.a
            java.lang.Object r4 = r5.get(r4)
            u55 r4 = (defpackage.u55) r4
            r5 = 45
            if (r4 == 0) goto L32
            int r4 = r4.ordinal()
            if (r4 == 0) goto L32
            r6 = 1
            if (r4 == r6) goto L30
            r6 = 2
            if (r4 == r6) goto L2d
            r6 = 3
            if (r4 == r6) goto L30
            goto L32
        L2d:
            r5 = 48
            goto L32
        L30:
            r5 = 49
        L32:
            r0.append(r5)
            int r3 = r3 + 1
            goto Ld
        L38:
            java.lang.String r7 = r0.toString()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y55.f():java.lang.String");
    }

    public final String g() {
        StringBuilder sb = new StringBuilder("G1");
        for (x55 x55Var : v55.STORAGE.n) {
            sb.append(h((u55) this.a.get(x55Var)));
        }
        return sb.toString();
    }

    public final int hashCode() {
        Iterator it = this.a.values().iterator();
        int iHashCode = this.b * 17;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + ((u55) it.next()).hashCode();
        }
        return iHashCode;
    }

    public final boolean i(x55 x55Var) {
        return ((u55) this.a.get(x55Var)) != u55.DENIED;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.y55 j(defpackage.y55 r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<x55> r1 = defpackage.x55.class
            r0.<init>(r1)
            v55 r1 = defpackage.v55.STORAGE
            x55[] r1 = r1.n
            int r2 = r1.length
            r3 = 0
        Ld:
            if (r3 >= r2) goto L48
            r4 = r1[r3]
            java.util.EnumMap r5 = r8.a
            java.lang.Object r5 = r5.get(r4)
            u55 r5 = (defpackage.u55) r5
            java.util.EnumMap r6 = r9.a
            java.lang.Object r6 = r6.get(r4)
            u55 r6 = (defpackage.u55) r6
            if (r5 != 0) goto L24
            goto L31
        L24:
            if (r6 == 0) goto L40
            u55 r7 = defpackage.u55.UNINITIALIZED
            if (r5 != r7) goto L2b
            goto L31
        L2b:
            if (r6 == r7) goto L40
            u55 r7 = defpackage.u55.POLICY
            if (r5 != r7) goto L33
        L31:
            r5 = r6
            goto L40
        L33:
            if (r6 == r7) goto L40
            u55 r7 = defpackage.u55.DENIED
            if (r5 == r7) goto L3f
            if (r6 != r7) goto L3c
            goto L3f
        L3c:
            u55 r5 = defpackage.u55.GRANTED
            goto L40
        L3f:
            r5 = r7
        L40:
            if (r5 == 0) goto L45
            r0.put(r4, r5)
        L45:
            int r3 = r3 + 1
            goto Ld
        L48:
            y55 r8 = new y55
            r9 = 100
            r8.<init>(r0, r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y55.j(y55):y55");
    }

    public final y55 k(y55 y55Var) {
        EnumMap enumMap = new EnumMap(x55.class);
        for (x55 x55Var : v55.STORAGE.n) {
            u55 u55Var = (u55) this.a.get(x55Var);
            if (u55Var == u55.UNINITIALIZED) {
                u55Var = (u55) y55Var.a.get(x55Var);
            }
            if (u55Var != null) {
                enumMap.put(x55Var, u55Var);
            }
        }
        return new y55(enumMap, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(a(this.b));
        for (x55 x55Var : v55.STORAGE.n) {
            sb.append(",");
            sb.append(x55Var.n);
            sb.append("=");
            u55 u55Var = (u55) this.a.get(x55Var);
            if (u55Var == null) {
                u55Var = u55.UNINITIALIZED;
            }
            sb.append(u55Var);
        }
        return sb.toString();
    }

    public y55(EnumMap enumMap, int i) {
        EnumMap enumMap2 = new EnumMap(x55.class);
        this.a = enumMap2;
        enumMap2.putAll(enumMap);
        this.b = i;
    }
}
