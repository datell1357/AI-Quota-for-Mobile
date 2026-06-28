package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dt extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ pt t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ m10 f73u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dt(pt ptVar, m10 m10Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = ptVar;
        this.f73u = m10Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((dt) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        m10 m10Var = this.f73u;
        pt ptVar = this.t;
        switch (i) {
            case 0:
                return new dt(ptVar, m10Var, dh0Var, 0);
            default:
                return new dt(ptVar, m10Var, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        m10 m10Var = this.f73u;
        ri0 ri0Var = ri0.n;
        pt ptVar = this.t;
        dh0 dh0Var = null;
        int i2 = 1;
        switch (i) {
            case 0:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    ur3 ur3Var = (ur3) ptVar.c.getValue();
                    a81 a81Var = (a81) m10Var.b.getValue();
                    bt btVar = new bt(3, dh0Var, 0);
                    ct ctVar = new ct(ptVar, 0);
                    this.s = 1;
                    Object objO = w80.o(this, ctVar, ag0.p, new t81(btVar, dh0Var, 2), new a81[]{ur3Var, a81Var});
                    if (objO != ri0Var) {
                        objO = t64Var;
                    }
                    if (objO == ri0Var) {
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    a81 a81VarD = qj0.D(new yq(ptVar.k(), 8));
                    uq uqVar = new uq(i2, m10Var, ptVar);
                    this.s = 1;
                    if (a81VarD.b(uqVar, this) == ri0Var) {
                    }
                } else if (i4 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }
}
