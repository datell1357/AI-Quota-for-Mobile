package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ia0 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ ia0(int i, int i2, Object obj, Object obj2) {
        this.n = i2;
        this.p = obj;
        this.q = obj2;
        this.o = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        int i2 = this.o;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ((ka0) obj4).e(obj3, (ag1) obj, qj0.f0(i2) | 1);
                break;
            case 1:
                ((Integer) obj2).getClass();
                gg4.a((j03) obj4, (df1) obj3, (ag1) obj, qj0.f0(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                gg4.b((j03[]) obj4, (df1) obj3, (ag1) obj, qj0.f0(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                k30.b((fo3) obj4, (nd2) obj3, (ag1) obj, qj0.f0(i2 | 1));
                break;
            default:
                ((Integer) obj2).intValue();
                ((n14) obj4).a(obj3, (ag1) obj, qj0.f0(i2 | 1));
                break;
        }
        return t64Var;
    }
}
