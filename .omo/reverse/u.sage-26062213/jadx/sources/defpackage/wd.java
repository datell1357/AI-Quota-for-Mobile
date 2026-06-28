package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wd extends xx1 implements df1 {
    public final /* synthetic */ Object o;
    public final /* synthetic */ n14 p;
    public final /* synthetic */ du2 q;
    public final /* synthetic */ pe1 r;
    public final /* synthetic */ he s;
    public final /* synthetic */ gp3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ ka0 f398u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wd(Object obj, n14 n14Var, du2 du2Var, pe1 pe1Var, he heVar, gp3 gp3Var, ka0 ka0Var) {
        super(2);
        this.o = obj;
        this.p = n14Var;
        this.q = du2Var;
        this.r = pe1Var;
        this.s = heVar;
        this.t = gp3Var;
        this.f398u = ka0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        du2 du2Var;
        ag1 ag1Var = (ag1) obj;
        int iIntValue = ((Number) obj2).intValue();
        boolean z = false;
        if (ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
            n14 n14Var = this.p;
            ws2 ws2Var = n14Var.e;
            ws2 ws2Var2 = n14Var.d;
            Object value = ws2Var.getValue();
            Object obj3 = this.o;
            boolean zG = ag1Var.g(nt1.g(obj3, value));
            Object objK = ag1Var.K();
            pe1 pe1Var = this.r;
            bx3 bx3Var = rb0.a;
            he heVar = this.s;
            if (zG || objK == bx3Var) {
                objK = (!nt1.g(obj3, ws2Var.getValue()) || (du2Var = this.q) == null) ? (ng0) pe1Var.k(heVar) : (ng0) pe1Var.k(du2Var);
                ag1Var.g0(objK);
            }
            ng0 ng0Var = (ng0) objK;
            boolean zG2 = ag1Var.g(nt1.g(n14Var.f().c(), obj3));
            Object objK2 = ag1Var.K();
            if (zG2 || objK2 == bx3Var) {
                objK2 = nt1.g(n14Var.f().c(), obj3) ? y31.b : ((ng0) pe1Var.k(heVar)).b;
                ag1Var.g0(objK2);
            }
            y31 y31Var = (y31) objK2;
            Object objK3 = ag1Var.K();
            if (objK3 == bx3Var) {
                objK3 = new ce(nt1.g(obj3, ws2Var2.getValue()));
                ag1Var.g0(objK3);
            }
            ce ceVar = (ce) objK3;
            o11 o11Var = ng0Var.a;
            boolean zH = ag1Var.h(ng0Var);
            Object objK4 = ag1Var.K();
            if (zH || objK4 == bx3Var) {
                objK4 = new ud(ng0Var);
                ag1Var.g0(objK4);
            }
            nd2 nd2VarT = kt4.T((ff1) objK4);
            ceVar.b.setValue(Boolean.valueOf(nt1.g(obj3, ws2Var2.getValue())));
            if (nt1.g(obj3, ws2Var.getValue()) && !nt1.g(obj3, ws2Var2.getValue()) && !nt1.g(obj3, n14Var.a.l())) {
                z = true;
            }
            ceVar.c.setValue(Boolean.valueOf(z));
            nd2 nd2VarC = nd2VarT.c(ceVar);
            boolean zH2 = ag1Var.h(obj3);
            Object objK5 = ag1Var.K();
            if (zH2 || objK5 == bx3Var) {
                objK5 = new c8(6, obj3);
                ag1Var.g0(objK5);
            }
            pe1 pe1Var2 = (pe1) objK5;
            boolean zF = ag1Var.f(y31Var);
            Object objK6 = ag1Var.K();
            if (zF || objK6 == bx3Var) {
                objK6 = new z(3, y31Var);
                ag1Var.g0(objK6);
            }
            mt1.a(this.p, pe1Var2, nd2VarC, o11Var, y31Var, (df1) objK6, qj0.U(1831990167, new vd(this.t, obj3, heVar, this.f398u), ag1Var), ag1Var, 100663296);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }
}
