package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nb0 extends xx1 implements df1 {
    public final /* synthetic */ int o = 1;
    public final /* synthetic */ pb0 p;
    public final /* synthetic */ q9 q;
    public final /* synthetic */ df1 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nb0(q9 q9Var, pb0 pb0Var, df1 df1Var) {
        super(2);
        this.q = q9Var;
        this.p = pb0Var;
        this.r = df1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        t64 t64Var = t64.a;
        df1 df1Var = this.r;
        q9 q9Var = this.q;
        pb0 pb0Var = this.p;
        switch (i) {
            case 0:
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    ag1Var.W(866651995);
                    kc0.a(q9Var, pb0Var.l, df1Var, ag1Var, 0);
                    ag1Var.p(false);
                }
                break;
            default:
                ((Number) obj2).intValue();
                pb0Var.a(q9Var, df1Var, (ag1) obj, qj0.f0(1));
                break;
        }
        return t64Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nb0(pb0 pb0Var, q9 q9Var, df1 df1Var, int i) {
        super(2);
        this.p = pb0Var;
        this.q = q9Var;
        this.r = df1Var;
    }
}
