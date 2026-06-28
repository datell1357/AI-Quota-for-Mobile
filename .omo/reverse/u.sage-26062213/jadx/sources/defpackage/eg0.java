package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eg0 extends bv3 implements df1 {
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ t74 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ fg0 f85u;
    public final /* synthetic */ gy v;
    public final /* synthetic */ long w;
    public final /* synthetic */ tu1 x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eg0(t74 t74Var, fg0 fg0Var, gy gyVar, long j, tu1 tu1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = t74Var;
        this.f85u = fg0Var;
        this.v = gyVar;
        this.w = j;
        this.x = tu1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((eg0) o((dh0) obj2, (bg3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        eg0 eg0Var = new eg0(this.t, this.f85u, this.v, this.w, this.x, dh0Var);
        eg0Var.s = obj;
        return eg0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            bg3 bg3Var = (bg3) this.s;
            long j = this.w;
            fg0 fg0Var = this.f85u;
            gy gyVar = this.v;
            float fG0 = fg0.G0(fg0Var, gyVar, j);
            t74 t74Var = this.t;
            t74Var.e = fG0;
            md mdVar = new md(fg0Var, t74Var, this.x, bg3Var);
            pp ppVar = new pp(fg0Var, t74Var, gyVar, 3);
            this.r = 1;
            Object objA = t74Var.a(mdVar, ppVar, this);
            ri0 ri0Var = ri0.n;
            if (objA == ri0Var) {
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
