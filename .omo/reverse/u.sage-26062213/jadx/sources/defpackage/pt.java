package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class pt {
    public final Context a;
    public final nv3 b;
    public final nv3 c;
    public final nv3 d;
    public final nv3 e;
    public final bh0 f;
    public final nv3 g;
    public final wr3 h;
    public final b23 i;
    public final nv3 j;

    public pt(Context context) {
        context.getClass();
        this.a = context;
        this.b = new nv3(new qs(this, 0));
        this.c = new nv3(new qs(this, 1));
        this.d = new nv3(new qs(this, 2));
        this.e = new nv3(new qs(this, 3));
        zp0 zp0Var = zu0.a;
        lp0 lp0Var = lp0.p;
        bu3 bu3VarF = k30.f();
        lp0Var.getClass();
        this.f = dm0.c(ca.B(lp0Var, bu3VarF));
        this.g = new nv3(new qs(this, 4));
        wr3 wr3VarA = xr3.a(Boolean.FALSE);
        this.h = wr3VarA;
        this.i = new b23(wr3VarA);
        this.j = new nv3(new qs(this, 5));
    }

    public abstract boolean a(w3 w3Var);

    public abstract Object b(fh0 fh0Var);

    public abstract n1 c();

    public abstract n8 d();

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(defpackage.fh0 r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.rs
            if (r0 == 0) goto L13
            r0 = r5
            rs r0 = (defpackage.rs) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            rs r0 = new rs
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.q
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            defpackage.gg4.T(r5)
            goto L3e
        L25:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L2c:
            defpackage.gg4.T(r5)
            n1 r5 = r4.c()
            r0.s = r2
            java.lang.Object r5 = r5.b(r0)
            ri0 r0 = defpackage.ri0.n
            if (r5 != r0) goto L3e
            return r0
        L3e:
            w3 r5 = (defpackage.w3) r5
            boolean r4 = r4.a(r5)
            ra3 r5 = defpackage.ez3.a
            r0 = 0
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r5.getClass()
            defpackage.ra3.c(r0)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pt.e(fh0):java.lang.Object");
    }

    public abstract d84 f();

    public final boolean g() {
        return ((Boolean) this.h.getValue()).booleanValue();
    }

    public abstract xr h();

    public abstract Class i();

    public abstract y84 j();

    public final ur3 k() {
        return (ur3) this.g.getValue();
    }

    public abstract ps l();

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(defpackage.fh0 r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof defpackage.ss
            if (r0 == 0) goto L13
            r0 = r7
            ss r0 = (defpackage.ss) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            ss r0 = new ss
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 0
            wr3 r4 = r6.h
            r5 = 1
            if (r1 == 0) goto L2f
            if (r1 != r5) goto L29
            defpackage.gg4.T(r7)
            goto L53
        L29:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r3
        L2f:
            defpackage.gg4.T(r7)
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            r4.getClass()
            r4.i(r3, r7)
            ra3 r7 = defpackage.ez3.a
            java.lang.Object[] r1 = new java.lang.Object[r2]
            r7.getClass()
            defpackage.ra3.c(r1)
            ps r6 = r6.l()
            r0.s = r5
            java.lang.Object r6 = r6.e(r0)
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L53
            return r7
        L53:
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            r4.getClass()
            r4.i(r3, r6)
            ra3 r6 = defpackage.ez3.a
            java.lang.Object[] r7 = new java.lang.Object[r2]
            r6.getClass()
            defpackage.ra3.c(r7)
            t64 r6 = defpackage.t64.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pt.m(fh0):java.lang.Object");
    }

    public final void n(v43 v43Var) {
        v43Var.getClass();
        ez3.a.getClass();
        ra3.c(new Object[0]);
        ca.y(this.f, null, null, new zs(this, v43Var, null), 3);
    }

    public final void o() {
        y84 y84VarJ = j();
        y84VarJ.getClass();
        if (y84VarJ == y84.r || y84VarJ == y84.f419u) {
            m10 m10Var = new m10(this.a, j());
            dh0 dh0Var = null;
            dt dtVar = new dt(this, m10Var, dh0Var, 0);
            bh0 bh0Var = this.f;
            ca.y(bh0Var, null, null, dtVar, 3);
            ca.y(bh0Var, null, null, new dt(this, m10Var, dh0Var, 1), 3);
        }
    }

    public final void p() {
        ca.y(this.f, null, null, new ht(this, null, 0), 3);
    }

    public final void q() {
        ca.y(this.f, null, null, new ht(this, null, 1), 3);
    }

    public final void r() {
        ca.y(this.f, null, null, new ht(this, null, 2), 3);
    }

    public final void s(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        wr3 wr3Var = this.h;
        wr3Var.getClass();
        wr3Var.i(null, boolValueOf);
    }
}
