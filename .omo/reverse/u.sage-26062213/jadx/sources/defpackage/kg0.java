package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kg0 extends md2 implements jx0, oy1, eh3 {
    public cw B;
    public mg0 C;
    public float D = 1.0f;
    public boolean E = true;
    public String F = "Profile picture";
    public pf0 G;
    public final zi H;

    public kg0(zi ziVar, cw cwVar, mg0 mg0Var, pf0 pf0Var) {
        this.B = cwVar;
        this.C = mg0Var;
        this.G = pf0Var;
        this.H = ziVar;
    }

    @Override // defpackage.md2
    public final void A0() {
        this.H.n(null);
    }

    public final long G0(long j) {
        if (mn3.c(j)) {
            return 0L;
        }
        long jH = this.H.h();
        if (jH != 9205357640488583168L) {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (jH >> 32));
            if (Math.abs(fIntBitsToFloat) > Float.MAX_VALUE) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            }
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jH & 4294967295L));
            if (Math.abs(fIntBitsToFloat2) > Float.MAX_VALUE) {
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            }
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
            long jE = this.C.e(jFloatToRawIntBits, j);
            if (Math.abs(Float.intBitsToFloat((int) (jE >> 32))) <= Float.MAX_VALUE && Math.abs(Float.intBitsToFloat((int) (4294967295L & jE))) <= Float.MAX_VALUE) {
                return bi4.I(jFloatToRawIntBits, jE);
            }
        }
        return j;
    }

    public final long H0(long j) {
        float fJ;
        int i;
        float fJ2;
        boolean zF = mf0.f(j);
        boolean zE = mf0.e(j);
        if (!zF || !zE) {
            boolean z = mf0.d(j) && mf0.c(j);
            zi ziVar = this.H;
            long jH = ziVar.h();
            if (jH != 9205357640488583168L) {
                if (z && (zF || zE)) {
                    fJ = mf0.h(j);
                    i = mf0.g(j);
                } else {
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (jH >> 32));
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jH & 4294967295L));
                    if (Math.abs(fIntBitsToFloat) <= Float.MAX_VALUE) {
                        int i2 = m94.b;
                        fJ = ix.j(fIntBitsToFloat, mf0.j(j), mf0.h(j));
                    } else {
                        fJ = mf0.j(j);
                    }
                    if (Math.abs(fIntBitsToFloat2) <= Float.MAX_VALUE) {
                        int i3 = m94.b;
                        fJ2 = ix.j(fIntBitsToFloat2, mf0.i(j), mf0.g(j));
                        long jG0 = G0((((long) Float.floatToRawIntBits(fJ2)) & 4294967295L) | (((long) Float.floatToRawIntBits(fJ)) << 32));
                        return mf0.a(j, nf0.f(is0.V(Float.intBitsToFloat((int) (jG0 >> 32))), j), 0, nf0.e(is0.V(Float.intBitsToFloat((int) (jG0 & 4294967295L))), j), 0, 10);
                    }
                    i = mf0.i(j);
                }
                fJ2 = i;
                long jG02 = G0((((long) Float.floatToRawIntBits(fJ2)) & 4294967295L) | (((long) Float.floatToRawIntBits(fJ)) << 32));
                return mf0.a(j, nf0.f(is0.V(Float.intBitsToFloat((int) (jG02 >> 32))), j), 0, nf0.e(is0.V(Float.intBitsToFloat((int) (jG02 & 4294967295L))), j), 0, 10);
            }
            if (z && ((yi) ziVar.G.n.getValue()).a() != null) {
                return mf0.a(j, mf0.h(j), 0, mf0.g(j), 0, 10);
            }
        }
        return j;
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        long jG0 = G0(x20Var.d());
        long jA = this.B.a(m94.b(jG0), m94.b(x20Var.d()), zy1Var.getLayoutDirection());
        int i = (int) (jA >> 32);
        int i2 = (int) (jA & 4294967295L);
        eh ehVar = x20Var.o;
        long jZ = ehVar.z();
        ehVar.u().j();
        try {
            dh1 dh1Var = (dh1) ehVar.o;
            eh ehVar2 = (eh) dh1Var.n;
            if (this.E) {
                ehVar2.u().e(0.0f, 0.0f, Float.intBitsToFloat((int) (ehVar2.z() >> 32)), Float.intBitsToFloat((int) (4294967295L & ehVar2.z())), 1);
            }
            dh1Var.t(i, i2);
            this.H.g(zy1Var, jG0, this.D, null);
            ehVar.u().h();
            ehVar.K(jZ);
            zy1Var.a();
        } catch (Throwable th) {
            ehVar.u().h();
            ehVar.K(jZ);
            throw th;
        }
    }

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        long jB = nf0.b(0, i, 7);
        pf0 pf0Var = this.G;
        if (pf0Var != null) {
            pf0Var.g(jB);
        }
        if (this.H.h() == 9205357640488583168L) {
            return ya2Var.K(i);
        }
        long jH0 = H0(jB);
        return Math.max(mf0.j(jH0), ya2Var.K(i));
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        String str = this.F;
        if (str != null) {
            kx1[] kx1VarArr = nh3.a;
            ph3Var.a(lh3.a, tv4.E(str));
            nh3.c(ph3Var, 5);
        }
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        long jB = nf0.b(0, i, 7);
        pf0 pf0Var = this.G;
        if (pf0Var != null) {
            pf0Var.g(jB);
        }
        if (this.H.h() == 9205357640488583168L) {
            return ya2Var.R(i);
        }
        long jH0 = H0(jB);
        return Math.max(mf0.j(jH0), ya2Var.R(i));
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        pf0 pf0Var = this.G;
        if (pf0Var != null) {
            pf0Var.g(j);
        }
        dv2 dv2VarE = ya2Var.e(H0(j));
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e0(dv2VarE, 0));
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        long jB = nf0.b(i, 0, 13);
        pf0 pf0Var = this.G;
        if (pf0Var != null) {
            pf0Var.g(jB);
        }
        if (this.H.h() == 9205357640488583168L) {
            return ya2Var.g(i);
        }
        long jH0 = H0(jB);
        return Math.max(mf0.i(jH0), ya2Var.g(i));
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        long jB = nf0.b(i, 0, 13);
        pf0 pf0Var = this.G;
        if (pf0Var != null) {
            pf0Var.g(jB);
        }
        if (this.H.h() == 9205357640488583168L) {
            return ya2Var.T(i);
        }
        long jH0 = H0(jB);
        return Math.max(mf0.i(jH0), ya2Var.T(i));
    }

    @Override // defpackage.md2
    public final void y0() {
        qi0 qi0VarU0 = u0();
        zi ziVar = this.H;
        ziVar.y = qi0VarU0;
        ziVar.a();
    }

    @Override // defpackage.md2
    public final void z0() {
        this.H.e();
    }
}
