package defpackage;

import android.graphics.Paint;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x20 implements kx0 {
    public final w20 n;
    public final eh o;
    public lb p;
    public lb q;

    public x20() {
        ds0 ds0Var = c75.d;
        w20 w20Var = new w20();
        w20Var.a = ds0Var;
        w20Var.b = hy1.n;
        w20Var.c = c01.a;
        w20Var.d = 0L;
        this.n = w20Var;
        this.o = new eh(this);
    }

    public static lb a(x20 x20Var, long j, tv4 tv4Var, int i) {
        lb lbVarE = x20Var.e(tv4Var);
        Paint paint = (Paint) lbVarE.o;
        if (!t70.c(lbVarE.a(), j)) {
            lbVarE.f(j);
        }
        if (((Shader) lbVarE.p) != null) {
            lbVarE.h(null);
        }
        if (!nt1.g((ow) lbVarE.q, null)) {
            lbVarE.g(null);
        }
        if (lbVarE.n != i) {
            lbVarE.e(i);
        }
        if (paint.isFilterBitmap()) {
            return lbVarE;
        }
        paint.setFilterBitmap(true);
        return lbVarE;
    }

    @Override // defpackage.kx0
    public final void A(sb sbVar, zf5 zf5Var, float f, tv4 tv4Var, int i) {
        this.n.c.g(sbVar, c(zf5Var, tv4Var, f, null, i, 1));
    }

    @Override // defpackage.kx0
    public final void E(zf5 zf5Var, long j, long j2, float f, tv4 tv4Var) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        this.n.c.n(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (4294967295L & j2)) + Float.intBitsToFloat(i2), c(zf5Var, tv4Var, f, null, 3, 1));
    }

    @Override // defpackage.kx0
    public final void M(gb gbVar, long j, long j2, long j3, float f, ow owVar, int i) {
        this.n.c.d(gbVar, j, j2, j3, c(null, t51.f, f, owVar, 3, i));
    }

    @Override // defpackage.as0
    public final float b() {
        return this.n.a.b();
    }

    @Override // defpackage.kx0
    public final void b0(long j, long j2, long j3, float f) {
        v20 v20Var = this.n.c;
        lb lbVarE = this.q;
        if (lbVarE == null) {
            lbVarE = on4.e();
            lbVarE.k(1);
            this.q = lbVarE;
        }
        Paint paint = (Paint) lbVarE.o;
        if (!t70.c(lbVarE.a(), j)) {
            lbVarE.f(j);
        }
        if (((Shader) lbVarE.p) != null) {
            lbVarE.h(null);
        }
        if (!nt1.g((ow) lbVarE.q, null)) {
            lbVarE.g(null);
        }
        if (lbVarE.n != 3) {
            lbVarE.e(3);
        }
        if (paint.getStrokeWidth() != f) {
            paint.setStrokeWidth(f);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            paint.setStrokeMiter(4.0f);
        }
        if (lbVarE.b() != 0) {
            lbVarE.i(0);
        }
        if (lbVarE.c() != 0) {
            lbVarE.j(0);
        }
        if (!paint.isFilterBitmap()) {
            paint.setFilterBitmap(true);
        }
        v20Var.k(j2, j3, lbVarE);
    }

    public final lb c(zf5 zf5Var, tv4 tv4Var, float f, ow owVar, int i, int i2) {
        lb lbVarE = e(tv4Var);
        Paint paint = (Paint) lbVarE.o;
        if (zf5Var != null) {
            zf5Var.j(f, d(), lbVarE);
        } else {
            if (((Shader) lbVarE.p) != null) {
                lbVarE.h(null);
            }
            long jA = lbVarE.a();
            long j = t70.b;
            if (!t70.c(jA, j)) {
                lbVarE.f(j);
            }
            if (paint.getAlpha() / 255.0f != f) {
                lbVarE.d(f);
            }
        }
        if (!nt1.g((ow) lbVarE.q, owVar)) {
            lbVarE.g(owVar);
        }
        if (lbVarE.n != i) {
            lbVarE.e(i);
        }
        if (paint.isFilterBitmap() == i2) {
            return lbVarE;
        }
        paint.setFilterBitmap(true ^ (i2 == 0));
        return lbVarE;
    }

    public final lb e(tv4 tv4Var) {
        if (nt1.g(tv4Var, t51.f)) {
            lb lbVar = this.p;
            if (lbVar != null) {
                return lbVar;
            }
            lb lbVarE = on4.e();
            lbVarE.k(0);
            this.p = lbVarE;
            return lbVarE;
        }
        if (!(tv4Var instanceof ht3)) {
            p61.x();
            return null;
        }
        lb lbVarE2 = this.q;
        if (lbVarE2 == null) {
            lbVarE2 = on4.e();
            lbVarE2.k(1);
            this.q = lbVarE2;
        }
        Paint paint = (Paint) lbVarE2.o;
        float strokeWidth = paint.getStrokeWidth();
        ht3 ht3Var = (ht3) tv4Var;
        float f = ht3Var.f;
        if (strokeWidth != f) {
            paint.setStrokeWidth(f);
        }
        int iB = lbVarE2.b();
        int i = ht3Var.h;
        if (iB != i) {
            lbVarE2.i(i);
        }
        float strokeMiter = paint.getStrokeMiter();
        float f2 = ht3Var.g;
        if (strokeMiter != f2) {
            paint.setStrokeMiter(f2);
        }
        int iC = lbVarE2.c();
        int i2 = ht3Var.i;
        if (iC == i2) {
            return lbVarE2;
        }
        lbVarE2.j(i2);
        return lbVarE2;
    }

    @Override // defpackage.kx0
    public final void f(sb sbVar, long j, tv4 tv4Var) {
        this.n.c.g(sbVar, a(this, j, tv4Var, 3));
    }

    @Override // defpackage.kx0
    public final hy1 getLayoutDirection() {
        return this.n.b;
    }

    @Override // defpackage.as0
    public final float k() {
        return this.n.a.k();
    }

    @Override // defpackage.kx0
    public final void p(zf5 zf5Var, long j, long j2, long j3, float f, tv4 tv4Var) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        this.n.c.i(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), c(zf5Var, tv4Var, f, null, 3, 1));
    }

    @Override // defpackage.kx0
    public final void s0(long j, float f, float f2, long j2, long j3, tv4 tv4Var) {
        int i = (int) (j2 >> 32);
        int i2 = (int) (j2 & 4294967295L);
        this.n.c.r(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i2), f, f2, a(this, j, tv4Var, 3));
    }

    @Override // defpackage.kx0
    public final void u(long j, long j2, long j3, tv4 tv4Var, int i) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        this.n.c.n(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i3), a(this, j, tv4Var, i));
    }

    @Override // defpackage.kx0
    public final eh z() {
        return this.o;
    }
}
