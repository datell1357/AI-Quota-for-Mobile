package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class le extends xx1 implements df1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ nd2 q;
    public final /* synthetic */ o11 r;
    public final /* synthetic */ y31 s;
    public final /* synthetic */ String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ ka0 f181u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ le(boolean z, nd2 nd2Var, o11 o11Var, y31 y31Var, String str, ka0 ka0Var, int i, int i2) {
        super(2);
        this.o = i2;
        this.p = z;
        this.q = nd2Var;
        this.r = o11Var;
        this.s = y31Var;
        this.t = str;
        this.f181u = ka0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                int iF0 = qj0.f0(200065);
                mt1.b(this.p, this.q, this.r, this.s, this.t, this.f181u, (ag1) obj, iF0);
                break;
            default:
                ((Number) obj2).intValue();
                int iF02 = qj0.f0(1597447);
                mt1.d(this.p, this.q, this.r, this.s, this.t, this.f181u, (ag1) obj, iF02);
                break;
        }
        return t64Var;
    }
}
