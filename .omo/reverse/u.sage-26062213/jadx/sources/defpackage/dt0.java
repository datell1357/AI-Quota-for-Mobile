package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dt0 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ us0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f74u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dt0(us0 us0Var, boolean z, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = us0Var;
        this.f74u = z;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((dt0) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        boolean z = this.f74u;
        us0 us0Var = this.t;
        switch (i) {
            case 0:
                return new dt0(us0Var, z, dh0Var, 0);
            case 1:
                return new dt0(us0Var, z, dh0Var, 1);
            default:
                return new dt0(us0Var, z, dh0Var, 2);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        boolean z = this.f74u;
        us0 us0Var = this.t;
        ri0 ri0Var = ri0.n;
        t64 t64Var = t64.a;
        dh0 dh0Var = null;
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
                    this.s = 1;
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    Object objO = ht4.o(vs0.a(us0Var.a), new ms(z, dh0Var, 6), this);
                    if (objO != ri0Var) {
                        objO = t64Var;
                    }
                    if (objO == ri0Var) {
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
                    this.s = 1;
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    Object objO2 = ht4.o(vs0.a(us0Var.a), new ms(z, dh0Var, 5), this);
                    if (objO2 != ri0Var) {
                        objO2 = t64Var;
                    }
                    if (objO2 == ri0Var) {
                    }
                }
                break;
            default:
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
                    this.s = 1;
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    Object objO3 = ht4.o(vs0.a(us0Var.a), new ms(z, dh0Var, 4), this);
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
