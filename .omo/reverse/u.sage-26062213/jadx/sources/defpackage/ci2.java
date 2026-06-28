package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ci2 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ ef1 p;

    public /* synthetic */ ci2(pe1 pe1Var, boolean z) {
        this.n = 1;
        this.o = z;
        this.p = pe1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        boolean z = this.o;
        t64 t64Var = t64.a;
        ef1 ef1Var = this.p;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                dm0.h(z, (df1) ef1Var, (ag1) obj, qj0.f0(1));
                break;
            case 1:
                pe1 pe1Var = (pe1) ef1Var;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    jv3.a(this.o, pe1Var, null, false, zf5.u(((ua2) ag1Var.j(wa2.a)).a.F, ag1Var), ag1Var, 0);
                }
                break;
            default:
                ((Integer) obj2).getClass();
                gy3.a(z, (ka0) ef1Var, (ag1) obj, qj0.f0(385));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ ci2(boolean z, df1 df1Var, int i, int i2) {
        this.n = i2;
        this.o = z;
        this.p = df1Var;
    }
}
