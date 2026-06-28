package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gw0 extends md2 implements b24, ey1 {
    public gw0 B;
    public gw0 C;
    public long D;

    public final boolean G0() {
        gw0 gw0Var = this.B;
        if (gw0Var != null) {
            return gw0Var.G0();
        }
        gw0 gw0Var2 = this.C;
        if (gw0Var2 != null) {
            return gw0Var2.G0();
        }
        return false;
    }

    public final void H0() {
        gw0 gw0Var = this.C;
        if (gw0Var != null) {
            gw0Var.H0();
            return;
        }
        gw0 gw0Var2 = this.B;
        if (gw0Var2 != null) {
            gw0Var2.H0();
        }
    }

    public final void I0() {
        gw0 gw0Var = this.C;
        if (gw0Var != null) {
            gw0Var.I0();
        }
        gw0 gw0Var2 = this.B;
        if (gw0Var2 != null) {
            gw0Var2.I0();
        }
        this.B = null;
    }

    public final void J0(wu4 wu4Var) {
        b24 b24Var;
        gw0 gw0Var;
        gw0 gw0Var2 = this.B;
        if (gw0Var2 == null || !fl4.d(gw0Var2, on4.B(wu4Var))) {
            if (this.n.A) {
                w33 w33Var = new w33();
                qj0.e0(this, new yc(w33Var, this, wu4Var, 2));
                b24Var = (b24) w33Var.n;
            } else {
                b24Var = null;
            }
            gw0Var = (gw0) b24Var;
        } else {
            gw0Var = gw0Var2;
        }
        if (gw0Var != null && gw0Var2 == null) {
            gw0Var.H0();
            gw0Var.J0(wu4Var);
            gw0 gw0Var3 = this.C;
            if (gw0Var3 != null) {
                gw0Var3.I0();
            }
        } else if (gw0Var == null && gw0Var2 != null) {
            gw0 gw0Var4 = this.C;
            if (gw0Var4 != null) {
                gw0Var4.H0();
                gw0Var4.J0(wu4Var);
            }
            gw0Var2.I0();
        } else if (!nt1.g(gw0Var, gw0Var2)) {
            if (gw0Var != null) {
                gw0Var.H0();
                gw0Var.J0(wu4Var);
            }
            if (gw0Var2 != null) {
                gw0Var2.I0();
            }
        } else if (gw0Var != null) {
            gw0Var.J0(wu4Var);
        } else {
            gw0 gw0Var5 = this.C;
            if (gw0Var5 != null) {
                gw0Var5.J0(wu4Var);
            }
        }
        this.B = gw0Var;
    }

    public final void K0() {
        gw0 gw0Var = this.C;
        if (gw0Var != null) {
            gw0Var.K0();
            return;
        }
        gw0 gw0Var2 = this.B;
        if (gw0Var2 != null) {
            gw0Var2.K0();
        }
    }

    @Override // defpackage.ey1, defpackage.jb2
    public final void c(long j) {
        this.D = j;
    }

    @Override // defpackage.b24
    public final Object n() {
        return mj1.N;
    }

    @Override // defpackage.md2
    public final void z0() {
        this.C = null;
        this.B = null;
    }
}
