package defpackage;

import com.google.api.client.googleapis.media.MediaHttpUploader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class na1 extends kr0 implements eh3, fh1, fc0, co2, b24 {
    public static final b21 J = new b21(1);
    public vf2 D;
    public final o E;
    public t91 F;
    public i02 G;
    public mm2 H;
    public final ka1 I;

    public na1(vf2 vf2Var, o oVar) {
        this.D = vf2Var;
        this.E = oVar;
        ka1 ka1Var = new ka1(0, new ha1(2, this, na1.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0, 0, 1), 10);
        G0(ka1Var);
        this.I = ka1Var;
    }

    @Override // defpackage.md2
    public final void A0() {
        i02 i02Var = this.G;
        if (i02Var != null) {
            i02Var.b();
        }
        this.G = null;
    }

    @Override // defpackage.co2
    public final void H() {
        w33 w33Var = new w33();
        ix.H(this, new h4(13, w33Var, this));
        i02 i02Var = (i02) w33Var.n;
        if (this.I.L0().a()) {
            i02 i02Var2 = this.G;
            if (i02Var2 != null) {
                i02Var2.b();
            }
            if (i02Var != null) {
                i02Var.a();
            } else {
                i02Var = null;
            }
            this.G = i02Var;
        }
    }

    public final void J0(vf2 vf2Var, ws1 ws1Var) {
        if (!this.A) {
            vf2Var.c(ws1Var);
            return;
        }
        tu1 tu1Var = (tu1) ((bh0) u0()).n.K(mj1.W);
        ca.y(u0(), null, null, new p(vf2Var, ws1Var, tu1Var != null ? tu1Var.V(new m(8, vf2Var, ws1Var)) : null, null, 13), 3);
    }

    public final void K0() {
        bo boVar;
        if (this.A) {
            if (!this.n.A) {
                ar1.b("visitAncestors called on an unattached node");
            }
            md2 md2Var = this.n.r;
            xy1 xy1VarR = w80.R(this);
            while (xy1VarR != null) {
                if ((((md2) xy1VarR.S.g).q & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                    while (md2Var != null) {
                        if ((md2Var.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                            md2 md2VarG = md2Var;
                            ug2 ug2Var = null;
                            while (md2VarG != null) {
                                if (md2VarG instanceof b24) {
                                    if (oa1.B == ((b24) md2VarG).n()) {
                                        return;
                                    }
                                }
                                if ((md2VarG.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 && (md2VarG instanceof kr0)) {
                                    int i = 0;
                                    for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                        if ((md2Var2.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                                            i++;
                                            if (i == 1) {
                                                md2VarG = md2Var2;
                                            } else {
                                                if (ug2Var == null) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (md2VarG != null) {
                                                    ug2Var.c(md2VarG);
                                                    md2VarG = null;
                                                }
                                                ug2Var.c(md2Var2);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                md2VarG = w80.g(ug2Var);
                            }
                        }
                        md2Var = md2Var.r;
                    }
                }
                xy1VarR = xy1VarR.u();
                md2Var = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
            }
        }
    }

    public final void L0(vf2 vf2Var) {
        t91 t91Var;
        if (nt1.g(this.D, vf2Var)) {
            return;
        }
        vf2 vf2Var2 = this.D;
        if (vf2Var2 != null && (t91Var = this.F) != null) {
            vf2Var2.c(new u91(t91Var));
        }
        this.F = null;
        this.D = vf2Var;
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        boolean zA = this.I.L0().a();
        kx1[] kx1VarArr = nh3.a;
        oh3 oh3Var = lh3.l;
        kx1 kx1Var = nh3.a[4];
        ph3Var.a(oh3Var, Boolean.valueOf(zA));
        ph3Var.a(ah3.v, new o2(null, new h9(0, this, na1.class, "requestFocus", "requestFocus()Z", 0, 0, 2)));
    }

    @Override // defpackage.b24
    public final Object n() {
        return J;
    }

    @Override // defpackage.fh1
    public final void r(mm2 mm2Var) {
        this.H = mm2Var;
        if (this.I.L0().a()) {
            if (!mm2Var.O0().A) {
                K0();
                return;
            }
            mm2 mm2Var2 = this.H;
            if (mm2Var2 == null || !mm2Var2.O0().A) {
                return;
            }
            K0();
        }
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}
