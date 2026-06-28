package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n82 implements gy1 {
    public final m82 n;

    public n82(m82 m82Var) {
        this.n = m82Var;
    }

    @Override // defpackage.gy1
    public final boolean B() {
        return this.n.F.O0().A;
    }

    @Override // defpackage.gy1
    public final long F(gy1 gy1Var, long j) {
        boolean z = gy1Var instanceof n82;
        m82 m82Var = this.n;
        if (!z) {
            m82 m82VarW = qn0.w(m82Var);
            mm2 mm2Var = m82VarW.F;
            long jD = go2.d(F(m82VarW.I, j), (4294967295L & ((long) Float.floatToRawIntBits((int) (m82VarW.G & 4294967295L)))) | (Float.floatToRawIntBits((int) (r5 >> 32)) << 32));
            if (!mm2Var.O0().A) {
                ar1.b("LayoutCoordinate operations are only valid when isAttached is true");
            }
            mm2Var.X0();
            mm2 mm2Var2 = mm2Var.H;
            if (mm2Var2 != null) {
                mm2Var = mm2Var2;
            }
            return go2.e(jD, mm2Var.F(gy1Var, 0L));
        }
        m82 m82Var2 = ((n82) gy1Var).n;
        mm2 mm2Var3 = m82Var2.F;
        mm2Var3.X0();
        m82 m82VarM0 = m82Var.F.K0(mm2Var3).M0();
        if (m82VarM0 != null) {
            long jB = js1.b(js1.c(m82Var2.G0(m82VarM0, false), ca.G(j)), m82Var.G0(m82VarM0, false));
            return (((long) Float.floatToRawIntBits((int) (jB >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (jB & 4294967295L))) & 4294967295L);
        }
        m82 m82VarW2 = qn0.w(m82Var2);
        long jC = js1.c(js1.c(m82Var2.G0(m82VarW2, false), m82VarW2.G), ca.G(j));
        m82 m82VarW3 = qn0.w(m82Var);
        long jB2 = js1.b(jC, js1.c(m82Var.G0(m82VarW3, false), m82VarW3.G));
        long jFloatToRawIntBits = Float.floatToRawIntBits((int) (jB2 >> 32));
        long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits((int) (jB2 & 4294967295L))) & 4294967295L;
        mm2 mm2Var4 = m82VarW3.F.H;
        mm2Var4.getClass();
        mm2 mm2Var5 = m82VarW2.F.H;
        mm2Var5.getClass();
        return mm2Var4.F(mm2Var5, jFloatToRawIntBits2 | (jFloatToRawIntBits << 32));
    }

    @Override // defpackage.gy1
    public final l33 H(gy1 gy1Var, boolean z) {
        return this.n.F.H(gy1Var, z);
    }

    @Override // defpackage.gy1
    public final long I() {
        m82 m82Var = this.n;
        return (((long) m82Var.n) << 32) | (((long) m82Var.o) & 4294967295L);
    }

    @Override // defpackage.gy1
    public final long J(long j) {
        return this.n.F.J(go2.e(0L, b()));
    }

    @Override // defpackage.gy1
    public final long a(long j) {
        return this.n.F.a(go2.e(0L, b()));
    }

    public final long b() {
        m82 m82Var = this.n;
        m82 m82VarW = qn0.w(m82Var);
        return go2.d(F(m82VarW.I, 0L), m82Var.F.F(m82VarW.F, 0L));
    }

    @Override // defpackage.gy1
    public final long h(long j) {
        return this.n.F.h(go2.e(j, b()));
    }

    @Override // defpackage.gy1
    public final gy1 j() {
        m82 m82VarM0;
        if (!B()) {
            ar1.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        mm2 mm2Var = ((mm2) this.n.F.F.S.e).H;
        if (mm2Var == null || (m82VarM0 = mm2Var.M0()) == null) {
            return null;
        }
        return m82VarM0.I;
    }

    @Override // defpackage.gy1
    public final long y(gy1 gy1Var, long j) {
        return F(gy1Var, j);
    }
}
