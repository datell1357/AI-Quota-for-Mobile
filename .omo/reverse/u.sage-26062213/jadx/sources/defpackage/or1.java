package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class or1 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ pr1 o;

    public /* synthetic */ or1(pr1 pr1Var, int i) {
        this.n = i;
        this.o = pr1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        pr1 pr1Var = this.o;
        b24 b24Var = (b24) obj;
        switch (i) {
            case 0:
                b24Var.getClass();
                pr1 pr1Var2 = (pr1) b24Var;
                hd4 hd4Var = pr1Var.C;
                if (!nt1.g(pr1Var2.B, hd4Var)) {
                    pr1Var2.B = hd4Var;
                    pr1Var2.H0();
                }
                return a24.o;
            default:
                b24Var.getClass();
                pr1Var.B = ((pr1) b24Var).C;
                return Boolean.FALSE;
        }
    }
}
