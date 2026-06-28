package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a52 extends b52 implements n22 {
    public final p22 r;
    public final /* synthetic */ c52 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a52(c52 c52Var, p22 p22Var, bo2 bo2Var) {
        super(c52Var, bo2Var);
        this.s = c52Var;
        this.r = p22Var;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        p22 p22Var2 = this.r;
        g22 g22Var = ((r22) p22Var2.getLifecycle()).d;
        if (g22Var == g22.n) {
            this.s.g(this.n);
            return;
        }
        g22 g22Var2 = null;
        while (g22Var2 != g22Var) {
            a(d());
            g22Var2 = g22Var;
            g22Var = ((r22) p22Var2.getLifecycle()).d;
        }
    }

    @Override // defpackage.b52
    public final void b() {
        this.r.getLifecycle().b(this);
    }

    @Override // defpackage.b52
    public final boolean c(p22 p22Var) {
        return this.r == p22Var;
    }

    @Override // defpackage.b52
    public final boolean d() {
        return ((r22) this.r.getLifecycle()).d.compareTo(g22.q) >= 0;
    }
}
