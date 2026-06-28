package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zu1 extends wu1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final bv1 f445u;
    public final av1 v;
    public final o40 w;
    public final Object x;

    public zu1(bv1 bv1Var, av1 av1Var, o40 o40Var, Object obj) {
        this.f445u = bv1Var;
        this.v = av1Var;
        this.w = o40Var;
        this.x = obj;
    }

    @Override // defpackage.wu1
    public final boolean r() {
        return false;
    }

    @Override // defpackage.wu1
    public final void s(Throwable th) {
        o40 o40Var = this.w;
        o40 o40VarA0 = bv1.a0(o40Var);
        bv1 bv1Var = this.f445u;
        av1 av1Var = this.v;
        Object obj = this.x;
        if (o40VarA0 == null || !bv1Var.p0(av1Var, o40VarA0, obj)) {
            av1Var.n.e(new b42(2), 2);
            o40 o40VarA02 = bv1.a0(o40Var);
            if (o40VarA02 == null || !bv1Var.p0(av1Var, o40VarA02, obj)) {
                bv1Var.p(bv1Var.C(av1Var, obj));
            }
        }
    }
}
