package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o64 extends me3 {
    public final ThreadLocal t;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public o64(dh0 dh0Var, hi0 hi0Var) {
        u20 u20Var = u20.p;
        super(dh0Var, hi0Var.K(u20Var) == null ? hi0Var.F(u20Var) : hi0Var);
        this.t = new ThreadLocal();
        if (dh0Var.e().K(w13.s) instanceof ji0) {
            return;
        }
        Object objC = iy3.c(hi0Var, null);
        iy3.a(hi0Var, objC);
        w0(hi0Var, objC);
    }

    @Override // defpackage.me3, defpackage.bv1
    public final void q(Object obj) {
        v0();
        Object objD = se0.D(obj);
        dh0 dh0Var = this.s;
        hi0 hi0VarE = dh0Var.e();
        Object objC = iy3.c(hi0VarE, null);
        o64 o64VarB0 = objC != iy3.a ? ix.b0(dh0Var, hi0VarE, objC) : null;
        try {
            dh0Var.g(objD);
            if (o64VarB0 == null || o64VarB0.u0()) {
                iy3.a(hi0VarE, objC);
            }
        } catch (Throwable th) {
            if (o64VarB0 == null || o64VarB0.u0()) {
                iy3.a(hi0VarE, objC);
            }
            throw th;
        }
    }

    @Override // defpackage.me3
    public final void t0() {
        v0();
    }

    public final boolean u0() {
        boolean z = this.threadLocalIsSet && this.t.get() == null;
        this.t.remove();
        return !z;
    }

    public final void v0() {
        if (this.threadLocalIsSet) {
            js2 js2Var = (js2) this.t.get();
            if (js2Var != null) {
                iy3.a((hi0) js2Var.n, js2Var.o);
            }
            this.t.remove();
        }
    }

    public final void w0(hi0 hi0Var, Object obj) {
        this.threadLocalIsSet = true;
        this.t.set(new js2(hi0Var, obj));
    }
}
