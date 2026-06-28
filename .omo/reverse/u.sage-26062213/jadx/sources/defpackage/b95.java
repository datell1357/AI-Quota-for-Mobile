package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b95 {
    public static final b95 b;
    public final pp1 a;

    static {
        int i = pp1.s;
        b = new b95(g53.f107u);
    }

    public b95(pp1 pp1Var) {
        this.a = pp1Var;
    }

    public static b95 a(cn4 cn4Var) throws fo4 {
        String strW;
        long j;
        a95 a95Var;
        int iG = cn4Var.G();
        if (iG < 0) {
            q73.t("Negative number of flags");
            return null;
        }
        int i = pp1.s;
        op1 op1Var = new op1();
        long j2 = 0;
        for (int i2 = 0; i2 < iG; i2++) {
            long jH = cn4Var.H();
            int i3 = (int) jH;
            long j3 = jH >>> 3;
            if (j3 == 0) {
                j = 0;
                strW = cn4Var.w();
            } else {
                long j4 = j3 + j2;
                if (j4 > 2305843009213693951L) {
                    q73.t("Flag name larger than max size");
                    return null;
                }
                strW = null;
                j = j4;
            }
            int i4 = i3 & 7;
            if (i4 == 0 || i4 == 1) {
                a95Var = new a95(j, strW, i4, 0L, null);
            } else if (i4 == 2) {
                a95Var = new a95(j, strW, i4, cn4Var.H(), null);
            } else if (i4 == 3) {
                a95Var = new a95(j, strW, i4, Double.doubleToRawLongBits(cn4Var.o()), null);
            } else if (i4 == 4) {
                a95Var = new a95(j, strW, i4, 0L, cn4Var.w());
            } else {
                if (i4 != 5) {
                    q73.t(di0.r(i4, "Unrecognized flag type ", new StringBuilder(String.valueOf(i4).length() + 23)));
                    return null;
                }
                a95Var = new a95(j, strW, i4, 0L, cn4Var.z());
            }
            long j5 = a95Var.n;
            if (j5 != 0) {
                j2 = j5;
            }
            op1Var.a(a95Var);
        }
        return new b95(op1Var.c());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b95)) {
            return false;
        }
        return this.a.equals(((b95) obj).a);
    }

    public final int hashCode() {
        pp1 pp1Var = this.a;
        pp1Var.getClass();
        return nt1.F(pp1Var);
    }
}
