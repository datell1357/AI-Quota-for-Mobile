package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vo3 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ pe1 o;
    public final /* synthetic */ pe1 p;

    public /* synthetic */ vo3(pe1 pe1Var, pe1 pe1Var2, int i) {
        this.n = i;
        this.o = pe1Var;
        this.p = pe1Var2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        pe1 pe1Var = this.p;
        pe1 pe1Var2 = this.o;
        switch (i) {
            case 0:
                pe1Var2.k(obj);
                pe1Var.k(obj);
                break;
            default:
                pe1Var2.k(obj);
                pe1Var.k(obj);
                break;
        }
        return t64Var;
    }
}
