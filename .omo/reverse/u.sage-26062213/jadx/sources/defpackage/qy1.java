package defpackage;

import android.graphics.Paint;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qy1 extends mm2 {
    public static final lb j0;
    public oy1 h0;
    public py1 i0;

    static {
        lb lbVarE = on4.e();
        lbVarE.f(t70.d);
        ((Paint) lbVarE.o).setStrokeWidth(1.0f);
        lbVarE.k(1);
        j0 = lbVarE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public qy1(xy1 xy1Var, oy1 oy1Var) {
        super(xy1Var);
        this.h0 = oy1Var;
        this.i0 = xy1Var.f415u != null ? new py1(this) : null;
        if ((((md2) oy1Var).n.p & 512) == 0) {
            return;
        }
        mk0.b();
        throw null;
    }

    @Override // defpackage.mm2
    public final void J0() {
        if (this.i0 == null) {
            this.i0 = new py1(this);
        }
    }

    @Override // defpackage.ya2
    public final int K(int i) {
        oy1 oy1Var = this.h0;
        mm2 mm2Var = this.G;
        mm2Var.getClass();
        return oy1Var.O(this, mm2Var, i);
    }

    @Override // defpackage.mm2
    public final m82 M0() {
        return this.i0;
    }

    @Override // defpackage.mm2
    public final md2 O0() {
        return ((md2) this.h0).n;
    }

    @Override // defpackage.ya2
    public final int R(int i) {
        oy1 oy1Var = this.h0;
        mm2 mm2Var = this.G;
        mm2Var.getClass();
        return oy1Var.e(this, mm2Var, i);
    }

    @Override // defpackage.ya2
    public final int T(int i) {
        oy1 oy1Var = this.h0;
        mm2 mm2Var = this.G;
        mm2Var.getClass();
        return oy1Var.y(this, mm2Var, i);
    }

    @Override // defpackage.dv2
    public final void d0(long j, float f, pe1 pe1Var) {
        e1(j, f, pe1Var);
        if (this.A) {
            return;
        }
        Z0();
        mm2 mm2Var = this.G;
        mm2Var.getClass();
        boolean z = mm2Var.B;
        mm2Var.B = this.B;
        v0().d();
        mm2Var.B = z;
    }

    @Override // defpackage.mm2
    public final void d1(v20 v20Var, zh1 zh1Var) {
        mm2 mm2Var;
        mm2 mm2Var2 = this.G;
        mm2Var2.getClass();
        mm2Var2.H0(v20Var, zh1Var);
        if (!((q9) az1.a(this.F)).getShowLayoutBounds() || (mm2Var = this.G) == null) {
            return;
        }
        if (rs1.a(this.p, mm2Var.p) && js1.a(mm2Var.Q, 0L)) {
            return;
        }
        long j = this.p;
        v20Var.n(0.5f, 0.5f, ((int) (j >> 32)) - 0.5f, ((int) (j & 4294967295L)) - 0.5f, j0);
    }

    @Override // defpackage.ya2
    public final dv2 e(long j) {
        h0(j);
        oy1 oy1Var = this.h0;
        mm2 mm2Var = this.G;
        mm2Var.getClass();
        h1(oy1Var.h0(this, mm2Var, j));
        Y0();
        return this;
    }

    @Override // defpackage.ya2
    public final int g(int i) {
        oy1 oy1Var = this.h0;
        mm2 mm2Var = this.G;
        mm2Var.getClass();
        return oy1Var.l(this, mm2Var, i);
    }

    @Override // defpackage.k82
    public final int k0(y7 y7Var) {
        py1 py1Var = this.i0;
        if (py1Var == null) {
            return w80.d(this, y7Var);
        }
        cg2 cg2Var = py1Var.K;
        int iD = cg2Var.d(y7Var);
        if (iD >= 0) {
            return cg2Var.c[iD];
        }
        return Integer.MIN_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n1(oy1 oy1Var) {
        if (oy1Var.equals(this.h0) || (((md2) oy1Var).n.p & 512) == 0) {
            this.h0 = oy1Var;
        } else {
            mk0.b();
        }
    }
}
