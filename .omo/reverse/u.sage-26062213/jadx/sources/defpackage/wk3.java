package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wk3 implements df1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ wk3(qi0 qi0Var, pg2 pg2Var, pg2 pg2Var2, aj3 aj3Var, Context context) {
        this.o = qi0Var;
        this.p = aj3Var;
        this.q = context;
        this.r = pg2Var;
        this.s = pg2Var2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.s;
        Object obj4 = this.r;
        Object obj5 = this.q;
        Object obj6 = this.p;
        Object obj7 = this.o;
        switch (i) {
            case 0:
                qi0 qi0Var = (qi0) obj7;
                aj3 aj3Var = (aj3) obj6;
                Context context = (Context) obj5;
                pg2 pg2Var = (pg2) obj4;
                tr3 tr3Var = (tr3) obj3;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    boolean zBooleanValue = ((Boolean) tr3Var.getValue()).booleanValue();
                    boolean zH = ag1Var.h(qi0Var) | ag1Var.h(aj3Var) | ag1Var.h(context) | ag1Var.f(pg2Var);
                    Object objK = ag1Var.K();
                    if (zH || objK == rb0.a) {
                        k4 k4Var = new k4(qi0Var, (Object) context, aj3Var, pg2Var, 7);
                        ag1Var.g0(k4Var);
                        objK = k4Var;
                    }
                    jv3.a(zBooleanValue, (pe1) objK, null, false, zf5.u(((ua2) ag1Var.j(wa2.a)).a.F, ag1Var), ag1Var, 0);
                }
                break;
            default:
                ((Integer) obj2).getClass();
                qj0.o((y84) obj7, (n8) obj6, (ne1) obj5, (pe1) obj4, (ne1) obj3, (ag1) obj, qj0.f0(65));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ wk3(y84 y84Var, n8 n8Var, ne1 ne1Var, pe1 pe1Var, ne1 ne1Var2, int i) {
        this.o = y84Var;
        this.p = n8Var;
        this.q = ne1Var;
        this.r = pe1Var;
        this.s = ne1Var2;
    }
}
