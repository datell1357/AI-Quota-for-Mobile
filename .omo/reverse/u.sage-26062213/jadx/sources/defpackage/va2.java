package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class va2 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ e54 o;
    public final /* synthetic */ ka0 p;

    public /* synthetic */ va2(e54 e54Var, ka0 ka0Var, int i) {
        this.n = i;
        this.o = e54Var;
        this.p = ka0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        ka0 ka0Var = this.p;
        e54 e54Var = this.o;
        int i2 = 1;
        ag1 ag1Var = (ag1) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    ex2.a(qj0.U(-241536773, new va2(e54Var, ka0Var, i2), ag1Var), ag1Var, 6);
                }
                break;
            default:
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    lx3.a(e54Var.j, ka0Var, ag1Var, 0);
                }
                break;
        }
        return t64Var;
    }
}
