package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bb0 extends bv3 implements ff1 {
    public final /* synthetic */ s33 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bb0(s33 s33Var, dh0 dh0Var) {
        super(3, dh0Var);
        this.r = s33Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        bb0 bb0Var = new bb0(this.r, (dh0) obj3);
        t64 t64Var = t64.a;
        bb0Var.q(t64Var);
        return t64Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        gg4.T(obj);
        this.r.n = true;
        return t64.a;
    }
}
