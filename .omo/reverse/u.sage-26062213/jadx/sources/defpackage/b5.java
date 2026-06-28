package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b5 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public final /* synthetic */ e4 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b5(e4 e4Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = e4Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((b5) o(dh0Var, qi0Var)).q(t64Var);
                break;
            default:
                ((b5) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        e4 e4Var = this.s;
        switch (i) {
            case 0:
                return new b5(e4Var, dh0Var, 0);
            default:
                return new b5(e4Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        e4 e4Var = this.s;
        switch (i) {
            case 0:
                gg4.T(obj);
                e4Var.k(new x72("loading", ""));
                break;
            default:
                gg4.T(obj);
                e4Var.k(null);
                break;
        }
        return t64Var;
    }
}
