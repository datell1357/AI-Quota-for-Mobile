package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pa extends xx1 implements df1 {
    public final /* synthetic */ nd2 o;
    public final /* synthetic */ df1 p;
    public final /* synthetic */ int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pa(nd2 nd2Var, df1 df1Var, int i) {
        super(2);
        this.o = nd2Var;
        this.p = df1Var;
        this.q = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ((Number) obj2).intValue();
        int iF0 = qj0.f0(this.q | 1);
        n44.J(this.o, this.p, (ag1) obj, iF0);
        return t64.a;
    }
}
