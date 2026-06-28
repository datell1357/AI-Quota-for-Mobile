package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g82 extends xx1 implements ne1 {
    public final /* synthetic */ k82 o;
    public final /* synthetic */ long p;
    public final /* synthetic */ long q;
    public final /* synthetic */ fv2 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g82(k82 k82Var, long j, long j2, fv2 fv2Var) {
        super(0);
        this.o = k82Var;
        this.p = j;
        this.q = j2;
        this.r = fv2Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        k82 k82Var = this.o;
        k82Var.y0().n = false;
        k82Var.y0().o = this.p;
        k82Var.y0().p = this.q;
        pe1 pe1VarF = this.r.n.f();
        if (pe1VarF != null) {
            pe1VarF.k(k82Var.y0());
        }
        return t64.a;
    }
}
