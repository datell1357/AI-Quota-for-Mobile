package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n12 implements xf3 {
    public static final xh1 y;
    public final np0 a;
    public boolean b;
    public f12 c;
    public boolean d;
    public final ic e;
    public final ws2 f;
    public final vf2 g;
    public float h;
    public boolean i;
    public final hg j;
    public final boolean k;
    public xy1 l;
    public final l12 m;
    public final op n;
    public final dh o;
    public final zx p;
    public final n02 q;
    public final dd1 r;
    public final k02 s;
    public final pg2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ws2 f216u;
    public final ws2 v;
    public final pg2 w;
    public final xh1 x;

    static {
        ei0 ei0Var = new ei0(6);
        t3 t3Var = new t3(27);
        sp0 sp0Var = new sp0(12, ei0Var);
        n44.R(1, t3Var);
        y = new xh1(sp0Var, t3Var);
    }

    public n12(int i, int i2) {
        np0 np0Var = new np0();
        np0Var.a = -1;
        np0Var.d = -1;
        this.a = np0Var;
        ic icVar = new ic();
        icVar.b = new ts2(i);
        icVar.c = new ts2(i2);
        icVar.e = new h02(i);
        this.e = icVar;
        f12 f12Var = p12.a;
        w13 w13Var = w13.J;
        this.f = new ws2(f12Var, w13Var);
        this.g = new vf2();
        this.j = new hg(new v(14, this));
        this.k = true;
        this.m = new l12(this);
        this.n = new op();
        this.o = new dh(2);
        this.p = new zx(1);
        this.q = new n02(new i12(this, i));
        this.r = new dd1(4, this);
        this.s = new k02();
        t64 t64Var = t64.a;
        this.t = new ws2(t64Var, w13Var);
        Boolean bool = Boolean.FALSE;
        this.f216u = ca.A(bool);
        this.v = ca.A(bool);
        this.w = new ws2(t64Var, w13Var);
        xh1 xh1Var = new xh1();
        e34 e34Var = k30.m;
        Float fValueOf = Float.valueOf(0.0f);
        xh1Var.o = new we(e34Var, fValueOf, (bf) e34Var.a.k(fValueOf), Long.MIN_VALUE, Long.MIN_VALUE, false);
        this.x = xh1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, t64] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(int r6, defpackage.fh0 r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof defpackage.j12
            if (r0 == 0) goto L13
            r0 = r7
            j12 r0 = (defpackage.j12) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            j12 r0 = new j12
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L2f
            if (r1 != r4) goto L29
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L27
            goto L46
        L27:
            r6 = move-exception
            goto L4b
        L29:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            return r2
        L2f:
            defpackage.gg4.T(r7)
            r5.i = r4     // Catch: java.lang.Throwable -> L27
            k12 r7 = new k12     // Catch: java.lang.Throwable -> L27
            r7.<init>(r5, r6, r2)     // Catch: java.lang.Throwable -> L27
            r0.s = r4     // Catch: java.lang.Throwable -> L27
            xg2 r6 = defpackage.xg2.n     // Catch: java.lang.Throwable -> L27
            java.lang.Object r6 = r5.f(r6, r7, r0)     // Catch: java.lang.Throwable -> L27
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L46
            return r7
        L46:
            r5.i = r3
            t64 r5 = defpackage.t64.a
            return r5
        L4b:
            r5.i = r3
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n12.a(int, fh0):java.lang.Object");
    }

    public final void b(f12 f12Var, boolean z, boolean z2) {
        String str;
        long j;
        po3 po3VarX;
        pe1 pe1VarE;
        po3 po3VarE;
        e34 e34Var = k30.m;
        List list = f12Var.k;
        int i = f12Var.n;
        int i2 = f12Var.b;
        g12 g12Var = f12Var.a;
        this.q.e = list.size();
        xh1 xh1Var = this.x;
        ic icVar = this.e;
        dh0 dh0Var = null;
        if (!z && this.b) {
            this.c = f12Var;
            po3VarX = k75.x();
            pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3VarE = k75.E(po3VarX);
            try {
                if (((Number) ((we) xh1Var.o).o.getValue()).floatValue() != 0.0f && g12Var != null && g12Var.a == ((ts2) icVar.b).g() && i2 == ((ts2) icVar.c).g()) {
                    ir3 ir3Var = (ir3) xh1Var.n;
                    if (ir3Var != null) {
                        ir3Var.j(null);
                    }
                    xh1Var.o = new we(e34Var, Float.valueOf(0.0f), null, 60);
                }
                return;
            } finally {
                k75.L(po3VarX, po3VarE, pe1VarE);
            }
        }
        if (z) {
            this.b = true;
        }
        this.v.setValue(Boolean.valueOf(((g12Var != null ? g12Var.a : 0) == 0 && i2 == 0) ? false : true));
        this.f216u.setValue(Boolean.valueOf(f12Var.c));
        this.h -= f12Var.d;
        this.f.setValue(f12Var);
        if (z2) {
            icVar.getClass();
            if (i2 < 0.0f) {
                dr1.c("scrollOffset should be non-negative");
            }
            ((ts2) icVar.c).h(i2);
        } else {
            g12 g12Var2 = (g12) o70.i0(list);
            g12 g12Var3 = (g12) o70.p0(list);
            if (g12Var2 != null) {
                str = "scrollOffset should be non-negative";
                j = g12Var2.a;
            } else {
                str = "scrollOffset should be non-negative";
                j = -1;
            }
            kt4.h0(j, "firstVisibleItem:index");
            kt4.h0(g12Var3 != null ? g12Var3.a : -1L, "lastVisibleItem:index");
            icVar.getClass();
            icVar.d = g12Var != null ? g12Var.i : null;
            if (icVar.a || i > 0) {
                icVar.a = true;
                if (i2 < 0.0f) {
                    dr1.c(str);
                }
                icVar.f(g12Var != null ? g12Var.a : 0, i2);
            }
            if (this.k) {
                np0 np0Var = this.a;
                int i3 = np0Var.a;
                boolean z3 = np0Var.c;
                if (i3 != -1 && !list.isEmpty() && i3 != np0.a(f12Var, z3)) {
                    np0Var.a = -1;
                    m02 m02Var = np0Var.b;
                    if (m02Var != null) {
                        m02Var.cancel();
                    }
                    np0Var.b = null;
                }
                int i4 = np0Var.d;
                if (i4 != -1 && np0Var.e != 0.0f && i4 != i && !list.isEmpty()) {
                    int iA = np0.a(f12Var, np0Var.e < 0.0f);
                    if (iA >= 0 && iA < i) {
                        np0Var.a = iA;
                        np0Var.b = dd1.u(this.r, iA);
                    }
                }
                np0Var.d = i;
            }
        }
        if (z) {
            float f = f12Var.f;
            as0 as0Var = f12Var.i;
            qi0 qi0Var = f12Var.h;
            xh1Var.getClass();
            if (f <= as0Var.v(1.0f)) {
                return;
            }
            po3VarX = k75.x();
            pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3VarE = k75.E(po3VarX);
            try {
                float fFloatValue = ((Number) ((we) xh1Var.o).o.getValue()).floatValue();
                ir3 ir3Var2 = (ir3) xh1Var.n;
                if (ir3Var2 != null) {
                    ir3Var2.j(null);
                }
                we weVar = (we) xh1Var.o;
                if (weVar.s) {
                    xh1Var.o = k30.m(weVar, fFloatValue - f);
                } else {
                    xh1Var.o = new we(e34Var, Float.valueOf(-f), null, 60);
                }
                xh1Var.n = ca.y(qi0Var, null, null, new x50(xh1Var, dh0Var, 8), 3);
            } finally {
            }
        }
    }

    @Override // defpackage.xf3
    public final boolean c() {
        return ((Boolean) this.v.getValue()).booleanValue();
    }

    public final int d() {
        return ((ts2) this.e.b).g();
    }

    @Override // defpackage.xf3
    public final boolean e() {
        return this.j.e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0084, code lost:
    
        if (r2 == r7) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.xf3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(defpackage.xg2 r15, defpackage.df1 r16, defpackage.fh0 r17) throws java.lang.Throwable {
        /*
            r14 = this;
            r0 = r17
            boolean r1 = r0 instanceof defpackage.m12
            if (r1 == 0) goto L15
            r1 = r0
            m12 r1 = (defpackage.m12) r1
            int r2 = r1.f195u
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f195u = r2
            goto L1a
        L15:
            m12 r1 = new m12
            r1.<init>(r14, r0)
        L1a:
            java.lang.Object r0 = r1.s
            int r2 = r1.f195u
            t64 r3 = defpackage.t64.a
            r4 = 2
            r5 = 0
            r6 = 1
            ri0 r7 = defpackage.ri0.n
            if (r2 == 0) goto L40
            if (r2 == r6) goto L35
            if (r2 != r4) goto L2f
            defpackage.gg4.T(r0)
            return r3
        L2f:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r14)
            return r5
        L35:
            bv3 r2 = r1.r
            df1 r2 = (defpackage.df1) r2
            xg2 r6 = r1.q
            defpackage.gg4.T(r0)
            r0 = r6
            goto L8a
        L40:
            defpackage.gg4.T(r0)
            ws2 r0 = r14.f
            java.lang.Object r0 = r0.getValue()
            f12 r2 = defpackage.p12.a
            if (r0 != r2) goto L87
            r1.q = r15
            r2 = r16
            bv3 r2 = (defpackage.bv3) r2
            r1.r = r2
            r1.f195u = r6
            op r2 = r14.n
            z80 r6 = r2.c
            if (r6 != 0) goto L7c
            z80 r6 = defpackage.ix.d()
            r2.c = r6
            np r8 = r2.b
            if (r8 == 0) goto L7c
            boolean r2 = r8.A
            if (r2 == 0) goto L7c
            op r2 = r8.C
            m r13 = new m
            r13.<init>(r4, r8, r2)
            r9 = 0
            r11 = 0
            vy3 r2 = defpackage.qj0.T(r8, r9, r11, r13)
            r8.B = r2
        L7c:
            java.lang.Object r2 = r6.s(r1)
            if (r2 != r7) goto L83
            goto L84
        L83:
            r2 = r3
        L84:
            if (r2 != r7) goto L87
            goto L98
        L87:
            r0 = r15
            r2 = r16
        L8a:
            r1.q = r5
            r1.r = r5
            r1.f195u = r4
            hg r14 = r14.j
            java.lang.Object r14 = r14.f(r0, r2, r1)
            if (r14 != r7) goto L99
        L98:
            return r7
        L99:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n12.f(xg2, df1, fh0):java.lang.Object");
    }

    public final int g() {
        return ((ts2) this.e.c).g();
    }

    public final f12 h() {
        return (f12) this.f.getValue();
    }

    @Override // defpackage.xf3
    public final boolean i() {
        return ((Boolean) this.f216u.getValue()).booleanValue();
    }

    @Override // defpackage.xf3
    public final float j(float f) {
        return this.j.j(f);
    }

    public final void k(float f, f12 f12Var) {
        m02 m02Var;
        m02 m02Var2;
        if (this.k) {
            boolean zIsEmpty = f12Var.k.isEmpty();
            np0 np0Var = this.a;
            if (!zIsEmpty) {
                boolean z = f < 0.0f;
                int iA = np0.a(f12Var, z);
                if (iA >= 0 && iA < f12Var.n) {
                    if (iA != np0Var.a) {
                        if (np0Var.c != z) {
                            np0Var.a = -1;
                            m02 m02Var3 = np0Var.b;
                            if (m02Var3 != null) {
                                m02Var3.cancel();
                            }
                            np0Var.b = null;
                        }
                        np0Var.c = z;
                        np0Var.a = iA;
                        np0Var.b = dd1.u(this.r, iA);
                    }
                    List list = f12Var.k;
                    if (z) {
                        g12 g12Var = (g12) o70.o0(list);
                        if (((g12Var.l + g12Var.m) + f12Var.q) - f12Var.m < (-f) && (m02Var2 = np0Var.b) != null) {
                            m02Var2.a();
                        }
                    } else if (f12Var.l - ((g12) o70.h0(list)).l < f && (m02Var = np0Var.b) != null) {
                        m02Var.a();
                    }
                }
            }
            np0Var.e = f;
        }
    }

    public final void l(int i) {
        ic icVar = this.e;
        if (((ts2) icVar.b).g() != i || ((ts2) icVar.c).g() != 0) {
            dh dhVar = this.o;
            dhVar.i();
            dhVar.b = null;
        }
        icVar.f(i, 0);
        icVar.d = null;
        xy1 xy1Var = this.l;
        if (xy1Var != null) {
            xy1Var.k();
        }
    }
}
