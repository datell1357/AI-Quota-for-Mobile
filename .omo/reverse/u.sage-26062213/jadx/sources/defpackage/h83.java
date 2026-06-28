package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h83 extends wu1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final yu1 f121u;

    public h83(yu1 yu1Var) {
        this.f121u = yu1Var;
    }

    @Override // defpackage.wu1
    public final boolean r() {
        return false;
    }

    @Override // defpackage.wu1
    public final void s(Throwable th) {
        Object objM = q().M();
        boolean z = objM instanceof c90;
        yu1 yu1Var = this.f121u;
        if (z) {
            yu1Var.g(gg4.q(((c90) objM).a));
        } else {
            yu1Var.g(cv1.a(objM));
        }
    }
}
