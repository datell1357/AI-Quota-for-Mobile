package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nz extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ xs1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ gp3 f230u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ nz(xs1 xs1Var, gp3 gp3Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = xs1Var;
        this.f230u = gp3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((nz) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                return new nz(this.t, this.f230u, dh0Var, 0);
            case 1:
                return new nz(this.t, this.f230u, dh0Var, 1);
            default:
                return new nz(this.t, this.f230u, dh0Var, 2);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        gp3 gp3Var = this.f230u;
        xs1 xs1Var = this.t;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    a81 a81VarA = xs1Var.a();
                    mz mzVar = new mz(gp3Var, 0);
                    this.s = 1;
                    if (a81VarA.b(mzVar, this) == ri0Var) {
                    }
                } else if (i2 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 1:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    a81 a81VarA2 = xs1Var.a();
                    mz mzVar2 = new mz(gp3Var, 1);
                    this.s = 1;
                    if (a81VarA2.b(mzVar2, this) == ri0Var) {
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
                    a81 a81VarA3 = xs1Var.a();
                    mz mzVar3 = new mz(gp3Var, 2);
                    this.s = 1;
                    if (a81VarA3.b(mzVar3, this) == ri0Var) {
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
