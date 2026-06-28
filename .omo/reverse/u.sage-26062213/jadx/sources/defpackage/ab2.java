package defpackage;

import android.os.Trace;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ab2 {
    public final xy1 a;
    public boolean c;
    public boolean d;
    public mf0 i;
    public final eh b = new eh(11);
    public final xh1 e = new xh1(10);
    public final ug2 f = new ug2(new xy1[16]);
    public final long g = 1;
    public final ug2 h = new ug2(new za2[16]);

    public ab2(xy1 xy1Var) {
        this.a = xy1Var;
    }

    public static final boolean a(ab2 ab2Var, xy1 xy1Var, boolean z) {
        mf0 mf0Var;
        cv2 placementScope;
        gr1 gr1Var;
        xy1 xy1VarU;
        xy1 xy1Var2 = ab2Var.a;
        boolean z2 = xy1Var.d0;
        bz1 bz1Var = xy1Var.T;
        if (!z2 && k(xy1Var)) {
            if (xy1Var == xy1Var2) {
                mf0Var = ab2Var.i;
                mf0Var.getClass();
            } else {
                mf0Var = null;
            }
            if (z) {
                zC = bz1Var.e ? c(xy1Var, mf0Var) : false;
                if ((zC || bz1Var.f) && nt1.g(xy1Var.J(), Boolean.TRUE)) {
                    xy1Var.K();
                }
            } else {
                boolean zD = xy1Var.q() ? d(xy1Var, mf0Var) : false;
                if (xy1Var.p() && (xy1Var == xy1Var2 || ((xy1VarU = xy1Var.u()) != null && xy1VarU.I() && bz1Var.p.G))) {
                    if (xy1Var == xy1Var2) {
                        if (xy1Var.P == vy1.p) {
                            xy1Var.d();
                        }
                        xy1 xy1VarU2 = xy1Var.u();
                        if (xy1VarU2 == null || (gr1Var = (gr1) xy1VarU2.S.d) == null || (placementScope = gr1Var.C) == null) {
                            placementScope = ((q9) az1.a(xy1Var)).getPlacementScope();
                        }
                        cv2.j(placementScope, bz1Var.p, 0, 0);
                    } else {
                        xy1Var.T();
                    }
                    xh1 xh1Var = ab2Var.e;
                    xh1Var.getClass();
                    if (xy1Var.c0 > 0) {
                        ((ug2) xh1Var.n).c(xy1Var);
                        xy1Var.b0 = true;
                    }
                }
                zC = zD;
            }
            ab2Var.e();
        }
        return zC;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(defpackage.xy1 r5, defpackage.mf0 r6) {
        /*
            xy1 r0 = r5.f415u
            bz1 r1 = r5.T
            r2 = 0
            if (r0 != 0) goto L8
            return r2
        L8:
            if (r6 == 0) goto L1a
            if (r0 == 0) goto L18
            q82 r0 = r1.q
            r0.getClass()
            long r3 = r6.a
            boolean r6 = r0.u0(r3)
            goto L2f
        L18:
            r6 = r2
            goto L2f
        L1a:
            q82 r6 = r1.q
            if (r6 == 0) goto L21
            mf0 r1 = r6.A
            goto L22
        L21:
            r1 = 0
        L22:
            if (r1 == 0) goto L18
            if (r0 == 0) goto L18
            r6.getClass()
            long r0 = r1.a
            boolean r6 = r6.u0(r0)
        L2f:
            xy1 r0 = r5.u()
            if (r6 == 0) goto L57
            if (r0 == 0) goto L57
            xy1 r1 = r0.f415u
            r3 = 3
            if (r1 != 0) goto L40
            defpackage.xy1.X(r0, r2, r3)
            return r6
        L40:
            vy1 r1 = r5.s()
            vy1 r4 = defpackage.vy1.n
            if (r1 != r4) goto L4c
            defpackage.xy1.V(r0, r2, r3)
            return r6
        L4c:
            vy1 r5 = r5.s()
            vy1 r1 = defpackage.vy1.o
            if (r5 != r1) goto L57
            r0.U(r2)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ab2.c(xy1, mf0):boolean");
    }

    public static boolean d(xy1 xy1Var, mf0 mf0Var) {
        boolean zP = mf0Var != null ? xy1Var.P(mf0Var) : xy1.Q(xy1Var);
        xy1 xy1VarU = xy1Var.u();
        if (zP && xy1VarU != null) {
            if (xy1Var.r() == vy1.n) {
                xy1.X(xy1VarU, false, 3);
                return zP;
            }
            if (xy1Var.r() == vy1.o) {
                xy1VarU.W(false);
            }
        }
        return zP;
    }

    public static boolean i(xy1 xy1Var) {
        q82 q82Var;
        yy1 yy1Var;
        if (xy1Var.T.e) {
            return (xy1Var.s() == vy1.p && ((q82Var = xy1Var.T.q) == null || (yy1Var = q82Var.E) == null || !yy1Var.e())) ? false : true;
        }
        return false;
    }

    public static boolean j(xy1 xy1Var) {
        if (!xy1Var.q()) {
            return false;
        }
        do {
            if (xy1Var.r() == vy1.p && !xy1Var.T.p.K.e()) {
                xy1 xy1VarU = xy1Var.u();
                if ((xy1VarU != null ? xy1VarU.T.d : null) != ty1.n) {
                    return false;
                }
            }
            xy1Var = xy1Var.u();
            if (xy1Var == null) {
                return false;
            }
        } while (!xy1Var.I());
        return true;
    }

    public static boolean k(xy1 xy1Var) {
        q82 q82Var;
        yy1 yy1Var;
        bz1 bz1Var = xy1Var.T;
        return xy1Var.I() || bz1Var.p.G || j(xy1Var) || nt1.g(xy1Var.J(), Boolean.TRUE) || i(xy1Var) || bz1Var.p.K.e() || !((q82Var = bz1Var.q) == null || (yy1Var = q82Var.E) == null || !yy1Var.e());
    }

    public final void b(boolean z) {
        xh1 xh1Var = this.e;
        if (z) {
            ug2 ug2Var = (ug2) xh1Var.n;
            xy1 xy1Var = this.a;
            if (xy1Var.c0 > 0) {
                ug2Var.h();
                ug2Var.c(xy1Var);
                xy1Var.b0 = true;
            }
        }
        if (((ug2) xh1Var.n).p != 0) {
            Trace.beginSection("Compose:onPositionedCallbacks");
            try {
                xh1Var.k();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void e() {
        ug2 ug2Var = this.h;
        int i = ug2Var.p;
        if (i != 0) {
            Object[] objArr = ug2Var.n;
            for (int i2 = 0; i2 < i; i2++) {
                za2 za2Var = (za2) objArr[i2];
                if (za2Var.a.H()) {
                    boolean z = za2Var.b;
                    xy1 xy1Var = za2Var.a;
                    boolean z2 = za2Var.c;
                    if (z) {
                        xy1.V(xy1Var, z2, 2);
                    } else {
                        xy1.X(xy1Var, z2, 2);
                    }
                }
            }
            ug2Var.h();
        }
    }

    public final void f(xy1 xy1Var) {
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            if (nt1.g(xy1Var2.J(), Boolean.TRUE) && !xy1Var2.d0) {
                if (this.b.n(xy1Var2)) {
                    xy1Var2.K();
                }
                f(xy1Var2);
            }
        }
    }

    public final void g(xy1 xy1Var, boolean z) {
        if (!this.c) {
            ar1.b("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (z ? xy1Var.T.e : xy1Var.q()) {
            ar1.a("node not yet measured");
        }
        h(xy1Var, z);
    }

    public final void h(xy1 xy1Var, boolean z) {
        q82 q82Var;
        yy1 yy1Var;
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            vy1 vy1Var = vy1.n;
            if ((!z && (xy1Var2.r() == vy1Var || xy1Var2.T.p.K.e())) || (z && (xy1Var2.s() == vy1Var || ((q82Var = xy1Var2.T.q) != null && (yy1Var = q82Var.E) != null && yy1Var.e())))) {
                boolean zC = ix.C(xy1Var2);
                bz1 bz1Var = xy1Var2.T;
                if (zC && !z) {
                    if (bz1Var.e && this.b.n(xy1Var2)) {
                        o(xy1Var2, true);
                    } else {
                        g(xy1Var2, true);
                    }
                }
                if (z ? bz1Var.e : xy1Var2.q()) {
                    o(xy1Var2, z);
                }
                if (!(z ? bz1Var.e : xy1Var2.q())) {
                    h(xy1Var2, z);
                }
            }
        }
        if (z ? xy1Var.T.e : xy1Var.q()) {
            o(xy1Var, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v2, types: [md2] */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9, types: [md2] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [ug2] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7, types: [ug2] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    public final boolean l(ne1 ne1Var) {
        boolean z;
        md2 md2Var;
        ?? G;
        boolean z2;
        xy1 xy1Var;
        boolean z3;
        boolean zO;
        eh ehVar = this.b;
        xy1 xy1Var2 = this.a;
        if (!xy1Var2.H()) {
            ar1.a("performMeasureAndLayout called with unattached root");
        }
        if (!xy1Var2.I()) {
            ar1.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.c) {
            ar1.a("performMeasureAndLayout called during measure layout");
        }
        boolean z4 = false;
        if (this.i != null) {
            this.c = true;
            this.d = true;
            try {
                boolean zC = ehVar.C();
                wu4 wu4Var = (wu4) ehVar.o;
                if (zC) {
                    z = false;
                    while (true) {
                        wu4 wu4Var2 = (wu4) ehVar.q;
                        wu4 wu4Var3 = (wu4) ehVar.p;
                        if (!((wp3) wu4Var.o).isEmpty()) {
                            xy1Var = (xy1) ((wp3) wu4Var.o).first();
                            wu4Var.s(xy1Var);
                            z3 = xy1Var.f415u != null;
                            z2 = false;
                        } else if (!((wp3) wu4Var3.o).isEmpty()) {
                            xy1Var = (xy1) ((wp3) wu4Var3.o).first();
                            wu4Var3.s(xy1Var);
                            z3 = xy1Var.f415u != null;
                            z2 = true;
                        } else {
                            if (((wp3) wu4Var2.o).isEmpty()) {
                                break;
                            }
                            xy1 xy1Var3 = (xy1) ((wp3) wu4Var2.o).first();
                            wu4Var2.s(xy1Var3);
                            z2 = true;
                            xy1Var = xy1Var3;
                            z3 = false;
                        }
                        if (z2) {
                            zO = a(this, xy1Var, z3);
                        } else {
                            zO = o(xy1Var, z3);
                            if (xy1Var.T.f) {
                                ehVar.i(xy1Var, yt1.o);
                            }
                            if (xy1Var.p()) {
                                ehVar.i(xy1Var, yt1.q);
                            }
                        }
                        if (xy1Var == xy1Var2 && zO) {
                            z = true;
                        }
                    }
                    if (ne1Var != null) {
                        ne1Var.a();
                    }
                } else {
                    z = false;
                }
            } finally {
            }
        } else {
            z = false;
        }
        ug2 ug2Var = this.f;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        int i2 = 0;
        while (i2 < i) {
            bo boVar = ((xy1) objArr[i2]).S;
            gr1 gr1Var = (gr1) boVar.d;
            boolean zG = nm2.g(4194304);
            if (zG) {
                md2Var = gr1Var.h0;
            } else {
                md2Var = gr1Var.h0.r;
                if (md2Var == null) {
                }
                i2++;
                z4 = false;
            }
            o83 o83Var = mm2.d0;
            md2 md2VarQ0 = gr1Var.Q0(zG);
            while (md2VarQ0 != null && (md2VarQ0.q & 4194304) != 0) {
                if ((md2VarQ0.p & 4194304) != 0) {
                    ?? r12 = md2VarQ0;
                    ?? ug2Var2 = 0;
                    while (r12 != 0) {
                        if (r12 instanceof ey1) {
                            ((ey1) r12).m((gr1) boVar.d);
                        } else {
                            if ((r12.p & 4194304) != 0 && (r12 instanceof kr0)) {
                                md2 md2Var2 = ((kr0) r12).C;
                                ?? r15 = z4;
                                G = r12;
                                ug2Var2 = ug2Var2;
                                while (md2Var2 != null) {
                                    if ((md2Var2.p & 4194304) != 0) {
                                        r15++;
                                        ug2Var2 = ug2Var2;
                                        if (r15 == 1) {
                                            G = md2Var2;
                                        } else {
                                            if (ug2Var2 == 0) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (G != 0) {
                                                ug2Var2.c(G);
                                                G = 0;
                                            }
                                            ug2Var2.c(md2Var2);
                                        }
                                    }
                                    md2Var2 = md2Var2.s;
                                    G = G;
                                    ug2Var2 = ug2Var2;
                                    r15 = r15;
                                }
                                if (r15 == 1) {
                                }
                            }
                            z4 = false;
                            r12 = G;
                            ug2Var2 = ug2Var2;
                        }
                        G = w80.g(ug2Var2);
                        z4 = false;
                        r12 = G;
                        ug2Var2 = ug2Var2;
                    }
                }
                if (md2VarQ0 != md2Var) {
                    md2VarQ0 = md2VarQ0.s;
                    z4 = false;
                }
            }
            i2++;
            z4 = false;
        }
        ug2Var.h();
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v6 */
    public final void m(xy1 xy1Var, long j) {
        md2 md2Var;
        if (xy1Var.d0) {
            return;
        }
        xy1 xy1Var2 = this.a;
        if (xy1Var == xy1Var2) {
            ar1.a("measureAndLayout called on root");
        }
        if (!xy1Var2.H()) {
            ar1.a("performMeasureAndLayout called with unattached root");
        }
        if (!xy1Var2.I()) {
            ar1.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.c) {
            ar1.a("performMeasureAndLayout called during measure layout");
        }
        if (this.i != null) {
            this.c = true;
            this.d = false;
            try {
                eh ehVar = this.b;
                ((wu4) ehVar.o).s(xy1Var);
                ((wu4) ehVar.p).s(xy1Var);
                ((wu4) ehVar.q).s(xy1Var);
                if ((c(xy1Var, new mf0(j)) || xy1Var.T.f) && nt1.g(xy1Var.J(), Boolean.TRUE)) {
                    xy1Var.K();
                }
                f(xy1Var);
                d(xy1Var, new mf0(j));
                if (xy1Var.p() && xy1Var.I()) {
                    xy1Var.T();
                    xh1 xh1Var = this.e;
                    xh1Var.getClass();
                    if (xy1Var.c0 > 0) {
                        ((ug2) xh1Var.n).c(xy1Var);
                        xy1Var.b0 = true;
                    }
                }
                e();
            } finally {
            }
        }
        ug2 ug2Var = this.f;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            bo boVar = ((xy1) objArr[i2]).S;
            gr1 gr1Var = (gr1) boVar.d;
            boolean zG = nm2.g(4194304);
            if (zG) {
                md2Var = gr1Var.h0;
            } else {
                md2Var = gr1Var.h0.r;
                if (md2Var == null) {
                }
            }
            o83 o83Var = mm2.d0;
            for (md2 md2VarQ0 = gr1Var.Q0(zG); md2VarQ0 != null && (md2VarQ0.q & 4194304) != 0; md2VarQ0 = md2VarQ0.s) {
                if ((md2VarQ0.p & 4194304) != 0) {
                    ?? G = md2VarQ0;
                    ?? ug2Var2 = 0;
                    while (G != 0) {
                        if (G instanceof ey1) {
                            ((ey1) G).m((gr1) boVar.d);
                        } else if ((G.p & 4194304) != 0 && (G instanceof kr0)) {
                            md2 md2Var2 = ((kr0) G).C;
                            int i3 = 0;
                            G = G;
                            ug2Var2 = ug2Var2;
                            while (md2Var2 != null) {
                                if ((md2Var2.p & 4194304) != 0) {
                                    i3++;
                                    ug2Var2 = ug2Var2;
                                    if (i3 == 1) {
                                        G = md2Var2;
                                    } else {
                                        if (ug2Var2 == 0) {
                                            ug2Var2 = new ug2(new md2[16]);
                                        }
                                        if (G != 0) {
                                            ug2Var2.c(G);
                                            G = 0;
                                        }
                                        ug2Var2.c(md2Var2);
                                    }
                                }
                                md2Var2 = md2Var2.s;
                                G = G;
                                ug2Var2 = ug2Var2;
                            }
                            if (i3 == 1) {
                            }
                        }
                        G = w80.g(ug2Var2);
                    }
                }
                if (md2VarQ0 != md2Var) {
                }
            }
        }
        ug2Var.h();
    }

    public final void n() {
        eh ehVar = this.b;
        if (ehVar.C()) {
            xy1 xy1Var = this.a;
            if (!xy1Var.H()) {
                ar1.a("performMeasureAndLayout called with unattached root");
            }
            if (!xy1Var.I()) {
                ar1.a("performMeasureAndLayout called with unplaced root");
            }
            if (this.c) {
                ar1.a("performMeasureAndLayout called during measure layout");
            }
            if (this.i != null) {
                this.c = true;
                this.d = false;
                try {
                    if ((((wp3) ((wu4) ehVar.q).o).isEmpty() || ((wp3) ((wu4) ehVar.o).o).isEmpty()) ? false : true) {
                        if (xy1Var.f415u != null) {
                            q(xy1Var, true);
                        } else {
                            p(xy1Var);
                        }
                    }
                    q(xy1Var, false);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        this.c = false;
                        this.d = false;
                    }
                }
            }
        }
    }

    public final boolean o(xy1 xy1Var, boolean z) {
        mf0 mf0Var;
        boolean zD = false;
        if (!xy1Var.d0 && k(xy1Var)) {
            if (xy1Var == this.a) {
                mf0Var = this.i;
                mf0Var.getClass();
            } else {
                mf0Var = null;
            }
            if (z) {
                if (xy1Var.T.e) {
                    zD = c(xy1Var, mf0Var);
                }
            } else if (xy1Var.q()) {
                zD = d(xy1Var, mf0Var);
            }
            e();
        }
        return zD;
    }

    public final void p(xy1 xy1Var) {
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            if (xy1Var2.r() == vy1.n || xy1Var2.T.p.K.e()) {
                if (ix.C(xy1Var2)) {
                    q(xy1Var2, true);
                } else {
                    p(xy1Var2);
                }
            }
        }
    }

    public final void q(xy1 xy1Var, boolean z) {
        mf0 mf0Var;
        if (xy1Var.d0) {
            return;
        }
        if (xy1Var == this.a) {
            mf0Var = this.i;
            mf0Var.getClass();
        } else {
            mf0Var = null;
        }
        if (z) {
            c(xy1Var, mf0Var);
        } else {
            d(xy1Var, mf0Var);
        }
    }

    public final boolean r(xy1 xy1Var, boolean z) {
        int iOrdinal = xy1Var.T.d.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 || iOrdinal == 3) {
                this.h.c(new za2(xy1Var, false, z));
            } else {
                if (iOrdinal != 4) {
                    p61.x();
                    return false;
                }
                if (!xy1Var.q() || z) {
                    xy1Var.T.p.H = true;
                    if (!xy1Var.d0 && (xy1Var.I() || j(xy1Var))) {
                        xy1 xy1VarU = xy1Var.u();
                        if (xy1VarU == null || !xy1VarU.q()) {
                            this.b.i(xy1Var, yt1.p);
                        }
                        if (!this.d) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final void s(long j) {
        mf0 mf0Var = this.i;
        if (mf0Var == null ? false : mf0.b(mf0Var.a, j)) {
            return;
        }
        if (this.c) {
            ar1.a("updateRootConstraints called while measuring");
        }
        this.i = new mf0(j);
        xy1 xy1Var = this.a;
        boolean zH = xy1Var.H();
        bz1 bz1Var = xy1Var.T;
        if (zH) {
            xy1 xy1Var2 = xy1Var.f415u;
            if (xy1Var2 != null) {
                bz1Var.e = true;
            }
            bz1Var.p.H = true;
            this.b.i(xy1Var, xy1Var2 != null ? yt1.n : yt1.p);
        }
    }
}
