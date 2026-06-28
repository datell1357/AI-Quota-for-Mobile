package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mg3 extends bv3 implements pe1 {
    public int r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ pg3 f210u;
    public final /* synthetic */ n14 v;
    public final /* synthetic */ float w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mg3(Object obj, Object obj2, pg3 pg3Var, n14 n14Var, float f, dh0 dh0Var) {
        super(1, dh0Var);
        this.s = obj;
        this.t = obj2;
        this.f210u = pg3Var;
        this.v = n14Var;
        this.w = f;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        n14 n14Var = this.v;
        float f = this.w;
        return new mg3(this.s, this.t, this.f210u, n14Var, f, (dh0) obj).q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            lg3 lg3Var = new lg3(this.s, this.t, this.f210u, this.v, this.w, null);
            this.r = 1;
            Object objR = dm0.r(lg3Var, this);
            ri0 ri0Var = ri0.n;
            if (objR == ri0Var) {
                return ri0Var;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
        }
        return t64.a;
    }
}
