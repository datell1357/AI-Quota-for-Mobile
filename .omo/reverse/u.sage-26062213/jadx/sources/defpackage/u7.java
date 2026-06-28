package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u7 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ ef1 s;

    public /* synthetic */ u7(Object obj, Object obj2, Object obj3, ef1 ef1Var, int i, int i2) {
        this.n = i2;
        this.p = obj;
        this.q = obj2;
        this.r = obj3;
        this.s = ef1Var;
        this.o = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        int i2 = this.o;
        ef1 ef1Var = this.s;
        Object obj3 = this.r;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                x7.d((ne1) obj4, (nd2) this.q, (vt0) obj3, (ka0) ef1Var, (ag1) obj, qj0.f0(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                int iF0 = qj0.f0(i2 | 1);
                kt4.g((Boolean) obj4, this.q, (p22) obj3, (pe1) ef1Var, (ag1) obj, iF0);
                break;
        }
        return t64Var;
    }
}
