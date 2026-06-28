package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t30 extends bv3 implements df1 {
    public final /* synthetic */ int r = 1;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ w30 f327u;
    public final /* synthetic */ b81 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t30(w30 w30Var, b81 b81Var, Object obj, dh0 dh0Var) {
        super(2, dh0Var);
        this.f327u = w30Var;
        this.v = b81Var;
        this.t = obj;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((t30) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        b81 b81Var = this.v;
        w30 w30Var = this.f327u;
        switch (i) {
            case 0:
                return new t30(w30Var, b81Var, this.t, dh0Var);
            default:
                t30 t30Var = new t30(w30Var, b81Var, dh0Var);
                t30Var.t = obj;
                return t30Var;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    ff1 ff1Var = this.f327u.r;
                    Object obj2 = this.t;
                    this.s = 1;
                    if (ff1Var.d(this.v, obj2, this) == ri0Var) {
                    }
                } else if (i2 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    qi0 qi0Var = (qi0) this.t;
                    w33 w33Var = new w33();
                    w30 w30Var = this.f327u;
                    a81 a81Var = w30Var.q;
                    v30 v30Var = new v30(0, w33Var, qi0Var, w30Var, this.v);
                    this.s = 1;
                    if (a81Var.b(v30Var, this) == ri0Var) {
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t30(w30 w30Var, b81 b81Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f327u = w30Var;
        this.v = b81Var;
    }
}
