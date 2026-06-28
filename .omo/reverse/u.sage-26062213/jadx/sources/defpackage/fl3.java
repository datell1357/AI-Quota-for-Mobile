package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fl3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ aj3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f99u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fl3(aj3 aj3Var, boolean z, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = aj3Var;
        this.f99u = z;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((fl3) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        boolean z = this.f99u;
        aj3 aj3Var = this.t;
        switch (i) {
            case 0:
                return new fl3(aj3Var, z, dh0Var, 0);
            case 1:
                return new fl3(aj3Var, z, dh0Var, 1);
            case 2:
                return new fl3(aj3Var, z, dh0Var, 2);
            case 3:
                return new fl3(aj3Var, z, dh0Var, 3);
            default:
                return new fl3(aj3Var, z, dh0Var, 4);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        boolean z = this.f99u;
        aj3 aj3Var = this.t;
        ri0 ri0Var = ri0.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 != 0) {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    ps psVar = aj3Var.b;
                    r50 r50Var = psVar instanceof r50 ? (r50) psVar : null;
                    if (r50Var != null) {
                        this.s = 1;
                        Object objO = ht4.o(r50Var.s, new ms(!z, null, 2), this);
                        if (objO != ri0Var) {
                            objO = t64Var;
                        }
                        if (objO == ri0Var) {
                        }
                    }
                }
                break;
            case 1:
                int i3 = this.s;
                if (i3 != 0) {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    ps psVar2 = aj3Var.b;
                    r50 r50Var2 = psVar2 instanceof r50 ? (r50) psVar2 : null;
                    if (r50Var2 != null) {
                        this.s = 1;
                        Object objO2 = ht4.o(r50Var2.s, new ms(z, null, 2), this);
                        if (objO2 != ri0Var) {
                            objO2 = t64Var;
                        }
                        if (objO2 == ri0Var) {
                        }
                    }
                }
                break;
            case 2:
                int i4 = this.s;
                if (i4 != 0) {
                    if (i4 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    ps psVar3 = aj3Var.b;
                    this.s = 1;
                    if (psVar3.i(z, this) == ri0Var) {
                    }
                }
                break;
            case 3:
                int i5 = this.s;
                if (i5 != 0) {
                    if (i5 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    ps psVar4 = aj3Var.b;
                    this.s = 1;
                    if (psVar4.i(z, this) == ri0Var) {
                    }
                }
                break;
            default:
                int i6 = this.s;
                if (i6 != 0) {
                    if (i6 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    ps psVar5 = aj3Var.b;
                    this.s = 1;
                    Object objO3 = ht4.o(psVar5.a(), new ms(z, null, 0), this);
                    if (objO3 != ri0Var) {
                        objO3 = t64Var;
                    }
                    if (objO3 == ri0Var) {
                    }
                }
                break;
        }
        return t64Var;
    }
}
