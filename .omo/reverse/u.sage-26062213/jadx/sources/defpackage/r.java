package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ vf2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ hy2 f288u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(hy2 hy2Var, vf2 vf2Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 0;
        this.f288u = hy2Var;
        this.t = vf2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((r) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        hy2 hy2Var = this.f288u;
        vf2 vf2Var = this.t;
        switch (i) {
            case 0:
                return new r(hy2Var, vf2Var, dh0Var);
            case 1:
                return new r(vf2Var, hy2Var, dh0Var, 1);
            default:
                return new r(vf2Var, hy2Var, dh0Var, 2);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        hy2 hy2Var = this.f288u;
        vf2 vf2Var = this.t;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    iy2 iy2Var = new iy2(hy2Var);
                    this.s = 1;
                    if (vf2Var.b(iy2Var, this) == ri0Var) {
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
                    this.s = 1;
                    if (vf2Var.b(hy2Var, this) == ri0Var) {
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
                    this.s = 1;
                    if (vf2Var.b(hy2Var, this) == ri0Var) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(vf2 vf2Var, hy2 hy2Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = vf2Var;
        this.f288u = hy2Var;
    }
}
