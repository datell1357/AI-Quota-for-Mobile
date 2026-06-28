package defpackage;

import android.content.Context;
import java.util.List;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v82 implements ff1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ v82(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.n;
        t64 t64Var = t64.a;
        bx3 bx3Var = rb0.a;
        Object obj4 = this.q;
        Object obj5 = this.p;
        Object obj6 = this.o;
        switch (i) {
            case 0:
                xi2 xi2Var = (xi2) obj6;
                String str = (String) obj5;
                MainActivity mainActivity = (MainActivity) obj4;
                zr2 zr2Var = (zr2) obj;
                ag1 ag1Var = (ag1) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                int i2 = MainActivity.C;
                zr2Var.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= ag1Var.f(zr2Var) ? 4 : 2;
                }
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 19) != 18)) {
                    ag1Var.Q();
                } else {
                    nd2 nd2VarO = k75.o(is0.J(on3.b, zr2Var), zr2Var);
                    boolean zH = ag1Var.h(mainActivity) | ag1Var.h(xi2Var);
                    Object objK = ag1Var.K();
                    if (zH || objK == bx3Var) {
                        objK = new m(13, mainActivity, xi2Var);
                        ag1Var.g0(objK);
                    }
                    n44.G(xi2Var, str, nd2VarO, null, null, null, null, null, (pe1) objK, ag1Var, 0);
                }
                break;
            case 1:
                n8 n8Var = (n8) obj6;
                Context context = (Context) obj5;
                tr3 tr3Var = (tr3) obj4;
                ag1 ag1Var2 = (ag1) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    ag1Var2.Q();
                } else {
                    if (((List) tr3Var.getValue()).isEmpty()) {
                        ag1Var2.W(2002844703);
                        ag1Var2.p(false);
                    } else {
                        ag1Var2.W(2002049956);
                        boolean zH2 = ag1Var2.h(n8Var) | ag1Var2.h(context);
                        Object objK2 = ag1Var2.K();
                        if (zH2 || objK2 == bx3Var) {
                            objK2 = new h4(9, n8Var, context);
                            ag1Var2.g0(objK2);
                        }
                        bi4.b((ne1) objK2, null, false, null, null, zf5.c, ag1Var2, 1572864, 62);
                        ag1Var2.p(false);
                    }
                    if (!((List) tr3Var.getValue()).isEmpty()) {
                        ag1Var2.W(2002950289);
                        boolean zH3 = ag1Var2.h(n8Var);
                        Object objK3 = ag1Var2.K();
                        if (zH3 || objK3 == bx3Var) {
                            objK3 = new m8(n8Var, 1);
                            ag1Var2.g0(objK3);
                        }
                        bi4.b((ne1) objK3, null, false, null, null, zf5.d, ag1Var2, 1572864, 62);
                        ag1Var2.p(false);
                    } else {
                        ag1Var2.W(2003271263);
                        ag1Var2.p(false);
                    }
                }
                break;
            case 2:
                Context context2 = (Context) obj6;
                pg2 pg2Var = (pg2) obj5;
                ts2 ts2Var = (ts2) obj4;
                ag1 ag1Var3 = (ag1) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var3.N(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    ag1Var3.Q();
                } else if (((String) pg2Var.getValue()).length() <= 0) {
                    ag1Var3.W(-1136122564);
                    ag1Var3.p(false);
                } else {
                    ag1Var3.W(-1137050890);
                    boolean zH4 = ag1Var3.h(context2);
                    Object objK4 = ag1Var3.K();
                    if (zH4 || objK4 == bx3Var) {
                        objK4 = new h4(10, context2, pg2Var);
                        ag1Var3.g0(objK4);
                    }
                    bi4.b((ne1) objK4, null, false, null, null, ca.c, ag1Var3, 1572864, 62);
                    Object objK5 = ag1Var3.K();
                    if (objK5 == bx3Var) {
                        objK5 = new h4(11, pg2Var, ts2Var, z);
                        ag1Var3.g0(objK5);
                    }
                    bi4.b((ne1) objK5, null, false, null, null, ca.d, ag1Var3, 1572870, 62);
                    ag1Var3.p(false);
                }
                break;
            default:
                pt ptVar = (pt) obj6;
                ne1 ne1Var = (ne1) obj5;
                pg2 pg2Var2 = (pg2) obj4;
                ag1 ag1Var4 = (ag1) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((db3) obj).getClass();
                if (!ag1Var4.N(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    ag1Var4.Q();
                } else {
                    boolean zH5 = ag1Var4.h(ptVar);
                    Object objK6 = ag1Var4.K();
                    if (zH5 || objK6 == bx3Var) {
                        objK6 = new qs(ptVar, 6);
                        ag1Var4.g0(objK6);
                    }
                    bi4.b((ne1) objK6, null, !((Boolean) pg2Var2.getValue()).booleanValue(), null, null, qj0.U(1332173771, new sp0(24, pg2Var2), ag1Var4), ag1Var4, 1572864, 58);
                    boolean zF = ag1Var4.f(ne1Var);
                    Object objK7 = ag1Var4.K();
                    if (zF || objK7 == bx3Var) {
                        objK7 = new zi1(3, ne1Var);
                        ag1Var4.g0(objK7);
                    }
                    bi4.b((ne1) objK7, null, false, null, null, dm0.j, ag1Var4, 1572864, 62);
                }
                break;
        }
        return t64Var;
    }
}
