package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o40 extends wu1 implements n40 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final bv1 f234u;

    public o40(bv1 bv1Var) {
        this.f234u = bv1Var;
    }

    @Override // defpackage.n40
    public final boolean c(Throwable th) {
        return q().x(th);
    }

    @Override // defpackage.wu1
    public final boolean r() {
        return true;
    }

    @Override // defpackage.wu1
    public final void s(Throwable th) {
        this.f234u.t(q());
    }
}
