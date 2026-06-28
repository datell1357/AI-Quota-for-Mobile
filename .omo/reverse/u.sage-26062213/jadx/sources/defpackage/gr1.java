package defpackage;

import android.graphics.Paint;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gr1 extends mm2 {
    public static final lb j0;
    public final gw3 h0;
    public fr1 i0;

    static {
        lb lbVarE = on4.e();
        lbVarE.f(t70.c);
        ((Paint) lbVarE.o).setStrokeWidth(1.0f);
        lbVarE.k(1);
        j0 = lbVarE;
    }

    public gr1(xy1 xy1Var) {
        super(xy1Var);
        gw3 gw3Var = new gw3();
        gw3Var.q = 0;
        this.h0 = gw3Var;
        gw3Var.f206u = this;
        this.i0 = xy1Var.f415u != null ? new fr1(this) : null;
    }

    @Override // defpackage.mm2
    public final void J0() {
        if (this.i0 == null) {
            this.i0 = new fr1(this);
        }
    }

    @Override // defpackage.ya2
    public final int K(int i) {
        xh1 xh1VarT = this.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.i((mm2) xy1Var.S.e, xy1Var.m(), i);
    }

    @Override // defpackage.mm2
    public final m82 M0() {
        return this.i0;
    }

    @Override // defpackage.mm2
    public final md2 O0() {
        return this.h0;
    }

    @Override // defpackage.ya2
    public final int R(int i) {
        xh1 xh1VarT = this.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.c((mm2) xy1Var.S.e, xy1Var.m(), i);
    }

    @Override // defpackage.ya2
    public final int T(int i) {
        xh1 xh1VarT = this.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.g((mm2) xy1Var.S.e, xy1Var.m(), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.mm2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void U0(defpackage.km2 r12, long r13, defpackage.zj1 r15, int r16, boolean r17) {
        /*
            r11 = this;
            xy1 r0 = r11.F
            boolean r1 = r12.q(r0)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            boolean r1 = r11.m1(r13)
            if (r1 == 0) goto L16
            r9 = r16
            r10 = r17
        L14:
            r3 = r2
            goto L34
        L16:
            r9 = r16
            if (r9 != r2) goto L32
            long r4 = r11.N0()
            float r11 = r11.G0(r13, r4)
            int r11 = java.lang.Float.floatToRawIntBits(r11)
            r1 = 2147483647(0x7fffffff, float:NaN)
            r11 = r11 & r1
            r1 = 2139095040(0x7f800000, float:Infinity)
            if (r11 >= r1) goto L32
            r10 = r3
            goto L14
        L30:
            r9 = r16
        L32:
            r10 = r17
        L34:
            if (r3 == 0) goto L7a
            int r11 = r15.p
            ug2 r0 = r0.y()
            java.lang.Object[] r1 = r0.n
            int r0 = r0.p
            int r0 = r0 - r2
        L41:
            if (r0 < 0) goto L78
            r2 = r1[r0]
            r5 = r2
            xy1 r5 = (defpackage.xy1) r5
            boolean r2 = r5.I()
            if (r2 == 0) goto L73
            r4 = r12
            r6 = r13
            r8 = r15
            r4.j(r5, r6, r8, r9, r10)
            long r2 = r15.a()
            float r6 = defpackage.n44.n0(r2)
            r7 = 0
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 >= 0) goto L73
            boolean r6 = defpackage.n44.w0(r2)
            if (r6 == 0) goto L73
            boolean r2 = defpackage.n44.v0(r2)
            if (r2 != 0) goto L73
            boolean r2 = r12.m(r15, r5)
            if (r2 == 0) goto L78
        L73:
            int r0 = r0 + (-1)
            r9 = r16
            goto L41
        L78:
            r15.p = r11
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gr1.U0(km2, long, zj1, int, boolean):void");
    }

    @Override // defpackage.dv2
    public final void d0(long j, float f, pe1 pe1Var) {
        e1(j, f, pe1Var);
        if (this.A) {
            return;
        }
        this.F.T.p.n0();
    }

    @Override // defpackage.mm2
    public final void d1(v20 v20Var, zh1 zh1Var) {
        xy1 xy1Var = this.F;
        sr2 sr2VarA = az1.a(xy1Var);
        ug2 ug2VarY = xy1Var.y();
        Object[] objArr = ug2VarY.n;
        int i = ug2VarY.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            if (xy1Var2.I()) {
                xy1Var2.i(v20Var, zh1Var);
            }
        }
        if (((q9) sr2VarA).getShowLayoutBounds()) {
            long j = this.p;
            v20Var.n(0.5f, 0.5f, ((int) (j >> 32)) - 0.5f, ((int) (j & 4294967295L)) - 0.5f, j0);
        }
    }

    @Override // defpackage.ya2
    public final dv2 e(long j) {
        h0(j);
        xy1 xy1Var = this.F;
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            ((xy1) objArr[i2]).T.p.y = vy1.p;
        }
        h1(xy1Var.J.f(this, xy1Var.m(), j));
        Y0();
        return this;
    }

    @Override // defpackage.ya2
    public final int g(int i) {
        xh1 xh1VarT = this.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.a((mm2) xy1Var.S.e, xy1Var.m(), i);
    }

    @Override // defpackage.k82
    public final int k0(y7 y7Var) {
        fr1 fr1Var = this.i0;
        if (fr1Var != null) {
            return fr1Var.k0(y7Var);
        }
        cb2 cb2Var = this.F.T.p;
        yy1 yy1Var = cb2Var.K;
        if (!cb2Var.z) {
            if (cb2Var.s.d == ty1.n) {
                yy1Var.f = true;
                if (yy1Var.b) {
                    cb2Var.I = true;
                    cb2Var.J = true;
                }
            } else {
                yy1Var.g = true;
            }
        }
        gr1 gr1VarN = cb2Var.n();
        boolean z = gr1VarN.B;
        gr1VarN.B = true;
        cb2Var.x();
        gr1VarN.B = z;
        Integer num = (Integer) yy1Var.i.get(y7Var);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }
}
