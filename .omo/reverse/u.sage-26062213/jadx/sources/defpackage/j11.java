package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class j11 {
    public static final e34 a = new e34(l9.H, l9.I);
    public static final yq3 b = tv4.Q(0.0f, 400.0f, null, 5);
    public static final yq3 c = tv4.Q(0.0f, 400.0f, null, 5);
    public static final yq3 d;
    public static final yq3 e;

    static {
        Map map = ic4.a;
        d = tv4.Q(0.0f, 400.0f, new js1(4294967297L), 1);
        e = tv4.Q(0.0f, 400.0f, new rs1(4294967297L), 1);
    }

    public static final void a(n14 n14Var, ne1 ne1Var, ag1 ag1Var, int i) {
        ag1Var.X(-1186853286);
        int i2 = (ag1Var.f(n14Var) ? 4 : 2) | i | (ag1Var.h(ne1Var) ? 32 : 16);
        int i3 = 1;
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            ws2 ws2Var = n14Var.e;
            ws2 ws2Var2 = n14Var.d;
            boolean z = ws2Var.getValue() != null;
            if (nt1.g(n14Var.a.l(), ws2Var2.getValue()) && !z) {
                ne1Var.a();
            }
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            Object obj = objK;
            if (objK == bx3Var) {
                boolean[] zArr = {z};
                ag1Var.g0(zArr);
                obj = zArr;
            }
            boolean[] zArr2 = (boolean[]) obj;
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = new Object[1];
                ag1Var.g0(objK2);
            }
            Object[] objArr = (Object[]) objK2;
            if (!nt1.g(objArr[0], ws2Var2.getValue())) {
                if (!z && !zArr2[0]) {
                    ne1Var.a();
                }
                objArr[0] = ws2Var2.getValue();
            }
            zArr2[0] = z;
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ga(n14Var, ne1Var, i, i3);
        }
    }

    public static o11 b(yq3 yq3Var, aw awVar, int i) {
        aw awVar2 = mj1.B;
        if ((i & 1) != 0) {
            Map map = ic4.a;
            yq3Var = tv4.Q(0.0f, 400.0f, new rs1(4294967297L), 1);
        }
        if ((i & 2) != 0) {
            awVar = awVar2;
        }
        return new o11(new o14((k41) null, (sn3) null, new l30(nt1.g(awVar, mj1.z) ? mj1.r : nt1.g(awVar, awVar2) ? mj1.t : mj1.s, new do2(1, 14), yq3Var), (gg4) null, (LinkedHashMap) null, 123));
    }

    public static o11 c(z51 z51Var, int i) {
        if ((i & 1) != 0) {
            z51Var = tv4.Q(0.0f, 400.0f, null, 5);
        }
        return new o11(new o14(new k41(z51Var), (sn3) null, (l30) null, (gg4) null, (LinkedHashMap) null, 126));
    }

    public static y31 d(z51 z51Var, int i) {
        if ((i & 1) != 0) {
            z51Var = tv4.Q(0.0f, 400.0f, null, 5);
        }
        return new y31(new o14(new k41(z51Var), (sn3) null, (l30) null, (gg4) null, (LinkedHashMap) null, 126));
    }

    public static y31 e(yq3 yq3Var, aw awVar, int i) {
        aw awVar2 = mj1.B;
        if ((i & 1) != 0) {
            Map map = ic4.a;
            yq3Var = tv4.Q(0.0f, 400.0f, new rs1(4294967297L), 1);
        }
        if ((i & 2) != 0) {
            awVar = awVar2;
        }
        return new y31(new o14((k41) null, (sn3) null, new l30(nt1.g(awVar, mj1.z) ? mj1.r : nt1.g(awVar, awVar2) ? mj1.t : mj1.s, new do2(1, 15), yq3Var), (gg4) null, (LinkedHashMap) null, 123));
    }
}
