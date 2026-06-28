package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m40 extends wu1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final o20 f200u;

    public m40(o20 o20Var) {
        this.f200u = o20Var;
    }

    @Override // defpackage.wu1
    public final boolean r() {
        return true;
    }

    @Override // defpackage.wu1
    public final void s(Throwable th) {
        bv1 bv1VarQ = q();
        o20 o20Var = this.f200u;
        Throwable thT = o20Var.t(bv1VarQ);
        if (!o20Var.B() ? false : ((su0) o20Var.q).s(thT)) {
            return;
        }
        o20Var.l(thT);
        if (o20Var.B()) {
            return;
        }
        o20Var.q();
    }
}
