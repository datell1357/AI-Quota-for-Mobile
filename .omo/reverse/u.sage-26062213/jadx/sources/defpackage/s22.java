package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s22 implements x63, op0 {
    public final h22 n;
    public final tu1 o;

    public s22(h22 h22Var, tu1 tu1Var) {
        this.n = h22Var;
        this.o = tu1Var;
    }

    @Override // defpackage.x63
    public final Object a(n23 n23Var) throws Throwable {
        Object objJ = k30.j(this.n, n23Var);
        return objJ == ri0.n ? objJ : t64.a;
    }

    @Override // defpackage.x63
    public final void b() {
        this.n.b(this);
    }

    @Override // defpackage.x63
    public final void start() {
        this.n.a(this);
    }

    @Override // defpackage.op0
    public final void z(p22 p22Var) {
        this.o.j(null);
    }
}
