package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jz1 implements nt3 {
    public final uf2 a;
    public final /* synthetic */ lz1 b;
    public final /* synthetic */ Object c;

    public jz1(lz1 lz1Var, Object obj) {
        this.b = lz1Var;
        this.c = obj;
        int[] iArr = qs1.a;
        this.a = new uf2();
    }

    @Override // defpackage.nt3
    public final void a() {
        lz1.a(this.b, this.c);
    }

    @Override // defpackage.nt3
    public final void b(c60 c60Var) {
        bo boVar;
        xy1 xy1Var = (xy1) this.b.w.g(this.c);
        md2 md2Var = (xy1Var == null || (boVar = xy1Var.S) == null) ? null : (md2) boVar.g;
        if (md2Var == null || !md2Var.A) {
            return;
        }
        qj0.d0(md2Var, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode", c60Var);
    }

    @Override // defpackage.nt3
    public final int c() {
        xy1 xy1Var = (xy1) this.b.w.g(this.c);
        if (xy1Var != null) {
            return ((rg2) xy1Var.n()).n.p;
        }
        return 0;
    }

    @Override // defpackage.nt3
    public final void d(int i, long j) {
        lz1 lz1Var = this.b;
        xy1 xy1Var = (xy1) lz1Var.w.g(this.c);
        if (xy1Var == null || !xy1Var.H()) {
            return;
        }
        int i2 = ((rg2) xy1Var.n()).n.p;
        if (i < 0 || i >= i2) {
            ar1.d("Index (" + i + ") is out of bound of [0, " + i2 + ")");
        }
        if (xy1Var.I()) {
            ar1.a("Pre-measure called on node that is not placed");
        }
        xy1 xy1Var2 = lz1Var.n;
        xy1Var2.D = true;
        ((q9) az1.a(xy1Var)).s((xy1) ((rg2) xy1Var.n()).get(i), j);
        xy1Var2.D = false;
        this.a.a(i);
    }
}
