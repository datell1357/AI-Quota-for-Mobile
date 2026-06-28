package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ed extends xx1 implements df1 {
    public final /* synthetic */ pe1 o;
    public final /* synthetic */ nd2 p;
    public final /* synthetic */ pe1 q;
    public final /* synthetic */ int r;
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed(pe1 pe1Var, nd2 nd2Var, pe1 pe1Var2, int i, int i2) {
        super(2);
        this.o = pe1Var;
        this.p = nd2Var;
        this.q = pe1Var2;
        this.r = i;
        this.s = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ((Number) obj2).intValue();
        qj0.d(this.o, this.p, this.q, (ag1) obj, qj0.f0(this.r | 1), this.s);
        return t64.a;
    }
}
