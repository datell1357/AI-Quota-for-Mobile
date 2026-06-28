package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ld3 implements df1 {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ int o;
    public final /* synthetic */ df1 p;
    public final /* synthetic */ ka0 q;
    public final /* synthetic */ df1 r;
    public final /* synthetic */ df1 s;
    public final /* synthetic */ df1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ hd4 f180u;

    public /* synthetic */ ld3(int i, df1 df1Var, ka0 ka0Var, df1 df1Var2, df1 df1Var3, wg2 wg2Var, df1 df1Var4) {
        this.o = i;
        this.p = df1Var;
        this.q = ka0Var;
        this.r = df1Var2;
        this.s = df1Var3;
        this.f180u = wg2Var;
        this.t = df1Var4;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                wg2 wg2Var = (wg2) this.f180u;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    n44.I(this.o, this.p, this.q, this.r, this.s, wg2Var, this.t, ag1Var, 0);
                }
                break;
            default:
                ((Integer) obj2).getClass();
                n44.I(this.o, this.p, this.q, this.r, this.s, this.f180u, this.t, (ag1) obj, qj0.f0(1));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ ld3(int i, df1 df1Var, ka0 ka0Var, df1 df1Var2, df1 df1Var3, hd4 hd4Var, df1 df1Var4, int i2) {
        this.o = i;
        this.p = df1Var;
        this.q = ka0Var;
        this.r = df1Var2;
        this.s = df1Var3;
        this.f180u = hd4Var;
        this.t = df1Var4;
    }
}
