package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ e60 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ hy2 f325u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t(e60 e60Var, hy2 hy2Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = e60Var;
        this.f325u = hy2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((t) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        hy2 hy2Var = this.f325u;
        e60 e60Var = this.t;
        switch (i) {
            case 0:
                return new t(e60Var, hy2Var, dh0Var, 0);
            case 1:
                return new t(e60Var, hy2Var, dh0Var, 1);
            case 2:
                return new t(e60Var, hy2Var, dh0Var, 2);
            default:
                return new t(e60Var, hy2Var, dh0Var, 3);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        hy2 hy2Var = this.f325u;
        e60 e60Var = this.t;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    vf2 vf2Var = e60Var.D;
                    if (vf2Var != null) {
                        gy2 gy2Var = new gy2(hy2Var);
                        this.s = 1;
                        if (vf2Var.b(gy2Var, this) == ri0Var) {
                        }
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
                    vf2 vf2Var2 = e60Var.D;
                    if (vf2Var2 != null) {
                        gy2 gy2Var2 = new gy2(hy2Var);
                        this.s = 1;
                        if (vf2Var2.b(gy2Var2, this) == ri0Var) {
                        }
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 2:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    vf2 vf2Var3 = e60Var.D;
                    if (vf2Var3 != null) {
                        this.s = 1;
                        if (vf2Var3.b(hy2Var, this) == ri0Var) {
                        }
                    }
                } else if (i4 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i5 = this.s;
                if (i5 == 0) {
                    gg4.T(obj);
                    vf2 vf2Var4 = e60Var.D;
                    if (vf2Var4 != null) {
                        iy2 iy2Var = new iy2(hy2Var);
                        this.s = 1;
                        if (vf2Var4.b(iy2Var, this) == ri0Var) {
                        }
                    }
                } else if (i5 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }
}
