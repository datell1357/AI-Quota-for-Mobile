package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o53 extends h0 implements ki0 {
    public final /* synthetic */ cc0 o;
    public final /* synthetic */ p53 p;

    /* JADX WARN: Illegal instructions before constructor call */
    public o53(cc0 cc0Var, p53 p53Var) {
        w13 w13Var = w13.t;
        this.o = cc0Var;
        this.p = p53Var;
        super(w13Var);
    }

    @Override // defpackage.ki0
    public final void L(hi0 hi0Var, Throwable th) throws Throwable {
        cc0 cc0Var = this.o;
        p53 p53Var = this.p;
        mt1.W(th, new h4(8, cc0Var, p53Var));
        ki0 ki0Var = (ki0) p53Var.n.K(w13.t);
        if (ki0Var == null) {
            throw th;
        }
        ki0Var.L(hi0Var, th);
    }
}
