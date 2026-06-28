package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ej2 extends bv3 implements df1 {
    public final /* synthetic */ int r = 0;
    public int s;
    public float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f88u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ej2(float f, pg3 pg3Var, yh2 yh2Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = f;
        this.f88u = pg3Var;
        this.v = yh2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((ej2) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.v;
        switch (i) {
            case 0:
                return new ej2(this.t, (pg3) this.f88u, (yh2) obj2, dh0Var);
            case 1:
                return new ej2((dc) this.f88u, this.t, (ve) obj2, dh0Var);
            default:
                ej2 ej2Var = new ej2((n14) obj2, dh0Var);
                ej2Var.f88u = obj;
                return ej2Var;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        Object objA;
        float fY;
        qi0 qi0Var;
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.v;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                pg3 pg3Var = (pg3) this.f88u;
                float f = this.t;
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    if (f > 0.0f) {
                        this.s = 1;
                        if (pg3Var.D(f, pg3Var.b.getValue(), this) != ri0Var) {
                        }
                    }
                } else if (i2 == 1) {
                    gg4.T(obj);
                } else if (i2 != 2) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                if (f == 0.0f) {
                    yh2 yh2Var = (yh2) obj2;
                    this.s = 2;
                    n14 n14Var = pg3Var.e;
                    if (n14Var == null || ((nt1.g(pg3Var.c.getValue(), yh2Var) && nt1.g(pg3Var.b.getValue(), yh2Var)) || (objA = eh2.a(pg3Var.l, new jg3(pg3Var, yh2Var, n14Var, null, 1), this)) != ri0Var)) {
                        objA = t64Var;
                    }
                    if (objA != ri0Var) {
                    }
                }
                break;
            case 1:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    if (pd.c(((dc) this.f88u).K, new Float(this.t), (ve) obj2, this) == ri0Var) {
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
                    qi0 qi0Var2 = (qi0) this.f88u;
                    fY = k75.y(qi0Var2.d());
                    qi0Var = qi0Var2;
                } else if (i4 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    fY = this.t;
                    qi0Var = (qi0) this.f88u;
                    gg4.T(obj);
                }
                while (dm0.B(qi0Var)) {
                    sw0 sw0Var = new sw0((n14) obj2, fY);
                    this.f88u = qi0Var;
                    this.t = fY;
                    this.s = 1;
                    hi0 hi0Var = this.o;
                    hi0Var.getClass();
                    if (c75.E(hi0Var).a(sw0Var, this) == ri0Var) {
                        break;
                    }
                }
                break;
        }
        return ri0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ej2(dc dcVar, float f, ve veVar, dh0 dh0Var) {
        super(2, dh0Var);
        this.f88u = dcVar;
        this.t = f;
        this.v = veVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ej2(n14 n14Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.v = n14Var;
    }
}
