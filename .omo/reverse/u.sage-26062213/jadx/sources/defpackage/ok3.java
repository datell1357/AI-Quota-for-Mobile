package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ok3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ qk3 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ok3(qk3 qk3Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = qk3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((ok3) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        qk3 qk3Var = this.t;
        switch (i) {
            case 0:
                return new ok3(qk3Var, dh0Var, 0);
            default:
                return new ok3(qk3Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        qk3 qk3Var = this.t;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    a81 a81VarB = qk3Var.b.b();
                    nk3 nk3Var = new nk3(qk3Var.c);
                    this.s = 1;
                    if (a81VarB.b(nk3Var, this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return t64.a;
            default:
                int i3 = this.s;
                if (i3 != 0) {
                    if (i3 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                a81 a81VarB2 = qk3Var.b.b();
                this.s = 1;
                Object objH = qj0.H(a81VarB2, this);
                return objH == ri0Var ? ri0Var : objH;
        }
    }
}
