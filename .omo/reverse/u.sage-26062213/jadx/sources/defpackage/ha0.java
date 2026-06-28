package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ha0 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ int p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public /* synthetic */ ha0(a12 a12Var, Object obj, int i, Object obj2, int i2) {
        this.n = 1;
        this.r = a12Var;
        this.o = obj;
        this.p = i;
        this.q = obj2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        int i2 = this.p;
        Object obj3 = this.o;
        Object obj4 = this.q;
        t64 t64Var = t64.a;
        Object obj5 = this.r;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ((ka0) obj5).g(obj3, obj4, (ag1) obj, qj0.f0(i2) | 1);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iF0 = qj0.f0(1);
                qn0.e((a12) obj5, this.o, this.p, this.q, (ag1) obj, iF0);
                break;
            case 2:
                ((Integer) obj2).getClass();
                ((r12) obj4).e(obj3, (ka0) obj5, (ag1) obj, qj0.f0(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).intValue();
                kt4.h((p22) obj5, (w22) obj3, (pe1) obj4, (ag1) obj, qj0.f0(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                ((gc3) obj4).e(obj3, (ka0) obj5, (ag1) obj, qj0.f0(i2 | 1));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ ha0(fc3 fc3Var, Object obj, ka0 ka0Var, int i, int i2) {
        this.n = i2;
        this.q = fc3Var;
        this.o = obj;
        this.r = ka0Var;
        this.p = i;
    }

    public /* synthetic */ ha0(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.n = i2;
        this.r = obj;
        this.o = obj2;
        this.q = obj3;
        this.p = i;
    }
}
