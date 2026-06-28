package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jg3 extends bv3 implements pe1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ pg3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f151u;
    public final /* synthetic */ n14 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ jg3(pg3 pg3Var, Object obj, n14 n14Var, dh0 dh0Var, int i) {
        super(1, dh0Var);
        this.r = i;
        this.t = pg3Var;
        this.f151u = obj;
        this.v = n14Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        dh0 dh0Var = (dh0) obj;
        switch (i) {
            case 0:
                return new jg3(this.t, this.f151u, this.v, dh0Var, 0).q(t64Var);
            default:
                return new jg3(this.t, this.f151u, this.v, dh0Var, 1).q(t64Var);
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
                    r4 r4Var = new r4(this.t, this.f151u, this.v, (dh0) null, 5);
                    this.s = 1;
                    return dm0.r(r4Var, this) == ri0Var ? ri0Var : t64Var;
                }
                if (i2 == 1) {
                    gg4.T(obj);
                    return t64Var;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                int i3 = this.s;
                n14 n14Var = this.v;
                if (i3 == 0) {
                    gg4.T(obj);
                    pg3 pg3Var = this.t;
                    pg3Var.B();
                    ws2 ws2Var = pg3Var.b;
                    pg3Var.m = Long.MIN_VALUE;
                    pg3Var.F(0.0f);
                    Object value = pg3Var.c.getValue();
                    Object obj2 = this.f151u;
                    float f = obj2.equals(value) ? -4.0f : obj2.equals(ws2Var.getValue()) ? -5.0f : -3.0f;
                    n14Var.p(obj2);
                    n14Var.n(0L);
                    ws2Var.setValue(obj2);
                    pg3Var.F(0.0f);
                    pg3Var.q(obj2);
                    n14Var.j(f);
                    if (f == -3.0f) {
                        this.s = 1;
                        if (pg3.z(pg3Var, this) == ri0Var) {
                            return ri0Var;
                        }
                    }
                } else {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                n14Var.i();
                return t64Var;
        }
    }
}
