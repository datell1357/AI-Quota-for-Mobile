package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zy1 implements kx0 {
    public final x20 n = new x20();
    public jx0 o;

    @Override // defpackage.kx0
    public final void A(sb sbVar, zf5 zf5Var, float f, tv4 tv4Var, int i) {
        this.n.A(sbVar, zf5Var, f, tv4Var, i);
    }

    @Override // defpackage.kx0
    public final void E(zf5 zf5Var, long j, long j2, float f, tv4 tv4Var) {
        this.n.E(zf5Var, j, j2, f, tv4Var);
    }

    @Override // defpackage.as0
    public final float G(long j) {
        return this.n.G(j);
    }

    @Override // defpackage.kx0
    public final void M(gb gbVar, long j, long j2, long j3, float f, ow owVar, int i) {
        this.n.M(gbVar, j, j2, j3, f, owVar, i);
    }

    @Override // defpackage.as0
    public final int N(float f) {
        return this.n.N(f);
    }

    @Override // defpackage.kx0
    public final long U() {
        return this.n.U();
    }

    @Override // defpackage.as0
    public final long X(long j) {
        return this.n.X(j);
    }

    @Override // defpackage.as0
    public final float Z(long j) {
        return this.n.Z(j);
    }

    public final void a() {
        x20 x20Var = this.n;
        v20 v20VarU = x20Var.o.u();
        jr0 jr0Var = this.o;
        if (jr0Var == null) {
            throw di0.m("Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer.");
        }
        md2 md2Var = (md2) jr0Var;
        md2 md2VarG = md2Var.n.s;
        if (md2VarG == null || (md2VarG.q & 4) == 0) {
            md2VarG = null;
        } else {
            while (md2VarG != null) {
                int i = md2VarG.p;
                if ((i & 2) != 0) {
                    break;
                } else if ((i & 4) != 0) {
                    break;
                } else {
                    md2VarG = md2VarG.s;
                }
            }
            md2VarG = null;
        }
        if (md2VarG == null) {
            mm2 mm2VarP = w80.P(jr0Var, 4);
            if (mm2VarP.O0() == md2Var.n) {
                mm2VarP = mm2VarP.G;
                mm2VarP.getClass();
            }
            mm2VarP.d1(v20VarU, (zh1) x20Var.o.p);
            return;
        }
        ug2 ug2Var = null;
        while (md2VarG != null) {
            if (md2VarG instanceof jx0) {
                jx0 jx0Var = (jx0) md2VarG;
                zh1 zh1Var = (zh1) x20Var.o.p;
                mm2 mm2VarP2 = w80.P(jx0Var, 4);
                long jH = se0.H(mm2VarP2.p);
                xy1 xy1Var = mm2VarP2.F;
                xy1Var.getClass();
                ((q9) az1.a(xy1Var)).getSharedDrawScope().c(v20VarU, jH, mm2VarP2, jx0Var, zh1Var);
            } else if ((md2VarG.p & 4) != 0 && (md2VarG instanceof kr0)) {
                int i2 = 0;
                for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                    if ((md2Var2.p & 4) != 0) {
                        i2++;
                        if (i2 == 1) {
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
                if (i2 == 1) {
                }
            }
            md2VarG = w80.g(ug2Var);
        }
    }

    @Override // defpackage.as0
    public final float b() {
        return this.n.b();
    }

    @Override // defpackage.kx0
    public final void b0(long j, long j2, long j3, float f) {
        this.n.b0(j, j2, j3, f);
    }

    public final void c(v20 v20Var, long j, mm2 mm2Var, jx0 jx0Var, zh1 zh1Var) {
        jx0 jx0Var2 = this.o;
        this.o = jx0Var;
        hy1 hy1Var = mm2Var.F.M;
        x20 x20Var = this.n;
        as0 as0VarV = x20Var.o.v();
        eh ehVar = x20Var.o;
        hy1 hy1VarX = ehVar.x();
        v20 v20VarU = ehVar.u();
        long jZ = ehVar.z();
        zh1 zh1Var2 = (zh1) ehVar.p;
        ehVar.I(mm2Var);
        ehVar.J(hy1Var);
        ehVar.H(v20Var);
        ehVar.K(j);
        ehVar.p = zh1Var;
        v20Var.j();
        try {
            jx0Var.K(this);
            v20Var.h();
            ehVar.I(as0VarV);
            ehVar.J(hy1VarX);
            ehVar.H(v20VarU);
            ehVar.K(jZ);
            ehVar.p = zh1Var2;
            this.o = jx0Var2;
        } catch (Throwable th) {
            v20Var.h();
            ehVar.I(as0VarV);
            ehVar.J(hy1VarX);
            ehVar.H(v20VarU);
            ehVar.K(jZ);
            ehVar.p = zh1Var2;
            throw th;
        }
    }

    @Override // defpackage.kx0
    public final long d() {
        return this.n.d();
    }

    @Override // defpackage.kx0
    public final void f(sb sbVar, long j, tv4 tv4Var) {
        this.n.f(sbVar, j, tv4Var);
    }

    @Override // defpackage.kx0
    public final hy1 getLayoutDirection() {
        return this.n.n.b;
    }

    @Override // defpackage.as0
    public final long i0(float f) {
        return this.n.i0(f);
    }

    @Override // defpackage.as0
    public final float k() {
        return this.n.k();
    }

    @Override // defpackage.kx0
    public final void p(zf5 zf5Var, long j, long j2, long j3, float f, tv4 tv4Var) {
        this.n.p(zf5Var, j, j2, j3, f, tv4Var);
    }

    @Override // defpackage.as0
    public final float p0(int i) {
        return this.n.p0(i);
    }

    @Override // defpackage.as0
    public final float r0(float f) {
        return f / this.n.b();
    }

    @Override // defpackage.as0
    public final long s(float f) {
        return this.n.s(f);
    }

    @Override // defpackage.kx0
    public final void s0(long j, float f, float f2, long j2, long j3, tv4 tv4Var) {
        this.n.s0(j, f, f2, j2, j3, tv4Var);
    }

    @Override // defpackage.as0
    public final long t(long j) {
        return this.n.t(j);
    }

    @Override // defpackage.kx0
    public final void u(long j, long j2, long j3, tv4 tv4Var, int i) {
        this.n.u(j, j2, j3, tv4Var, i);
    }

    @Override // defpackage.as0
    public final float v(float f) {
        return this.n.b() * f;
    }

    @Override // defpackage.kx0
    public final eh z() {
        return this.n.o;
    }
}
