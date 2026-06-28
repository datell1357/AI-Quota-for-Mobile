package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lt3 extends xx1 implements df1 {
    public final /* synthetic */ pt3 o;
    public final /* synthetic */ nd2 p;
    public final /* synthetic */ df1 q;
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lt3(pt3 pt3Var, nd2 nd2Var, df1 df1Var, int i) {
        super(2);
        this.o = pt3Var;
        this.p = nd2Var;
        this.q = df1Var;
        this.r = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ((Number) obj2).intValue();
        int iF0 = qj0.f0(this.r | 1);
        mt3.b(this.o, this.p, this.q, (ag1) obj, iF0);
        return t64.a;
    }
}
