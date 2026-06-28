package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q82 extends dv2 implements ya2, d8, de2 {
    public mf0 A;
    public pe1 C;
    public boolean H;
    public Object K;
    public boolean O;
    public final bz1 s;
    public boolean t;
    public boolean x;
    public boolean y;
    public boolean z;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f274u = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public int v = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public vy1 w = vy1.p;
    public long B = 0;
    public o82 D = o82.p;
    public final yy1 E = new yy1(this, 1);
    public final ug2 F = new ug2(new q82[16]);
    public boolean G = true;
    public final p82 I = new p82(this, 0);
    public boolean J = true;
    public long L = nf0.b(0, 0, 15);
    public final p82 M = new p82(this, 2);
    public final p82 N = new p82(this, 1);

    public q82(bz1 bz1Var) {
        this.s = bz1Var;
        this.K = bz1Var.p.E;
    }

    @Override // defpackage.ya2
    public final int K(int i) {
        n0();
        m82 m82VarM0 = this.s.a().M0();
        m82VarM0.getClass();
        return m82VarM0.K(i);
    }

    @Override // defpackage.d8
    public final int O() {
        return this.v;
    }

    @Override // defpackage.d8
    public final void Q() {
        xy1.V(this.s.a, false, 7);
    }

    @Override // defpackage.ya2
    public final int R(int i) {
        n0();
        m82 m82VarM0 = this.s.a().M0();
        m82VarM0.getClass();
        return m82VarM0.R(i);
    }

    @Override // defpackage.ya2
    public final int T(int i) {
        n0();
        m82 m82VarM0 = this.s.a().M0();
        m82VarM0.getClass();
        return m82VarM0.T(i);
    }

    @Override // defpackage.dv2
    public final int V(y7 y7Var) {
        bz1 bz1Var = this.s;
        xy1 xy1VarU = bz1Var.a.u();
        ty1 ty1Var = xy1VarU != null ? xy1VarU.T.d : null;
        ty1 ty1Var2 = ty1.o;
        yy1 yy1Var = this.E;
        if (ty1Var == ty1Var2) {
            yy1Var.c = true;
        } else {
            xy1 xy1VarU2 = bz1Var.a.u();
            if ((xy1VarU2 != null ? xy1VarU2.T.d : null) == ty1.q) {
                yy1Var.d = true;
            }
        }
        this.x = true;
        m82 m82VarM0 = bz1Var.a().M0();
        m82VarM0.getClass();
        int iV = m82VarM0.V(y7Var);
        this.x = false;
        return iV;
    }

    @Override // defpackage.dv2
    public final int Y() {
        m82 m82VarM0 = this.s.a().M0();
        m82VarM0.getClass();
        return m82VarM0.Y();
    }

    @Override // defpackage.dv2
    public final int a0() {
        m82 m82VarM0 = this.s.a().M0();
        m82VarM0.getClass();
        return m82VarM0.a0();
    }

    @Override // defpackage.d8
    public final yy1 c() {
        return this.E;
    }

    @Override // defpackage.dv2
    public final void d0(long j, float f, pe1 pe1Var) {
        q0(j, pe1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    @Override // defpackage.ya2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.dv2 e(long r7) {
        /*
            r6 = this;
            bz1 r0 = r6.s
            xy1 r1 = r0.a
            xy1 r2 = r0.a
            xy1 r1 = r1.u()
            r3 = 0
            if (r1 == 0) goto L12
            bz1 r1 = r1.T
            ty1 r1 = r1.d
            goto L13
        L12:
            r1 = r3
        L13:
            ty1 r4 = defpackage.ty1.o
            if (r1 == r4) goto L27
            xy1 r1 = r2.u()
            if (r1 == 0) goto L22
            bz1 r1 = r1.T
            ty1 r1 = r1.d
            goto L23
        L22:
            r1 = r3
        L23:
            ty1 r4 = defpackage.ty1.q
            if (r1 != r4) goto L2a
        L27:
            r1 = 0
            r0.b = r1
        L2a:
            xy1 r0 = r2.u()
            vy1 r1 = defpackage.vy1.p
            if (r0 == 0) goto L64
            bz1 r0 = r0.T
            vy1 r4 = r6.w
            if (r4 == r1) goto L42
            boolean r4 = r2.R
            if (r4 == 0) goto L3d
            goto L42
        L3d:
            java.lang.String r4 = "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"
            defpackage.ar1.b(r4)
        L42:
            ty1 r4 = r0.d
            int r4 = r4.ordinal()
            if (r4 == 0) goto L5f
            r5 = 1
            if (r4 == r5) goto L5f
            r5 = 2
            if (r4 == r5) goto L5c
            r5 = 3
            if (r4 != r5) goto L54
            goto L5c
        L54:
            ty1 r6 = r0.d
            java.lang.String r7 = "Measurable could be only measured from the parent's measure or layout block. Parents state is "
            defpackage.p61.w(r6, r7)
            return r3
        L5c:
            vy1 r0 = defpackage.vy1.o
            goto L61
        L5f:
            vy1 r0 = defpackage.vy1.n
        L61:
            r6.w = r0
            goto L66
        L64:
            r6.w = r1
        L66:
            vy1 r0 = r2.P
            if (r0 != r1) goto L6d
            r2.c()
        L6d:
            r6.u0(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q82.e(long):dv2");
    }

    @Override // defpackage.ya2
    public final int g(int i) {
        n0();
        m82 m82VarM0 = this.s.a().M0();
        m82VarM0.getClass();
        return m82VarM0.g(i);
    }

    @Override // defpackage.dv2, defpackage.ya2
    public final Object i() {
        return this.K;
    }

    public final boolean j0() {
        bz1 bz1Var = this.s;
        return ix.C(bz1Var.a) || bz1Var.c;
    }

    public final void k0(boolean z) {
        if (z && j0()) {
            return;
        }
        if (z || j0()) {
            this.D = o82.p;
            ug2 ug2VarZ = this.s.a.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                q82 q82Var = ((xy1) objArr[i2]).T.q;
                q82Var.getClass();
                q82Var.k0(true);
            }
        }
    }

    @Override // defpackage.d8
    public final void l(c8 c8Var) {
        ug2 ug2VarZ = this.s.a.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            q82 q82Var = ((xy1) objArr[i2]).T.q;
            q82Var.getClass();
            c8Var.k(q82Var);
        }
    }

    public final void l0() {
        o82 o82Var = this.D;
        bz1 bz1Var = this.s;
        boolean z = bz1Var.c;
        xy1 xy1Var = bz1Var.a;
        o82 o82Var2 = o82.n;
        if (z) {
            this.D = o82.o;
        } else {
            this.D = o82Var2;
        }
        if (o82Var != o82Var2 && bz1Var.e) {
            xy1.V(xy1Var, true, 6);
        }
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            q82 q82Var = xy1Var2.T.q;
            if (q82Var == null) {
                k21.f("Error: Child node's lookahead pass delegate cannot be null when in a lookahead scope.");
                return;
            }
            if (q82Var.v != Integer.MAX_VALUE) {
                q82Var.l0();
                xy1.Y(xy1Var2);
            }
        }
    }

    @Override // defpackage.de2
    public final void m(boolean z) {
        m82 m82VarM0;
        bz1 bz1Var = this.s;
        m82 m82VarM02 = bz1Var.a().M0();
        if (Boolean.valueOf(z).equals(m82VarM02 != null ? Boolean.valueOf(m82VarM02.y) : null) || (m82VarM0 = bz1Var.a().M0()) == null) {
            return;
        }
        m82VarM0.y = z;
    }

    public final void m0() {
        bz1 bz1Var = this.s;
        if (bz1Var.o > 0) {
            ug2 ug2VarZ = bz1Var.a.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                xy1 xy1Var = (xy1) objArr[i2];
                bz1 bz1Var2 = xy1Var.T;
                if ((bz1Var2.m || bz1Var2.n) && !bz1Var2.f) {
                    xy1Var.U(false);
                }
                q82 q82Var = bz1Var2.q;
                if (q82Var != null) {
                    q82Var.m0();
                }
            }
        }
    }

    @Override // defpackage.d8
    public final gr1 n() {
        return (gr1) this.s.a.S.d;
    }

    public final void n0() {
        bz1 bz1Var = this.s;
        xy1.V(bz1Var.a, false, 7);
        xy1 xy1Var = bz1Var.a;
        xy1 xy1VarU = xy1Var.u();
        if (xy1VarU == null || xy1Var.P != vy1.p) {
            return;
        }
        int iOrdinal = xy1VarU.T.d.ordinal();
        xy1Var.P = iOrdinal != 0 ? iOrdinal != 2 ? xy1VarU.P : vy1.o : vy1.n;
    }

    public final void o0() {
        ty1 ty1Var;
        this.O = true;
        bz1 bz1Var = this.s;
        xy1 xy1VarU = bz1Var.a.u();
        o82 o82Var = this.D;
        if ((o82Var != o82.n && !bz1Var.c) || (o82Var != o82.o && bz1Var.c)) {
            l0();
            if (this.t && xy1VarU != null) {
                xy1VarU.U(false);
            }
        }
        if (xy1VarU != null) {
            bz1 bz1Var2 = xy1VarU.T;
            if (!this.t && ((ty1Var = bz1Var2.d) == ty1.p || ty1Var == ty1.q)) {
                if (this.v != Integer.MAX_VALUE) {
                    ar1.b("Place was called on a node which was placed already");
                }
                int i = bz1Var2.h;
                this.v = i;
                bz1Var2.h = i + 1;
            }
        } else {
            this.v = 0;
        }
        x();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006e A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0013, B:9:0x0018, B:12:0x001d, B:14:0x0021, B:15:0x0026, B:17:0x0035, B:19:0x0039, B:22:0x003f, B:21:0x003d, B:23:0x0042, B:25:0x004c, B:30:0x0056, B:32:0x0084, B:31:0x006e), top: B:36:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q0(long r10, defpackage.pe1 r12) {
        /*
            r9 = this;
            bz1 r0 = r9.s
            xy1 r1 = r0.a
            xy1 r2 = r0.a
            r3 = 0
            xy1 r4 = r1.u()     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L12
            bz1 r4 = r4.T     // Catch: java.lang.Throwable -> L1b
            ty1 r4 = r4.d     // Catch: java.lang.Throwable -> L1b
            goto L13
        L12:
            r4 = r3
        L13:
            ty1 r5 = defpackage.ty1.q     // Catch: java.lang.Throwable -> L1b
            r6 = 0
            if (r4 != r5) goto L1d
            r0.c = r6     // Catch: java.lang.Throwable -> L1b
            goto L1d
        L1b:
            r9 = move-exception
            goto L8b
        L1d:
            boolean r4 = r2.d0     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L26
            java.lang.String r4 = "place is called on a deactivated node"
            defpackage.ar1.a(r4)     // Catch: java.lang.Throwable -> L1b
        L26:
            r0.d = r5     // Catch: java.lang.Throwable -> L1b
            r4 = 1
            r9.y = r4     // Catch: java.lang.Throwable -> L1b
            r9.O = r6     // Catch: java.lang.Throwable -> L1b
            long r7 = r9.B     // Catch: java.lang.Throwable -> L1b
            boolean r5 = defpackage.js1.a(r10, r7)     // Catch: java.lang.Throwable -> L1b
            if (r5 != 0) goto L42
            boolean r5 = r0.n     // Catch: java.lang.Throwable -> L1b
            if (r5 != 0) goto L3d
            boolean r5 = r0.m     // Catch: java.lang.Throwable -> L1b
            if (r5 == 0) goto L3f
        L3d:
            r0.f = r4     // Catch: java.lang.Throwable -> L1b
        L3f:
            r9.m0()     // Catch: java.lang.Throwable -> L1b
        L42:
            sr2 r5 = defpackage.az1.a(r2)     // Catch: java.lang.Throwable -> L1b
            r9.B = r10     // Catch: java.lang.Throwable -> L1b
            boolean r7 = r0.f     // Catch: java.lang.Throwable -> L1b
            if (r7 != 0) goto L6e
            o82 r7 = r9.D     // Catch: java.lang.Throwable -> L1b
            o82 r8 = defpackage.o82.p     // Catch: java.lang.Throwable -> L1b
            if (r7 == r8) goto L53
            goto L54
        L53:
            r4 = r6
        L54:
            if (r4 == 0) goto L6e
            mm2 r2 = r0.a()     // Catch: java.lang.Throwable -> L1b
            m82 r2 = r2.M0()     // Catch: java.lang.Throwable -> L1b
            r2.getClass()     // Catch: java.lang.Throwable -> L1b
            long r4 = r2.r     // Catch: java.lang.Throwable -> L1b
            long r10 = defpackage.js1.c(r10, r4)     // Catch: java.lang.Throwable -> L1b
            r2.F0(r10)     // Catch: java.lang.Throwable -> L1b
            r9.o0()     // Catch: java.lang.Throwable -> L1b
            goto L84
        L6e:
            r0.h(r6)     // Catch: java.lang.Throwable -> L1b
            yy1 r10 = r9.E     // Catch: java.lang.Throwable -> L1b
            r10.g = r6     // Catch: java.lang.Throwable -> L1b
            q9 r5 = (defpackage.q9) r5     // Catch: java.lang.Throwable -> L1b
            ur2 r10 = r5.getSnapshotObserver()     // Catch: java.lang.Throwable -> L1b
            p82 r11 = r9.N     // Catch: java.lang.Throwable -> L1b
            do2 r4 = r10.g     // Catch: java.lang.Throwable -> L1b
            ip3 r10 = r10.a     // Catch: java.lang.Throwable -> L1b
            r10.c(r2, r4, r11)     // Catch: java.lang.Throwable -> L1b
        L84:
            r9.C = r12     // Catch: java.lang.Throwable -> L1b
            ty1 r9 = defpackage.ty1.r     // Catch: java.lang.Throwable -> L1b
            r0.d = r9     // Catch: java.lang.Throwable -> L1b
            return
        L8b:
            r1.a0(r9)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q82.q0(long, pe1):void");
    }

    @Override // defpackage.d8
    public final d8 r() {
        bz1 bz1Var;
        xy1 xy1VarU = this.s.a.u();
        if (xy1VarU == null || (bz1Var = xy1VarU.T) == null) {
            return null;
        }
        return bz1Var.q;
    }

    @Override // defpackage.d8
    public final void requestLayout() {
        this.s.a.U(false);
    }

    public final boolean u0(long j) {
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        xy1 xy1Var2 = bz1Var.a;
        try {
            if (xy1Var.d0) {
                ar1.a("measure is called on a deactivated node");
            }
            xy1 xy1VarU = xy1Var2.u();
            xy1Var2.R = xy1Var2.R || (xy1VarU != null && xy1VarU.R);
            if (!xy1Var2.T.e) {
                mf0 mf0Var = this.A;
                if (mf0Var == null ? false : mf0.b(mf0Var.a, j)) {
                    sr2 sr2Var = xy1Var2.A;
                    if (sr2Var != null) {
                        ((q9) sr2Var).g(xy1Var2, true);
                    }
                    xy1Var2.Z();
                    return false;
                }
            }
            this.A = new mf0(j);
            h0(j);
            this.E.f = false;
            ug2 ug2VarZ = xy1Var2.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                q82 q82Var = ((xy1) objArr[i2]).T.q;
                q82Var.getClass();
                q82Var.E.c = false;
            }
            long j2 = this.z ? this.p : -9223372034707292160L;
            this.z = true;
            m82 m82VarM0 = bz1Var.a().M0();
            if (m82VarM0 == null) {
                ar1.b("Lookahead result from lookaheadRemeasure cannot be null");
            }
            bz1Var.c(j);
            g0((((long) m82VarM0.n) << 32) | (((long) m82VarM0.o) & 4294967295L));
            return (((int) (j2 >> 32)) == m82VarM0.n && ((int) (j2 & 4294967295L)) == m82VarM0.o) ? false : true;
        } catch (Throwable th) {
            xy1Var.a0(th);
            throw null;
        }
    }

    @Override // defpackage.d8
    public final void x() {
        this.H = true;
        yy1 yy1Var = this.E;
        yy1Var.h();
        bz1 bz1Var = this.s;
        boolean z = bz1Var.f;
        xy1 xy1Var = bz1Var.a;
        if (z) {
            ug2 ug2VarZ = xy1Var.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                xy1 xy1Var2 = (xy1) objArr[i2];
                bz1 bz1Var2 = xy1Var2.T;
                if (bz1Var2.e && xy1Var2.s() == vy1.n) {
                    q82 q82Var = bz1Var2.q;
                    q82Var.getClass();
                    q82 q82Var2 = bz1Var2.q;
                    mf0 mf0Var = q82Var2 != null ? q82Var2.A : null;
                    mf0Var.getClass();
                    if (q82Var.u0(mf0Var.a)) {
                        xy1.V(xy1Var, false, 7);
                    }
                }
            }
        }
        fr1 fr1Var = n().i0;
        fr1Var.getClass();
        if (bz1Var.g || (!this.x && !fr1Var.B && bz1Var.f)) {
            bz1Var.f = false;
            ty1 ty1Var = bz1Var.d;
            bz1Var.d = ty1.q;
            bz1Var.i(false);
            ur2 snapshotObserver = ((q9) az1.a(xy1Var)).getSnapshotObserver();
            snapshotObserver.a.c(xy1Var, snapshotObserver.h, this.I);
            bz1Var.d = ty1Var;
            if (bz1Var.m && fr1Var.B) {
                requestLayout();
            }
            bz1Var.g = false;
        }
        if (yy1Var.d) {
            yy1Var.e = true;
        }
        if (yy1Var.b && yy1Var.e()) {
            yy1Var.g();
        }
        this.H = false;
    }
}
