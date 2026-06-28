package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pn1 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ String o;
    public final /* synthetic */ nd2 p;
    public final /* synthetic */ long q;
    public final /* synthetic */ int r;
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    public /* synthetic */ pn1(Object obj, String str, nd2 nd2Var, long j, int i, int i2, int i3) {
        this.n = i3;
        this.t = obj;
        this.o = str;
        this.p = nd2Var;
        this.q = j;
        this.r = i;
        this.s = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        int i2 = this.r;
        Object obj3 = this.t;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int iF0 = qj0.f0(i2 | 1);
                qn1.b((gs2) obj3, this.o, this.p, this.q, (ag1) obj, iF0, this.s);
                break;
            default:
                ((Integer) obj2).getClass();
                int iF02 = qj0.f0(i2 | 1);
                qn1.a((so1) obj3, this.o, this.p, this.q, (ag1) obj, iF02, this.s);
                break;
        }
        return t64Var;
    }
}
