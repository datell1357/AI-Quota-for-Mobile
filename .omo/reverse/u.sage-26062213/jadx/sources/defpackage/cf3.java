package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cf3 extends bv3 implements df1 {
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ ve f47u;
    public final /* synthetic */ t33 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf3(float f, ve veVar, t33 t33Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = f;
        this.f47u = veVar;
        this.v = t33Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((cf3) o((dh0) obj2, (jf3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        cf3 cf3Var = new cf3(this.t, this.f47u, this.v, dh0Var);
        cf3Var.s = obj;
        return cf3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            l4 l4Var = new l4(17, this.v, (jf3) this.s);
            this.r = 1;
            Object objG = k75.g(0.0f, this.t, this.f47u, l4Var, this, 4);
            ri0 ri0Var = ri0.n;
            if (objG == ri0Var) {
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
