package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k12 extends bv3 implements df1 {
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ n12 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f157u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k12(n12 n12Var, int i, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = n12Var;
        this.f157u = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((k12) o((dh0) obj2, (jf3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        k12 k12Var = new k12(this.t, this.f157u, dh0Var);
        k12Var.s = obj;
        return k12Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            jf3 jf3Var = (jf3) this.s;
            n12 n12Var = this.t;
            h12 h12Var = new h12(0, jf3Var, n12Var);
            as0 as0Var = ((f12) n12Var.f.getValue()).i;
            this.r = 1;
            Object objM = n44.M(h12Var, this.f157u, 100, as0Var, this);
            ri0 ri0Var = ri0.n;
            if (objM == ri0Var) {
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
