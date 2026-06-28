package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public final /* synthetic */ e60 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(e60 e60Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = e60Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((u) o(dh0Var, qi0Var)).q(t64Var);
                break;
            default:
                ((u) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        e60 e60Var = this.s;
        switch (i) {
            case 0:
                return new u(e60Var, dh0Var, 0);
            default:
                return new u(e60Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        dh0 dh0Var = null;
        e60 e60Var = this.s;
        switch (i) {
            case 0:
                gg4.T(obj);
                if (e60Var.P == null) {
                    ik1 ik1Var = new ik1();
                    vf2 vf2Var = e60Var.D;
                    if (vf2Var != null) {
                        ca.y(e60Var.u0(), null, null, new n(vf2Var, ik1Var, dh0Var, 0), 3);
                    }
                    e60Var.P = ik1Var;
                }
                break;
            default:
                gg4.T(obj);
                ik1 ik1Var2 = e60Var.P;
                if (ik1Var2 != null) {
                    jk1 jk1Var = new jk1(ik1Var2);
                    vf2 vf2Var2 = e60Var.D;
                    if (vf2Var2 != null) {
                        ca.y(e60Var.u0(), null, null, new n(vf2Var2, jk1Var, dh0Var, 1), 3);
                    }
                    e60Var.P = null;
                }
                break;
        }
        return t64Var;
    }
}
