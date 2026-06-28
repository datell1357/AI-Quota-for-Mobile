package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ag3 extends bv3 implements df1 {
    public dg3 r;
    public v33 s;
    public long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6u;
    public /* synthetic */ Object v;
    public final /* synthetic */ dg3 w;
    public final /* synthetic */ v33 x;
    public final /* synthetic */ long y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag3(dg3 dg3Var, v33 v33Var, long j, dh0 dh0Var) {
        super(2, dh0Var);
        this.w = dg3Var;
        this.x = v33Var;
        this.y = j;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((ag3) o((dh0) obj2, (bg3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        ag3 ag3Var = new ag3(this.w, this.x, this.y, dh0Var);
        ag3Var.v = obj;
        return ag3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) throws Throwable {
        dg3 dg3Var;
        v33 v33Var;
        dg3 dg3Var2;
        long j;
        int i = this.f6u;
        hr2 hr2Var = hr2.o;
        int i2 = 1;
        if (i == 0) {
            gg4.T(obj);
            bg3 bg3Var = (bg3) this.v;
            dg3Var = this.w;
            h12 h12Var = new h12(i2, dg3Var, bg3Var);
            to0 to0Var = dg3Var.c;
            v33Var = this.x;
            long j2 = v33Var.n;
            hr2 hr2Var2 = dg3Var.d;
            long j3 = this.y;
            float fE = dg3Var.e(hr2Var2 == hr2Var ? ra4.b(j3) : ra4.c(j3));
            this.v = dg3Var;
            this.r = dg3Var;
            this.s = v33Var;
            this.t = j2;
            this.f6u = 1;
            to0Var.getClass();
            obj = ca.O(to0Var.b, new so0(fE, to0Var, h12Var, null), this);
            ri0 ri0Var = ri0.n;
            if (obj == ri0Var) {
                return ri0Var;
            }
            dg3Var2 = dg3Var;
            j = j2;
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.t;
            v33Var = this.s;
            dg3Var = this.r;
            dg3Var2 = (dg3) this.v;
            gg4.T(obj);
        }
        float fE2 = dg3Var2.e(((Number) obj).floatValue());
        v33Var.n = dg3Var.d == hr2Var ? ra4.a(j, fE2, 0.0f, 2) : ra4.a(j, 0.0f, fE2, 1);
        return t64.a;
    }
}
