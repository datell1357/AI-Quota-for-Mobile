package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class me extends xx1 implements df1 {
    public final /* synthetic */ boolean o;
    public final /* synthetic */ nd2 p;
    public final /* synthetic */ o11 q;
    public final /* synthetic */ y31 r;
    public final /* synthetic */ String s;
    public final /* synthetic */ ka0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f208u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public me(boolean z, nd2 nd2Var, o11 o11Var, y31 y31Var, String str, ka0 ka0Var, int i) {
        super(2);
        this.o = z;
        this.p = nd2Var;
        this.q = o11Var;
        this.r = y31Var;
        this.s = str;
        this.t = ka0Var;
        this.f208u = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ((Number) obj2).intValue();
        mt1.c(this.o, this.p, this.q, this.r, this.s, this.t, (ag1) obj, qj0.f0(this.f208u | 1));
        return t64.a;
    }
}
