package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lg3 extends bv3 implements df1 {
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f183u;
    public final /* synthetic */ pg3 v;
    public final /* synthetic */ n14 w;
    public final /* synthetic */ float x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lg3(Object obj, Object obj2, pg3 pg3Var, n14 n14Var, float f, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = obj;
        this.f183u = obj2;
        this.v = pg3Var;
        this.w = n14Var;
        this.x = f;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((lg3) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        lg3 lg3Var = new lg3(this.t, this.f183u, this.v, this.w, this.x, dh0Var);
        lg3Var.s = obj;
        return lg3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        dh0 dh0Var = null;
        pg3 pg3Var = this.v;
        if (i == 0) {
            gg4.T(obj);
            qi0 qi0Var = (qi0) this.s;
            Object obj2 = this.t;
            Object obj3 = this.f183u;
            if (nt1.g(obj2, obj3)) {
                pg3Var.o = null;
                if (nt1.g(pg3Var.c.getValue(), obj2)) {
                    return t64Var;
                }
            } else {
                pg3.w(pg3Var);
            }
            boolean zG = nt1.g(obj2, obj3);
            float f = this.x;
            if (!zG) {
                n14 n14Var = this.w;
                n14Var.p(obj2);
                n14Var.n(0L);
                pg3Var.b.setValue(obj2);
                n14Var.j(f);
            }
            pg3Var.F(f);
            if (pg3Var.n.i()) {
                ca.y(qi0Var, null, null, new x50(pg3Var, dh0Var, 18), 3);
            } else {
                pg3Var.m = Long.MIN_VALUE;
            }
            this.r = 1;
            Object objZ = pg3.z(pg3Var, this);
            ri0 ri0Var = ri0.n;
            if (objZ == ri0Var) {
                return ri0Var;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
        }
        pg3Var.E();
        return t64Var;
    }
}
