package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s83 implements yv0 {
    public final /* synthetic */ int n;
    public final /* synthetic */ w83 o;

    public /* synthetic */ s83(w83 w83Var, int i) {
        this.n = i;
        this.o = w83Var;
    }

    @Override // defpackage.yv0
    public final double b(double d) {
        int i = this.n;
        w83 w83Var = this.o;
        switch (i) {
            case 0:
                return ix.i(w83Var.k.b(d), w83Var.e, w83Var.f);
            default:
                return w83Var.n.b(ix.i(d, w83Var.e, w83Var.f));
        }
    }
}
