package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ml0 extends bv3 implements df1 {
    public final /* synthetic */ int r = 0;
    public int s;
    public final /* synthetic */ boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f212u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ml0(pd pdVar, boolean z, yq3 yq3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f212u = pdVar;
        this.t = z;
        this.v = yq3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((ml0) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.v;
        boolean z = this.t;
        Object obj3 = this.f212u;
        switch (i) {
            case 0:
                return new ml0(dh0Var, (pe1) obj2, (ga3) obj3, z);
            default:
                return new ml0((pd) obj3, z, (yq3) obj2, dh0Var);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        Object obj2 = this.v;
        boolean z = this.t;
        Object obj3 = this.f212u;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 != 0) {
                    if (i2 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                ga3 ga3Var = (ga3) obj3;
                ol0 ol0Var = new ol0(null, (pe1) obj2, ga3Var, z);
                this.s = 1;
                Object objQ = ga3Var.q(z, ol0Var, this);
                return objQ == ri0Var ? ri0Var : objQ;
            default:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    pd pdVar = (pd) obj3;
                    float f = z ? 1.0f : 0.8f;
                    this.s = 1;
                    if (pd.c(pdVar, new Float(f), (yq3) obj2, this) == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return t64.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ml0(dh0 dh0Var, pe1 pe1Var, ga3 ga3Var, boolean z) {
        super(2, dh0Var);
        this.f212u = ga3Var;
        this.t = z;
        this.v = pe1Var;
    }
}
