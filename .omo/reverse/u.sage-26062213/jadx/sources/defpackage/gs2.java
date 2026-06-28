package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gs2 {
    public lb n;
    public boolean o;
    public ow p;
    public float q = 1.0f;
    public hy1 r = hy1.n;

    public boolean b(float f) {
        return false;
    }

    public boolean d(ow owVar) {
        return false;
    }

    public final void g(zy1 zy1Var, long j, float f, ow owVar) {
        x20 x20Var = zy1Var.n;
        if (this.q != f) {
            if (!b(f)) {
                lb lbVarE = this.n;
                if (f == 1.0f) {
                    if (lbVarE != null) {
                        lbVarE.d(f);
                    }
                    this.o = false;
                } else {
                    if (lbVarE == null) {
                        lbVarE = on4.e();
                        this.n = lbVarE;
                    }
                    lbVarE.d(f);
                    this.o = true;
                }
            }
            this.q = f;
        }
        if (!nt1.g(this.p, owVar)) {
            if (!d(owVar)) {
                lb lbVarE2 = this.n;
                if (owVar == null) {
                    if (lbVarE2 != null) {
                        lbVarE2.g(null);
                    }
                    this.o = false;
                } else {
                    if (lbVarE2 == null) {
                        lbVarE2 = on4.e();
                        this.n = lbVarE2;
                    }
                    lbVarE2.g(owVar);
                    this.o = true;
                }
            }
            this.p = owVar;
        }
        hy1 layoutDirection = zy1Var.getLayoutDirection();
        if (this.r != layoutDirection) {
            f(layoutDirection);
            this.r = layoutDirection;
        }
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (x20Var.d() >> 32)) - Float.intBitsToFloat(i);
        int i2 = (int) (j & 4294967295L);
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)) - Float.intBitsToFloat(i2);
        ((dh1) x20Var.o.o).o(0.0f, 0.0f, fIntBitsToFloat, fIntBitsToFloat2);
        if (f > 0.0f) {
            try {
                if (Float.intBitsToFloat(i) > 0.0f && Float.intBitsToFloat(i2) > 0.0f) {
                    if (this.o) {
                        float fIntBitsToFloat3 = Float.intBitsToFloat(i);
                        l33 l33VarD = qn0.d(0L, (((long) Float.floatToRawIntBits(Float.intBitsToFloat(i2))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat3) << 32));
                        v20 v20VarU = x20Var.o.u();
                        lb lbVarE3 = this.n;
                        if (lbVarE3 == null) {
                            lbVarE3 = on4.e();
                            this.n = lbVarE3;
                        }
                        try {
                            v20VarU.m(l33VarD, lbVarE3);
                            i(zy1Var);
                            v20VarU.h();
                        } catch (Throwable th) {
                            v20VarU.h();
                            throw th;
                        }
                    } else {
                        i(zy1Var);
                    }
                }
            } catch (Throwable th2) {
                ((dh1) x20Var.o.o).o(-0.0f, -0.0f, -fIntBitsToFloat, -fIntBitsToFloat2);
                throw th2;
            }
        }
        ((dh1) x20Var.o.o).o(-0.0f, -0.0f, -fIntBitsToFloat, -fIntBitsToFloat2);
    }

    public abstract long h();

    public abstract void i(zy1 zy1Var);

    public void f(hy1 hy1Var) {
    }
}
