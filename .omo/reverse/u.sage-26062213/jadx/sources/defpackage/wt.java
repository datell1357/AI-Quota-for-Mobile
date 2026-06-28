package defpackage;

import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wt extends bv3 implements pe1 {
    public final /* synthetic */ a r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wt(a aVar, dh0 dh0Var) {
        super(1, dh0Var);
        this.r = aVar;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        wt wtVar = new wt(this.r, (dh0) obj);
        t64 t64Var = t64.a;
        wtVar.q(t64Var);
        return t64Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        gg4.T(obj);
        a aVar = this.r;
        ir3 ir3Var = aVar.t;
        if (ir3Var != null) {
            ir3Var.j(null);
        }
        aVar.o().s(false);
        aVar.x("LogoutDetected");
        return t64.a;
    }
}
