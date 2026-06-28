package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ma extends xx1 implements df1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ df1 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ma(pb0 pb0Var, mh4 mh4Var, df1 df1Var) {
        super(2);
        this.o = 2;
        this.p = pb0Var;
        this.q = mh4Var;
        this.r = df1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        t64 t64Var = t64.a;
        df1 df1Var = this.r;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                n44.D((ne1) obj4, (vt0) obj3, (ka0) df1Var, (ag1) obj, qj0.f0(385));
                break;
            case 1:
                ((Number) obj2).intValue();
                kc0.a((sr2) obj4, (qv3) obj3, df1Var, (ag1) obj, qj0.f0(1));
                break;
            default:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    ((pb0) obj4).a(((mh4) obj3).n, df1Var, ag1Var, 0);
                }
                break;
        }
        return t64Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ma(Object obj, Object obj2, df1 df1Var, int i, int i2) {
        super(2);
        this.o = i2;
        this.p = obj;
        this.q = obj2;
        this.r = df1Var;
    }
}
