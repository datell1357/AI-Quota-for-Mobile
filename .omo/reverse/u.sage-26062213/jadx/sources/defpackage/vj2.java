package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vj2 implements df1 {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ ka0 o;
    public final /* synthetic */ long p;
    public final /* synthetic */ long q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ vj2(df1 df1Var, ka0 ka0Var, df1 df1Var2, long j, long j2) {
        this.r = df1Var;
        this.o = ka0Var;
        this.s = df1Var2;
        this.p = j;
        this.q = j2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.s;
        Object obj4 = this.r;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                zj2.a((nd2) obj4, this.p, this.q, (hd4) obj3, this.o, (ag1) obj, qj0.f0(196609));
                break;
            default:
                df1 df1Var = (df1) obj4;
                df1 df1Var2 = (df1) obj3;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    gg4.a(lx3.a.a(g54.a(mt1.j, ag1Var)), qj0.U(969655473, new lo3(df1Var, this.o, df1Var2, g54.a(mt1.d, ag1Var), this.p, this.q), ag1Var), ag1Var, 56);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ vj2(nd2 nd2Var, long j, long j2, hd4 hd4Var, ka0 ka0Var, int i) {
        this.r = nd2Var;
        this.p = j;
        this.q = j2;
        this.s = hd4Var;
        this.o = ka0Var;
    }
}
