package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eo3 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ fo3 o;

    public /* synthetic */ eo3(fo3 fo3Var, int i) {
        this.n = i;
        this.o = fo3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        fo3 fo3Var = this.o;
        switch (i) {
            case 0:
                ka0 ka0Var = qj0.a;
                ag1 ag1Var = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (!ag1Var.N(1 & iIntValue, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    fo3Var.getClass();
                    ka0Var.d(fo3Var, ag1Var, 0);
                }
                break;
            default:
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (!ag1Var2.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var2.Q();
                } else {
                    lx3.b(fo3Var.a.a, null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ag1Var2, 0, 0, 262142);
                }
                break;
        }
        return t64Var;
    }
}
