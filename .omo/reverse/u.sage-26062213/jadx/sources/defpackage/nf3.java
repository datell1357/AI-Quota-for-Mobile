package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nf3 extends kr0 implements fc0, co2 {
    public xf3 D;
    public hr2 E;
    public boolean F;
    public to0 G;
    public vf2 H;
    public boolean I;
    public wa J;
    public wf3 K;
    public jr0 L;
    public xa M;
    public wa N;
    public boolean O;

    @Override // defpackage.co2
    public final void H() {
        xa xaVar = (xa) n44.g0(this, qr2.a);
        if (nt1.g(xaVar, this.M)) {
            return;
        }
        this.M = xaVar;
        this.N = null;
        jr0 jr0Var = this.L;
        if (jr0Var != null) {
            H0(jr0Var);
        }
        this.L = null;
        J0();
        wf3 wf3Var = this.K;
        if (wf3Var != null) {
            xf3 xf3Var = this.D;
            hr2 hr2Var = this.E;
            wf3Var.Z0(this.I ? this.N : this.J, this.G, this.H, hr2Var, xf3Var, this.F, this.O);
        }
    }

    public final void J0() {
        jr0 jr0Var = this.L;
        if (jr0Var != null) {
            if (((md2) jr0Var).n.A) {
                return;
            }
            G0(jr0Var);
            return;
        }
        if (this.I) {
            ix.H(this, new vc3(1, this));
        }
        wa waVar = this.I ? this.N : this.J;
        if (waVar != null) {
            kr0 kr0Var = waVar.i;
            if (kr0Var.n.A) {
                return;
            }
            G0(kr0Var);
            this.L = kr0Var;
        }
    }

    public final boolean K0() {
        return (this.A ? w80.R(this).M : hy1.n) != hy1.o || this.E == hr2.n;
    }

    public final void L0(wa waVar, to0 to0Var, vf2 vf2Var, hr2 hr2Var, xf3 xf3Var, boolean z, boolean z2) {
        boolean z3;
        this.D = xf3Var;
        this.E = hr2Var;
        boolean z4 = true;
        if (this.I != z) {
            this.I = z;
            z3 = true;
        } else {
            z3 = false;
        }
        if (nt1.g(this.J, waVar)) {
            z4 = false;
        } else {
            this.J = waVar;
        }
        if (z3 || (z4 && !z)) {
            jr0 jr0Var = this.L;
            if (jr0Var != null) {
                H0(jr0Var);
            }
            this.L = null;
            J0();
        }
        this.F = z2;
        this.G = to0Var;
        this.H = vf2Var;
        boolean zK0 = K0();
        this.O = zK0;
        wf3 wf3Var = this.K;
        if (wf3Var != null) {
            wf3Var.Z0(this.I ? this.N : this.J, to0Var, vf2Var, hr2Var, xf3Var, z2, zK0);
        }
    }

    @Override // defpackage.jr0
    public final void q0() {
        boolean zK0 = K0();
        if (this.O != zK0) {
            this.O = zK0;
            xf3 xf3Var = this.D;
            hr2 hr2Var = this.E;
            boolean z = this.I;
            L0(z ? this.N : this.J, this.G, this.H, hr2Var, xf3Var, z, this.F);
        }
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.md2
    public final void y0() {
        this.O = K0();
        J0();
        if (this.K == null) {
            xf3 xf3Var = this.D;
            wf3 wf3Var = new wf3(this.I ? this.N : this.J, this.G, this.H, this.E, xf3Var, this.F, this.O);
            G0(wf3Var);
            this.K = wf3Var;
        }
    }

    @Override // defpackage.md2
    public final void z0() {
        jr0 jr0Var = this.L;
        if (jr0Var != null) {
            H0(jr0Var);
        }
    }
}
