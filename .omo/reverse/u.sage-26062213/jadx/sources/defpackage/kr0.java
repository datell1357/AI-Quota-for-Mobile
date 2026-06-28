package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class kr0 extends md2 {
    public final int B = nm2.e(this);
    public md2 C;

    @Override // defpackage.md2
    public final void B0() {
        super.B0();
        for (md2 md2Var = this.C; md2Var != null; md2Var = md2Var.s) {
            md2Var.B0();
        }
    }

    @Override // defpackage.md2
    public final void C0() {
        for (md2 md2Var = this.C; md2Var != null; md2Var = md2Var.s) {
            md2Var.C0();
        }
        super.C0();
    }

    @Override // defpackage.md2
    public final void D0() {
        super.D0();
        for (md2 md2Var = this.C; md2Var != null; md2Var = md2Var.s) {
            md2Var.D0();
        }
    }

    @Override // defpackage.md2
    public final void E0(md2 md2Var) {
        this.n = md2Var;
        for (md2 md2Var2 = this.C; md2Var2 != null; md2Var2 = md2Var2.s) {
            md2Var2.E0(md2Var);
        }
    }

    @Override // defpackage.md2
    public final void F0(mm2 mm2Var) {
        this.f206u = mm2Var;
        for (md2 md2Var = this.C; md2Var != null; md2Var = md2Var.s) {
            md2Var.F0(mm2Var);
        }
    }

    public final jr0 G0(jr0 jr0Var) {
        md2 md2Var = ((md2) jr0Var).n;
        if (md2Var != jr0Var) {
            md2 md2Var2 = jr0Var instanceof md2 ? (md2) jr0Var : null;
            md2 md2Var3 = md2Var2 != null ? md2Var2.r : null;
            if (md2Var != this.n || !nt1.g(md2Var3, this)) {
                k21.n("Cannot delegate to an already delegated node");
                return null;
            }
        } else {
            if (md2Var.A) {
                ar1.b("Cannot delegate to an already attached node");
            }
            md2Var.E0(this.n);
            int i = this.p;
            int iF = nm2.f(md2Var);
            md2Var.p = iF;
            int i2 = this.p;
            int i3 = iF & 2;
            if (i3 != 0 && (i2 & 2) != 0 && !(this instanceof oy1)) {
                ar1.b("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + md2Var);
            }
            md2Var.s = this.C;
            this.C = md2Var;
            md2Var.r = this;
            I0(iF | this.p, false);
            if (this.A) {
                if (i3 == 0 || (i & 2) != 0) {
                    F0(this.f206u);
                } else {
                    bo boVar = w80.R(this).S;
                    this.n.F0(null);
                    boVar.i();
                }
                md2Var.w0();
                md2Var.C0();
                if (!md2Var.A) {
                    ar1.b("autoInvalidateInsertedNode called on unattached node");
                }
                nm2.a(md2Var, -1, 1);
            }
        }
        return jr0Var;
    }

    public final void H0(jr0 jr0Var) {
        md2 md2Var = null;
        for (md2 md2Var2 = this.C; md2Var2 != null; md2Var2 = md2Var2.s) {
            if (md2Var2 == jr0Var) {
                boolean z = md2Var2.A;
                if (z) {
                    cg2 cg2Var = nm2.a;
                    if (!z) {
                        ar1.b("autoInvalidateRemovedNode called on unattached node");
                    }
                    nm2.a(md2Var2, -1, 2);
                    md2Var2.D0();
                    md2Var2.x0();
                }
                md2Var2.E0(md2Var2);
                md2Var2.q = 0;
                md2 md2Var3 = md2Var2.s;
                if (md2Var == null) {
                    this.C = md2Var3;
                } else {
                    md2Var.s = md2Var3;
                }
                md2Var2.s = null;
                md2Var2.r = null;
                int i = this.p;
                int iF = nm2.f(this);
                I0(iF, true);
                if (this.A && (i & 2) != 0 && (iF & 2) == 0) {
                    bo boVar = w80.R(this).S;
                    this.n.F0(null);
                    boVar.i();
                    return;
                }
                return;
            }
            md2Var = md2Var2;
        }
        mk0.k(jr0Var, "Could not find delegate: ");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r2v2, types: [md2] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final void I0(int i, boolean z) {
        md2 md2Var;
        int i2 = this.p;
        this.p = i;
        if (i2 != i) {
            md2 md2Var2 = this.n;
            if (md2Var2 == this) {
                this.q = i;
            }
            boolean z2 = this.A;
            ?? r2 = this;
            if (z2) {
                while (r2 != 0) {
                    i |= r2.p;
                    r2.p = i;
                    if (r2 == md2Var2) {
                        break;
                    } else {
                        r2 = r2.r;
                    }
                }
                if (z && r2 == md2Var2) {
                    i = nm2.f(md2Var2);
                    md2Var2.p = i;
                }
                int i3 = i | ((r2 == 0 || (md2Var = r2.s) == null) ? 0 : md2Var.q);
                for (?? r22 = r2; r22 != 0; r22 = r22.r) {
                    i3 |= r22.p;
                    r22.q = i3;
                }
            }
        }
    }

    @Override // defpackage.md2
    public final void w0() {
        super.w0();
        for (md2 md2Var = this.C; md2Var != null; md2Var = md2Var.s) {
            md2Var.F0(this.f206u);
            if (!md2Var.A) {
                md2Var.w0();
            }
        }
    }

    @Override // defpackage.md2
    public final void x0() {
        for (md2 md2Var = this.C; md2Var != null; md2Var = md2Var.s) {
            md2Var.x0();
        }
        super.x0();
    }
}
