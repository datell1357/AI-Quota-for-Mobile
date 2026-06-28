package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d02 implements df1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ a12 o;
    public final /* synthetic */ int p;
    public final /* synthetic */ Object q;

    public /* synthetic */ d02(int i, a12 a12Var, Object obj) {
        this.o = a12Var;
        this.p = i;
        this.q = obj;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj3 = this.q;
        int i2 = this.p;
        a12 a12Var = this.o;
        ag1 ag1Var = (ag1) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int iIntValue = num.intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    a12Var.a(i2, obj3, ag1Var, 0);
                }
                break;
            default:
                num.getClass();
                a12Var.a(i2, obj3, ag1Var, qj0.f0(1));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ d02(a12 a12Var, int i, Object obj, int i2) {
        this.o = a12Var;
        this.p = i;
        this.q = obj;
    }
}
