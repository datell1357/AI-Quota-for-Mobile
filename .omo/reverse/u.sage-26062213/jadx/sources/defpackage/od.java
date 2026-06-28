package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class od extends bv3 implements pe1 {
    public final /* synthetic */ pd r;
    public final /* synthetic */ Object s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public od(pd pdVar, Object obj, dh0 dh0Var) {
        super(1, dh0Var);
        this.r = pdVar;
        this.s = obj;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        od odVar = new od(this.r, this.s, (dh0) obj);
        t64 t64Var = t64.a;
        odVar.q(t64Var);
        return t64Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        gg4.T(obj);
        pd pdVar = this.r;
        pd.b(pdVar);
        Object objA = pd.a(pdVar, this.s);
        pdVar.c.o.setValue(objA);
        pdVar.e.setValue(objA);
        return t64.a;
    }
}
