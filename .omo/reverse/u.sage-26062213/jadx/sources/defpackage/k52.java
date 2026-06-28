package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k52 extends wf2 implements g52 {
    public final h52 l;
    public p22 m;
    public ft1 n;

    public k52(h52 h52Var) {
        this.l = h52Var;
        h52Var.registerListener(0, this);
    }

    @Override // defpackage.c52
    public final void e() {
        this.l.startLoading();
    }

    @Override // defpackage.c52
    public final void f() {
        this.l.stopLoading();
    }

    @Override // defpackage.c52
    public final void g(bo2 bo2Var) {
        super.g(bo2Var);
        this.m = null;
        this.n = null;
    }

    public final void j() {
        p22 p22Var = this.m;
        ft1 ft1Var = this.n;
        if (p22Var == null || ft1Var == null) {
            return;
        }
        super.g(ft1Var);
        d(p22Var, ft1Var);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #0 : ");
        Class<?> cls = this.l.getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append("}}");
        return sb.toString();
    }
}
