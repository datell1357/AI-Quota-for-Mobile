package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zs0 implements df1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ zs0(n8 n8Var, qi0 qi0Var, pg2 pg2Var, aj3 aj3Var, boolean z) {
        this.o = z;
        this.p = qi0Var;
        this.q = aj3Var;
        this.r = n8Var;
        this.s = pg2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.s;
        Object obj4 = this.r;
        Object obj5 = this.q;
        Object obj6 = this.p;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                on4.c((String) obj6, (String) obj5, (so1) obj4, this.o, (pe1) obj3, (ag1) obj, qj0.f0(55));
                break;
            default:
                qi0 qi0Var = (qi0) obj6;
                aj3 aj3Var = (aj3) obj5;
                n8 n8Var = (n8) obj4;
                pg2 pg2Var = (pg2) obj3;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    boolean zH = ag1Var.h(qi0Var) | ag1Var.h(aj3Var) | ag1Var.h(n8Var) | ag1Var.f(pg2Var);
                    Object objK = ag1Var.K();
                    if (zH || objK == rb0.a) {
                        k4 k4Var = new k4(qi0Var, (Object) n8Var, aj3Var, pg2Var, 8);
                        ag1Var.g0(k4Var);
                        objK = k4Var;
                    }
                    jv3.a(this.o, (pe1) objK, null, false, zf5.u(((ua2) ag1Var.j(wa2.a)).a.F, ag1Var), ag1Var, 0);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ zs0(String str, String str2, so1 so1Var, boolean z, pe1 pe1Var, int i) {
        this.p = str;
        this.q = str2;
        this.r = so1Var;
        this.o = z;
        this.s = pe1Var;
    }
}
