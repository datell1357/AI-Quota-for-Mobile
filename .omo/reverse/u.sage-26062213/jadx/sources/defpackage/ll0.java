package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ll0 extends bv3 implements df1 {
    public int r;
    public final /* synthetic */ ga3 s;
    public final /* synthetic */ boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f187u;
    public final /* synthetic */ pe1 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ll0(dh0 dh0Var, pe1 pe1Var, ga3 ga3Var, boolean z, boolean z2) {
        super(2, dh0Var);
        this.s = ga3Var;
        this.t = z;
        this.f187u = z2;
        this.v = pe1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((ll0) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new ll0(dh0Var, this.v, this.s, this.t, this.f187u);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i != 0) {
            if (i == 1) {
                gg4.T(obj);
                return obj;
            }
            k21.n("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        gg4.T(obj);
        pe1 pe1Var = this.v;
        ga3 ga3Var = this.s;
        boolean z = this.f187u;
        boolean z2 = this.t;
        kl0 kl0Var = new kl0(null, pe1Var, ga3Var, z, z2);
        this.r = 1;
        Object objQ = ga3Var.q(z2, kl0Var, this);
        ri0 ri0Var = ri0.n;
        return objQ == ri0Var ? ri0Var : objQ;
    }
}
