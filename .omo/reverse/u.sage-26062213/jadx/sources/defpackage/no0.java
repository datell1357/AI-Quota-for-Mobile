package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class no0 extends md2 implements jx0 {
    public final xs1 B;
    public boolean C;
    public boolean D;
    public boolean E;

    public no0(xs1 xs1Var) {
        this.B = xs1Var;
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        zy1Var.a();
        x20 x20Var = zy1Var.n;
        if (this.C) {
            kx0.C(zy1Var, t70.b(0.3f, t70.b), x20Var.d(), 122);
        } else if (this.D || this.E) {
            kx0.C(zy1Var, t70.b(0.1f, t70.b), x20Var.d(), 122);
        }
    }

    @Override // defpackage.md2
    public final void y0() {
        ca.y(u0(), null, null, new x50(this, (dh0) null, 2), 3);
    }
}
