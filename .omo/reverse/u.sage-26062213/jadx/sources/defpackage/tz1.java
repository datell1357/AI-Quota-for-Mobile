package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tz1 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ nd2 o;
    public final /* synthetic */ n12 p;
    public final /* synthetic */ ds2 q;
    public final /* synthetic */ to0 r;
    public final /* synthetic */ boolean s;
    public final /* synthetic */ wa t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ pe1 f347u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;

    public /* synthetic */ tz1(nd2 nd2Var, n12 n12Var, ds2 ds2Var, Object obj, Object obj2, to0 to0Var, boolean z, wa waVar, pe1 pe1Var, int i, int i2) {
        this.n = i2;
        this.o = nd2Var;
        this.p = n12Var;
        this.q = ds2Var;
        this.v = obj;
        this.w = obj2;
        this.r = to0Var;
        this.s = z;
        this.t = waVar;
        this.f347u = pe1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.w;
        Object obj4 = this.v;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int iF0 = qj0.f0(24961);
                qj0.i(this.o, this.p, this.q, (qh) obj4, (bw) obj3, this.r, this.s, this.t, this.f347u, (ag1) obj, iF0);
                break;
            default:
                ((Integer) obj2).getClass();
                int iF02 = qj0.f0(391);
                qj0.h(this.o, this.p, this.q, (sh) obj4, (aw) obj3, this.r, this.s, this.t, this.f347u, (ag1) obj, iF02);
                break;
        }
        return t64Var;
    }
}
