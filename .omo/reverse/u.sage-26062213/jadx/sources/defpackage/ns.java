package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ns extends bv3 implements df1 {
    public /* synthetic */ Object r;
    public final /* synthetic */ boolean s;
    public final /* synthetic */ String t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ns(boolean z, String str, dh0 dh0Var) {
        super(2, dh0Var);
        this.s = z;
        this.t = str;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ns nsVar = (ns) o((dh0) obj2, (hg2) obj);
        t64 t64Var = t64.a;
        nsVar.q(t64Var);
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        ns nsVar = new ns(this.s, this.t, dh0Var);
        nsVar.r = obj;
        return nsVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        hg2 hg2Var = (hg2) this.r;
        gg4.T(obj);
        if (this.s) {
            hg2Var.e(ps.o, Boolean.TRUE);
            String str = this.t;
            if (str != null) {
                hg2Var.e(ps.p, str);
            }
        } else {
            hg2Var.d(ps.o);
            hg2Var.d(ps.p);
        }
        return t64.a;
    }
}
