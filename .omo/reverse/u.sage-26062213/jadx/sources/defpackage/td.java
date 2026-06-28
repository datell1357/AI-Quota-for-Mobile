package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class td extends xx1 implements df1 {
    public final /* synthetic */ n14 o;
    public final /* synthetic */ nd2 p;
    public final /* synthetic */ pe1 q;
    public final /* synthetic */ cw r;
    public final /* synthetic */ pe1 s;
    public final /* synthetic */ ka0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f337u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public td(n14 n14Var, nd2 nd2Var, pe1 pe1Var, cw cwVar, pe1 pe1Var2, ka0 ka0Var, int i) {
        super(2);
        this.o = n14Var;
        this.p = nd2Var;
        this.q = pe1Var;
        this.r = cwVar;
        this.s = pe1Var2;
        this.t = ka0Var;
        this.f337u = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ((Number) obj2).intValue();
        qn0.a(this.o, this.p, this.q, this.r, this.s, this.t, (ag1) obj, qj0.f0(this.f337u | 1));
        return t64.a;
    }
}
