package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xd extends xx1 implements df1 {
    public final /* synthetic */ int o = 0;
    public final /* synthetic */ n14 p;
    public final /* synthetic */ pe1 q;
    public final /* synthetic */ nd2 r;
    public final /* synthetic */ ka0 s;
    public final /* synthetic */ int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f407u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd(n14 n14Var, pe1 pe1Var, nd2 nd2Var, o11 o11Var, y31 y31Var, df1 df1Var, ka0 ka0Var, int i) {
        super(2);
        this.p = n14Var;
        this.q = pe1Var;
        this.r = nd2Var;
        this.f407u = o11Var;
        this.v = y31Var;
        this.w = df1Var;
        this.s = ka0Var;
        this.t = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        t64 t64Var = t64.a;
        int i2 = this.t;
        Object obj3 = this.w;
        Object obj4 = this.v;
        Object obj5 = this.f407u;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                int iF0 = qj0.f0(i2 | 1);
                n14 n14Var = this.p;
                nd2 nd2Var = this.r;
                pe1 pe1Var = this.q;
                qn0.b(n14Var, nd2Var, pe1Var, (cw) obj3, (pe1) obj5, (pe1) obj4, this.s, (ag1) obj, iF0);
                break;
            default:
                ((Number) obj2).intValue();
                int iF02 = qj0.f0(i2 | 1);
                n14 n14Var2 = this.p;
                pe1 pe1Var2 = this.q;
                nd2 nd2Var2 = this.r;
                mt1.a(n14Var2, pe1Var2, nd2Var2, (o11) obj5, (y31) obj4, (df1) obj3, this.s, (ag1) obj, iF02);
                break;
        }
        return t64Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd(n14 n14Var, nd2 nd2Var, pe1 pe1Var, cw cwVar, pe1 pe1Var2, pe1 pe1Var3, ka0 ka0Var, int i) {
        super(2);
        this.p = n14Var;
        this.r = nd2Var;
        this.q = pe1Var;
        this.w = cwVar;
        this.f407u = pe1Var2;
        this.v = pe1Var3;
        this.s = ka0Var;
        this.t = i;
    }
}
