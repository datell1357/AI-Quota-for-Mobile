package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rz implements df1 {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ ka0 o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ ne1 q;
    public final /* synthetic */ int r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f303u;
    public final /* synthetic */ Object v;

    public /* synthetic */ rz(ka0 ka0Var, ka0 ka0Var2, ka0 ka0Var3, df1 df1Var, boolean z, ne1 ne1Var, ne1 ne1Var2, int i) {
        this.o = ka0Var;
        this.s = ka0Var2;
        this.t = ka0Var3;
        this.f303u = df1Var;
        this.p = z;
        this.q = ne1Var;
        this.v = ne1Var2;
        this.r = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.v;
        Object obj4 = this.f303u;
        Object obj5 = this.t;
        Object obj6 = this.s;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int iF0 = qj0.f0(805306369);
                dm0.i(this.q, (nd2) obj6, this.p, (jl3) obj5, (kz) obj4, (zr2) obj3, this.o, (ag1) obj, iF0, this.r);
                break;
            default:
                ((Integer) obj2).getClass();
                int iF02 = qj0.f0(this.r | 1);
                zj2.c(this.o, (ka0) obj6, (ka0) obj5, (df1) obj4, this.p, this.q, (ne1) obj3, (ag1) obj, iF02);
                break;
        }
        return t64Var;
    }

    public /* synthetic */ rz(ne1 ne1Var, nd2 nd2Var, boolean z, jl3 jl3Var, kz kzVar, zr2 zr2Var, ka0 ka0Var, int i, int i2) {
        this.q = ne1Var;
        this.s = nd2Var;
        this.p = z;
        this.t = jl3Var;
        this.f303u = kzVar;
        this.v = zr2Var;
        this.o = ka0Var;
        this.r = i2;
    }
}
