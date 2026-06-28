package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lo3 implements df1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ ka0 o;
    public final /* synthetic */ df1 p;
    public final /* synthetic */ df1 q;
    public final /* synthetic */ ay3 r;
    public final /* synthetic */ long s;
    public final /* synthetic */ long t;

    public /* synthetic */ lo3(ka0 ka0Var, df1 df1Var, df1 df1Var2, ay3 ay3Var, long j, long j2, int i) {
        this.o = ka0Var;
        this.p = df1Var;
        this.q = df1Var2;
        this.r = ay3Var;
        this.s = j;
        this.t = j2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(1 & iIntValue, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    ag1Var.W(-168956728);
                    ag1Var.W(-942207887);
                    c75.e(this.o, this.p, this.q, this.r, this.s, this.t, ag1Var, 0);
                    ag1Var.p(false);
                    ag1Var.p(false);
                }
                break;
            default:
                ((Integer) obj2).getClass();
                c75.e(this.o, this.p, this.q, this.r, this.s, this.t, (ag1) obj, qj0.f0(1));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ lo3(df1 df1Var, ka0 ka0Var, df1 df1Var2, ay3 ay3Var, long j, long j2) {
        this.p = df1Var;
        this.o = ka0Var;
        this.q = df1Var2;
        this.r = ay3Var;
        this.s = j;
        this.t = j2;
    }
}
