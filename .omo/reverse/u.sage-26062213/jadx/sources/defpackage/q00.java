package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q00 extends md2 implements co2, iz, jx0 {
    public final r00 B;
    public boolean C;
    public final v D;

    public q00(r00 r00Var, v vVar) {
        this.B = r00Var;
        this.D = vVar;
        r00Var.n = this;
    }

    @Override // defpackage.md2
    public final void A0() {
        G0();
    }

    public final void G0() {
        this.C = false;
        this.B.o = null;
        kt4.Q(this);
    }

    @Override // defpackage.co2
    public final void H() {
        G0();
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        boolean z = this.C;
        r00 r00Var = this.B;
        if (!z) {
            r00Var.o = null;
            ix.H(this, new j9(3, this, r00Var));
            if (r00Var.o == null) {
                throw di0.m("DrawResult not defined, did you forget to call onDraw?");
            }
            this.C = true;
        }
        dh1 dh1Var = r00Var.o;
        dh1Var.getClass();
        ((pe1) dh1Var.n).k(zy1Var);
    }

    @Override // defpackage.jr0
    public final void a() {
        G0();
    }

    @Override // defpackage.iz
    public final as0 b() {
        return w80.R(this).L;
    }

    @Override // defpackage.iz
    public final long d() {
        return se0.H(w80.P(this, 4).p);
    }

    @Override // defpackage.iz
    public final hy1 getLayoutDirection() {
        return w80.R(this).M;
    }

    @Override // defpackage.jx0
    public final void m0() {
        G0();
    }

    @Override // defpackage.jr0
    public final void q0() {
        G0();
    }

    @Override // defpackage.md2
    public final void z0() {
    }
}
