package defpackage;

import android.os.Trace;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zi extends gs2 implements m53 {
    public static final t3 H = new t3(8);
    public cj C;
    public ti D;
    public final wr3 E;
    public final wr3 F;
    public final b23 G;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ow f439u;
    public boolean v;
    public tu1 w;
    public qi0 y;
    public final ws2 s = ca.A(null);
    public float t = 1.0f;
    public long x = 9205357640488583168L;
    public pe1 z = H;
    public mg0 A = lg0.a;
    public int B = 1;

    public zi(ti tiVar) {
        this.D = tiVar;
        this.E = xr3.a(tiVar);
        wr3 wr3VarA = xr3.a(ui.a);
        this.F = wr3VarA;
        this.G = new b23(wr3VarA);
    }

    public static final jo1 j(zi ziVar, jo1 jo1Var, boolean z) {
        go1 go1VarA = jo1.a(jo1Var);
        go1VarA.d = new gw4(5, jo1Var, ziVar);
        io1 io1Var = jo1Var.s;
        if (io1Var.g == null) {
            go1VarA.l = qn3.a;
        }
        if (io1Var.h == null) {
            mg0 mg0Var = ziVar.A;
            int i = m94.b;
            go1VarA.m = (nt1.g(mg0Var, lg0.a) || nt1.g(mg0Var, lg0.b)) ? rd3.o : rd3.n;
        }
        if (io1Var.i == null) {
            go1VarA.n = cx2.o;
        }
        if (z) {
            d01 d01Var = d01.n;
            go1VarA.f = d01Var;
            go1VarA.g = d01Var;
            go1VarA.h = d01Var;
        }
        return go1VarA.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void k(defpackage.zi r3, defpackage.yi r4) {
        /*
            wr3 r0 = r3.F
            java.lang.Object r1 = r0.getValue()
            yi r1 = (defpackage.yi) r1
            pe1 r2 = r3.z
            java.lang.Object r4 = r2.k(r4)
            yi r4 = (defpackage.yi) r4
            r0.h(r4)
            boolean r0 = r4 instanceof defpackage.xi
            if (r0 == 0) goto L1d
            r0 = r4
            xi r0 = (defpackage.xi) r0
            xt3 r0 = r0.b
            goto L26
        L1d:
            boolean r0 = r4 instanceof defpackage.vi
            if (r0 == 0) goto L35
            r0 = r4
            vi r0 = (defpackage.vi) r0
            f21 r0 = r0.b
        L26:
            jo1 r0 = r0.a()
            i3 r2 = defpackage.no1.a
            java.lang.Object r0 = defpackage.k30.w(r0, r2)
            xm2 r0 = (defpackage.xm2) r0
            r0.getClass()
        L35:
            gs2 r0 = r4.a()
            ws2 r3 = r3.s
            r3.setValue(r0)
            gs2 r3 = r1.a()
            gs2 r0 = r4.a()
            if (r3 == r0) goto L6a
            gs2 r3 = r1.a()
            boolean r0 = r3 instanceof defpackage.m53
            r1 = 0
            if (r0 == 0) goto L54
            m53 r3 = (defpackage.m53) r3
            goto L55
        L54:
            r3 = r1
        L55:
            if (r3 == 0) goto L5a
            r3.e()
        L5a:
            gs2 r3 = r4.a()
            boolean r4 = r3 instanceof defpackage.m53
            if (r4 == 0) goto L65
            r1 = r3
            m53 r1 = (defpackage.m53) r1
        L65:
            if (r1 == 0) goto L6a
            r1.a()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zi.k(zi, yi):void");
    }

    @Override // defpackage.m53
    public final void a() {
        Trace.beginSection("AsyncImagePainter.onRemembered");
        try {
            Object objL = l();
            m53 m53Var = objL instanceof m53 ? (m53) objL : null;
            if (m53Var != null) {
                m53Var.a();
            }
            m();
            this.v = true;
        } finally {
            Trace.endSection();
        }
    }

    @Override // defpackage.gs2
    public final boolean b(float f) {
        this.t = f;
        return true;
    }

    @Override // defpackage.m53
    public final void c() {
        tu1 tu1Var = this.w;
        if (tu1Var != null) {
            tu1Var.j(null);
        }
        this.w = null;
        Object objL = l();
        m53 m53Var = objL instanceof m53 ? (m53) objL : null;
        if (m53Var != null) {
            m53Var.c();
        }
        this.v = false;
    }

    @Override // defpackage.gs2
    public final boolean d(ow owVar) {
        this.f439u = owVar;
        return true;
    }

    @Override // defpackage.m53
    public final void e() {
        tu1 tu1Var = this.w;
        if (tu1Var != null) {
            tu1Var.j(null);
        }
        this.w = null;
        Object objL = l();
        m53 m53Var = objL instanceof m53 ? (m53) objL : null;
        if (m53Var != null) {
            m53Var.e();
        }
        this.v = false;
    }

    @Override // defpackage.gs2
    public final long h() {
        gs2 gs2VarL = l();
        if (gs2VarL != null) {
            return gs2VarL.h();
        }
        return 9205357640488583168L;
    }

    @Override // defpackage.gs2
    public final void i(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        long jD = x20Var.d();
        if (!mn3.a(this.x, jD)) {
            this.x = jD;
        }
        gs2 gs2VarL = l();
        if (gs2VarL != null) {
            gs2VarL.g(zy1Var, x20Var.d(), this.t, this.f439u);
        }
    }

    public final gs2 l() {
        return (gs2) this.s.getValue();
    }

    public final void m() {
        ti tiVar = this.D;
        if (tiVar == null) {
            return;
        }
        qi0 qi0Var = this.y;
        if (qi0Var == null) {
            nt1.X("scope");
            throw null;
        }
        p pVar = new p(this, tiVar, null, 4);
        hi0 hi0VarD = qi0Var.d();
        int i = m94.b;
        ji0 ji0Var = (ji0) hi0VarD.K(ji0.o);
        ti0 ti0Var = ti0.q;
        ir3 ir3VarX = (ji0Var == null || ji0Var.equals(zu0.b)) ? ca.x(qi0Var, zu0.b, ti0Var, pVar) : ca.x(dm0.c(new ar0(qi0Var.d())), new br0(ji0Var), ti0Var, pVar);
        tu1 tu1Var = this.w;
        if (tu1Var != null) {
            tu1Var.j(null);
        }
        this.w = ir3VarX;
    }

    public final void n(ti tiVar) {
        if (nt1.g(this.D, tiVar)) {
            return;
        }
        this.D = tiVar;
        if (tiVar == null) {
            tu1 tu1Var = this.w;
            if (tu1Var != null) {
                tu1Var.j(null);
            }
            this.w = null;
        } else if (this.v) {
            m();
        }
        if (tiVar != null) {
            wr3 wr3Var = this.E;
            wr3Var.getClass();
            wr3Var.i(null, tiVar);
        }
    }
}
