package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vp {
    public final ck2 a;
    public final uo2 b;

    public vp(ck2 ck2Var, uo2 uo2Var) {
        this.a = ck2Var;
        this.b = uo2Var;
        if ((ck2Var == null ? uo2Var : ck2Var) != null) {
            return;
        }
        k21.f("At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null.");
        throw null;
    }

    public final void a(nq0 nq0Var) {
        ck2 ck2Var = this.a;
        if (ck2Var != null) {
            ck2.a(ck2Var, (tp) nq0Var.b);
            return;
        }
        uo2 uo2Var = this.b;
        if (uo2Var == null) {
            k21.n("Unreachable");
            return;
        }
        up upVar = (up) nq0Var.a;
        upVar.getClass();
        po2 po2Var = new po2(upVar, new qo2(upVar, null));
        upVar.a.add(po2Var);
        ck2.a(uo2Var.b().c, po2Var);
    }

    public final void b(nq0 nq0Var) throws Exception {
        if (this.a != null) {
            ((tp) nq0Var.b).f();
        } else if (this.b != null) {
            ((up) nq0Var.a).d();
        } else {
            k21.n("Unreachable");
        }
    }
}
