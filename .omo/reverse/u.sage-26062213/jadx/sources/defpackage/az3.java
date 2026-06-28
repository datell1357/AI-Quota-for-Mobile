package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class az3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ float f22u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ az3(bz3 bz3Var, float f, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = bz3Var;
        this.f22u = f;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((az3) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((az3) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((az3) o((dh0) obj2, Float.valueOf(((Number) obj).floatValue()))).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.t;
        switch (i) {
            case 0:
                return new az3((bz3) obj2, this.f22u, dh0Var, 0);
            case 1:
                return new az3((bz3) obj2, this.f22u, dh0Var, 1);
            default:
                az3 az3Var = new az3((fb0) obj2, dh0Var);
                az3Var.f22u = ((Number) obj).floatValue();
                return az3Var;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        Object obj2 = this.t;
        switch (i) {
            case 0:
                bz3 bz3Var = (bz3) obj2;
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    pd pdVar = bz3Var.G;
                    if (pdVar == null) {
                        return t64Var;
                    }
                    Float f = new Float(this.f22u);
                    ve veVar = bz3Var.E ? jv3.f : bz3Var.D;
                    this.s = 1;
                    obj = pd.c(pdVar, f, veVar, this);
                    if (obj == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return t64Var;
            case 1:
                bz3 bz3Var2 = (bz3) obj2;
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    pd pdVar2 = bz3Var2.F;
                    if (pdVar2 == null) {
                        return t64Var;
                    }
                    Float f2 = new Float(this.f22u);
                    ve veVar2 = bz3Var2.E ? jv3.f : bz3Var2.D;
                    this.s = 1;
                    obj = pd.c(pdVar2, f2, veVar2, this);
                    if (obj == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return t64Var;
            default:
                fb0 fb0Var = (fb0) obj2;
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    float f3 = this.f22u;
                    Object objG = fb0Var.a.d.n.g(ah3.e);
                    df1 df1Var = (df1) (objG != null ? objG : null);
                    if (df1Var == null) {
                        throw di0.m("Required value was null.");
                    }
                    go2 go2Var = new go2((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f3)) & 4294967295L));
                    this.s = 1;
                    obj = df1Var.f(go2Var, this);
                    if (obj == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i4 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return new Float(Float.intBitsToFloat((int) (((go2) obj).a & 4294967295L)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public az3(fb0 fb0Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.t = fb0Var;
    }
}
