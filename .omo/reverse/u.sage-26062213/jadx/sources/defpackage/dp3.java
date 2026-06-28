package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dp3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ df1 f71u;
    public final /* synthetic */ pg2 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dp3(df1 df1Var, pg2 pg2Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f71u = df1Var;
        this.v = pg2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((dp3) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                dp3 dp3Var = new dp3(this.f71u, this.v, dh0Var, 0);
                dp3Var.t = obj;
                return dp3Var;
            case 1:
                dp3 dp3Var2 = new dp3(this.f71u, this.v, dh0Var, 1);
                dp3Var2.t = obj;
                return dp3Var2;
            default:
                dp3 dp3Var3 = new dp3(this.f71u, this.v, dh0Var, 2);
                dp3Var3.t = obj;
                return dp3Var3;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        pg2 pg2Var = this.v;
        df1 df1Var = this.f71u;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    gz2 gz2Var = new gz2(pg2Var, ((qi0) this.t).d());
                    this.s = 1;
                    if (df1Var.f(gz2Var, this) == ri0Var) {
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
                    gz2 gz2Var2 = new gz2(pg2Var, ((qi0) this.t).d());
                    this.s = 1;
                    if (df1Var.f(gz2Var2, this) == ri0Var) {
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
                    gz2 gz2Var3 = new gz2(pg2Var, ((qi0) this.t).d());
                    this.s = 1;
                    if (df1Var.f(gz2Var3, this) == ri0Var) {
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
