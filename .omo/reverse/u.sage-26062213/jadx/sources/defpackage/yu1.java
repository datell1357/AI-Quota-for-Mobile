package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yu1 extends o20 {
    public final bv1 x;

    public yu1(dh0 dh0Var, bv1 bv1Var) {
        super(1, dh0Var);
        this.x = bv1Var;
    }

    @Override // defpackage.o20
    public final String D() {
        return "AwaitContinuation";
    }

    @Override // defpackage.o20
    public final Throwable t(bv1 bv1Var) {
        Throwable thE;
        Object objM = this.x.M();
        return (!(objM instanceof av1) || (thE = ((av1) objM).e()) == null) ? objM instanceof c90 ? ((c90) objM).a : bv1Var.N() : thE;
    }
}
