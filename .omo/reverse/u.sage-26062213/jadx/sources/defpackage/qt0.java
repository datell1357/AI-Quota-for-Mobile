package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qt0 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public qt0(yh2 yh2Var, ae aeVar) {
        this.n = 2;
        this.p = yh2Var;
        this.o = aeVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.o;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                ag1 ag1Var = (ag1) obj;
                if ((((Number) obj2).intValue() & 3) == 2 && ag1Var.z()) {
                    ag1Var.Q();
                } else {
                    ((tt0) obj3).t.d((yh2) obj4, ag1Var, 0);
                }
                break;
            case 1:
                ag1 ag1Var2 = (ag1) obj;
                if ((((Number) obj2).intValue() & 3) == 2 && ag1Var2.z()) {
                    ag1Var2.Q();
                } else {
                    qj0.l((fc3) obj3, (ka0) obj4, ag1Var2, 0);
                }
                break;
            default:
                ag1 ag1Var3 = (ag1) obj;
                yh2 yh2Var = (yh2) obj4;
                if ((((Number) obj2).intValue() & 3) == 2 && ag1Var3.z()) {
                    ag1Var3.Q();
                } else {
                    qi2 qi2Var = yh2Var.o;
                    qi2Var.getClass();
                    ((va0) qi2Var).s.n((ae) obj3, yh2Var, ag1Var3, 0);
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ qt0(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }
}
