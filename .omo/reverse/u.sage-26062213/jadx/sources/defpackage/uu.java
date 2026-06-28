package defpackage;

import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uu {
    public static final uu a = new uu();
    public static final BitSet b = qv3.k(61, 59, 44);
    public static final BitSet c = qv3.k(59, 44);

    public static ru[] a(b40 b40Var, ky0 ky0Var) {
        w80.L(b40Var, "Char array buffer");
        ArrayList arrayList = new ArrayList();
        while (!ky0Var.a()) {
            ru ruVarB = b(b40Var, ky0Var);
            if (!ruVarB.n.isEmpty() || ruVarB.o != null) {
                arrayList.add(ruVarB);
            }
        }
        return (ru[]) arrayList.toArray(new ru[arrayList.size()]);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.ru b(defpackage.b40 r6, defpackage.ky0 r7) {
        /*
            java.lang.String r0 = "Char array buffer"
            defpackage.w80.L(r6, r0)
            java.lang.String r0 = "Parser cursor"
            defpackage.w80.L(r7, r0)
            ev r0 = c(r6, r7)
            boolean r1 = r7.a()
            if (r1 != 0) goto L61
            int r1 = r7.d
            int r2 = r1 + (-1)
            char[] r3 = r6.n
            char r2 = r3[r2]
            r3 = 44
            if (r2 == r3) goto L61
            int r2 = r7.c
            r4 = r1
        L23:
            if (r1 >= r2) goto L35
            char[] r5 = r6.n
            char r5 = r5[r1]
            boolean r5 = defpackage.qv3.r(r5)
            if (r5 != 0) goto L30
            goto L35
        L30:
            int r4 = r4 + 1
            int r1 = r1 + 1
            goto L23
        L35:
            r7.b(r4)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L3d:
            boolean r2 = r7.a()
            if (r2 != 0) goto L54
            ev r2 = c(r6, r7)
            r1.add(r2)
            int r2 = r7.d
            int r2 = r2 + (-1)
            char[] r4 = r6.n
            char r2 = r4[r2]
            if (r2 != r3) goto L3d
        L54:
            int r6 = r1.size()
            sh2[] r6 = new defpackage.sh2[r6]
            java.lang.Object[] r6 = r1.toArray(r6)
            sh2[] r6 = (defpackage.sh2[]) r6
            goto L62
        L61:
            r6 = 0
        L62:
            java.lang.String r7 = r0.n
            java.lang.String r0 = r0.o
            ru r1 = new ru
            r1.<init>(r7, r0, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uu.b(b40, ky0):ru");
    }

    public static ev c(b40 b40Var, ky0 ky0Var) {
        w80.L(b40Var, "Char array buffer");
        w80.L(ky0Var, "Parser cursor");
        String strS = qv3.s(b40Var, ky0Var, b);
        if (ky0Var.a()) {
            return new ev(strS, null);
        }
        int i = ky0Var.d;
        char c2 = b40Var.n[i];
        ky0Var.b(i + 1);
        if (c2 != '=') {
            return new ev(strS, null);
        }
        String strT = qv3.t(b40Var, ky0Var, c);
        if (!ky0Var.a()) {
            ky0Var.b(ky0Var.d + 1);
        }
        return new ev(strS, strT);
    }
}
