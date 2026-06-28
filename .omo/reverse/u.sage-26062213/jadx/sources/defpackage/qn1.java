package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qn1 {
    public static final nd2 a = on3.c(kd2.b, qn0.f);

    public static final void a(so1 so1Var, String str, nd2 nd2Var, long j, ag1 ag1Var, int i, int i2) {
        int i3;
        nd2 nd2Var2;
        long j2;
        ag1Var.X(-126890956);
        if ((i & 6) == 0) {
            i3 = (ag1Var.f(so1Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= ag1Var.f(str) ? 32 : 16;
        }
        int i4 = i2 & 4;
        if (i4 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= ag1Var.f(nd2Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= ((i2 & 8) == 0 && ag1Var.e(j)) ? 2048 : 1024;
        }
        if (ag1Var.N(i3 & 1, (i3 & 1171) != 1170)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                if (i4 != 0) {
                    nd2Var = kd2.b;
                }
                if ((i2 & 8) != 0) {
                    j = ((t70) ag1Var.j(bg0.a)).a;
                    i3 &= -7169;
                }
                nd2 nd2Var3 = nd2Var;
                long j3 = j;
                ag1Var.q();
                b(nt1.O(so1Var, ag1Var), str, nd2Var3, j3, ag1Var, (i3 & 112) | 8 | (i3 & 896) | (i3 & 7168), 0);
                j2 = j3;
                nd2Var2 = nd2Var3;
            } else {
                ag1Var.Q();
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                }
                nd2 nd2Var32 = nd2Var;
                long j32 = j;
                ag1Var.q();
                b(nt1.O(so1Var, ag1Var), str, nd2Var32, j32, ag1Var, (i3 & 112) | 8 | (i3 & 896) | (i3 & 7168), 0);
                j2 = j32;
                nd2Var2 = nd2Var32;
            }
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            j2 = j;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new pn1(so1Var, str, nd2Var2, j2, i, i2, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(defpackage.gs2 r16, java.lang.String r17, defpackage.nd2 r18, long r19, defpackage.ag1 r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qn1.b(gs2, java.lang.String, nd2, long, ag1, int, int):void");
    }
}
