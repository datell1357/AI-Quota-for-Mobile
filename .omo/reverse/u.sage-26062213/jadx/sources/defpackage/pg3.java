package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pg3 extends ib0 {
    public static final xe s = new xe(0.0f);
    public static final xe t = new xe(1.0f);
    public final ws2 b;
    public final ws2 c;
    public Object d;
    public n14 e;
    public long f;
    public final vc3 g;
    public ip3 h;
    public final ss2 i;
    public o20 j;
    public final hh2 k;
    public final eh2 l;
    public long m;
    public final dg2 n;
    public ig3 o;
    public final hg3 p;
    public float q;
    public final hg3 r;

    /* JADX WARN: Type inference failed for: r3v6, types: [hg3] */
    /* JADX WARN: Type inference failed for: r3v7, types: [hg3] */
    public pg3(yh2 yh2Var) {
        super(2);
        this.b = ca.A(yh2Var);
        this.c = ca.A(yh2Var);
        this.d = yh2Var;
        this.g = new vc3(2, this);
        this.i = new ss2(0.0f);
        this.k = new hh2();
        this.l = new eh2();
        this.m = Long.MIN_VALUE;
        this.n = new dg2();
        final int i = 0;
        this.p = new pe1(this) { // from class: hg3
            public final /* synthetic */ pg3 o;

            {
                this.o = this;
            }

            @Override // defpackage.pe1
            public final Object k(Object obj) {
                int i2 = i;
                t64 t64Var = t64.a;
                pg3 pg3Var = this.o;
                long jLongValue = ((Long) obj).longValue();
                switch (i2) {
                    case 0:
                        pg3Var.m = jLongValue;
                        break;
                    default:
                        long j = jLongValue - pg3Var.m;
                        pg3Var.m = jLongValue;
                        long jW = is0.W(j / ((double) pg3Var.q));
                        dg2 dg2Var = pg3Var.n;
                        if (dg2Var.i()) {
                            Object[] objArr = dg2Var.a;
                            int i3 = dg2Var.b;
                            int i4 = 0;
                            for (int i5 = 0; i5 < i3; i5++) {
                                ig3 ig3Var = (ig3) objArr[i5];
                                pg3.C(ig3Var, jW);
                                ig3Var.c = true;
                            }
                            n14 n14Var = pg3Var.e;
                            if (n14Var != null) {
                                n14Var.o();
                            }
                            int i6 = dg2Var.b;
                            Object[] objArr2 = dg2Var.a;
                            ms1 ms1VarA0 = ix.a0(0, i6);
                            int i7 = ms1VarA0.n;
                            int i8 = ms1VarA0.o;
                            if (i7 <= i8) {
                                while (true) {
                                    objArr2[i7 - i4] = objArr2[i7];
                                    if (((ig3) objArr2[i7]).c) {
                                        i4++;
                                    }
                                    if (i7 != i8) {
                                        i7++;
                                    }
                                }
                            }
                            ji.U(i6 - i4, i6, null, objArr2);
                            dg2Var.b -= i4;
                        }
                        ig3 ig3Var2 = pg3Var.o;
                        if (ig3Var2 != null) {
                            ig3Var2.g = pg3Var.f;
                            pg3.C(ig3Var2, jW);
                            pg3Var.F(ig3Var2.d);
                            if (ig3Var2.d == 1.0f) {
                                pg3Var.o = null;
                            }
                            pg3Var.E();
                        }
                        break;
                }
                return t64Var;
            }
        };
        final int i2 = 1;
        this.r = new pe1(this) { // from class: hg3
            public final /* synthetic */ pg3 o;

            {
                this.o = this;
            }

            @Override // defpackage.pe1
            public final Object k(Object obj) {
                int i22 = i2;
                t64 t64Var = t64.a;
                pg3 pg3Var = this.o;
                long jLongValue = ((Long) obj).longValue();
                switch (i22) {
                    case 0:
                        pg3Var.m = jLongValue;
                        break;
                    default:
                        long j = jLongValue - pg3Var.m;
                        pg3Var.m = jLongValue;
                        long jW = is0.W(j / ((double) pg3Var.q));
                        dg2 dg2Var = pg3Var.n;
                        if (dg2Var.i()) {
                            Object[] objArr = dg2Var.a;
                            int i3 = dg2Var.b;
                            int i4 = 0;
                            for (int i5 = 0; i5 < i3; i5++) {
                                ig3 ig3Var = (ig3) objArr[i5];
                                pg3.C(ig3Var, jW);
                                ig3Var.c = true;
                            }
                            n14 n14Var = pg3Var.e;
                            if (n14Var != null) {
                                n14Var.o();
                            }
                            int i6 = dg2Var.b;
                            Object[] objArr2 = dg2Var.a;
                            ms1 ms1VarA0 = ix.a0(0, i6);
                            int i7 = ms1VarA0.n;
                            int i8 = ms1VarA0.o;
                            if (i7 <= i8) {
                                while (true) {
                                    objArr2[i7 - i4] = objArr2[i7];
                                    if (((ig3) objArr2[i7]).c) {
                                        i4++;
                                    }
                                    if (i7 != i8) {
                                        i7++;
                                    }
                                }
                            }
                            ji.U(i6 - i4, i6, null, objArr2);
                            dg2Var.b -= i4;
                        }
                        ig3 ig3Var2 = pg3Var.o;
                        if (ig3Var2 != null) {
                            ig3Var2.g = pg3Var.f;
                            pg3.C(ig3Var2, jW);
                            pg3Var.F(ig3Var2.d);
                            if (ig3Var2.d == 1.0f) {
                                pg3Var.o = null;
                            }
                            pg3Var.E();
                        }
                        break;
                }
                return t64Var;
            }
        };
    }

    public static void C(ig3 ig3Var, long j) {
        long j2 = ig3Var.a + j;
        ig3Var.a = j2;
        long j3 = ig3Var.h;
        if (j2 >= j3) {
            ig3Var.d = 1.0f;
            return;
        }
        la4 la4Var = ig3Var.b;
        xe xeVar = ig3Var.e;
        if (la4Var == null) {
            float f = j2 / j3;
            ig3Var.d = (f * 1.0f) + ((1.0f - f) * xeVar.a(0));
            return;
        }
        xe xeVar2 = ig3Var.f;
        if (xeVar2 == null) {
            xeVar2 = s;
        }
        ig3Var.d = ix.j(((xe) la4Var.p(j2, xeVar, t, xeVar2)).a(0), 0.0f, 1.0f);
    }

    public static final void w(pg3 pg3Var) {
        ss2 ss2Var = pg3Var.i;
        n14 n14Var = pg3Var.e;
        if (n14Var == null) {
            return;
        }
        ig3 ig3Var = pg3Var.o;
        if (ig3Var == null) {
            if (pg3Var.f <= 0 || ss2Var.g() == 1.0f || nt1.g(pg3Var.c.getValue(), pg3Var.b.getValue())) {
                ig3Var = null;
            } else {
                ig3Var = new ig3();
                ig3Var.d = ss2Var.g();
                long j = pg3Var.f;
                ig3Var.g = j;
                ig3Var.h = is0.W((1.0d - ((double) ss2Var.g())) * j);
                ig3Var.e.e(0, ss2Var.g());
            }
        }
        if (ig3Var != null) {
            ig3Var.g = pg3Var.f;
            pg3Var.n.a(ig3Var);
            n14Var.m(ig3Var);
        }
        pg3Var.o = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object x(defpackage.pg3 r10, defpackage.fh0 r11) {
        /*
            dg2 r0 = r10.n
            boolean r1 = r11 instanceof defpackage.kg3
            if (r1 == 0) goto L15
            r1 = r11
            kg3 r1 = (defpackage.kg3) r1
            int r2 = r1.s
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.s = r2
            goto L1a
        L15:
            kg3 r1 = new kg3
            r1.<init>(r10, r11)
        L1a:
            hi0 r11 = r1.o
            java.lang.Object r2 = r1.q
            int r3 = r1.s
            r4 = 2
            r5 = 1
            r6 = -9223372036854775808
            t64 r8 = defpackage.t64.a
            ri0 r9 = defpackage.ri0.n
            if (r3 == 0) goto L3a
            if (r3 == r5) goto L36
            if (r3 != r4) goto L2f
            goto L36
        L2f:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r10)
            r10 = 0
            return r10
        L36:
            defpackage.gg4.T(r2)
            goto L72
        L3a:
            defpackage.gg4.T(r2)
            boolean r2 = r0.h()
            if (r2 == 0) goto L48
            ig3 r2 = r10.o
            if (r2 != 0) goto L48
            return r8
        L48:
            r11.getClass()
            float r2 = defpackage.k75.y(r11)
            r3 = 0
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 != 0) goto L5a
            r10.B()
            r10.m = r6
            return r8
        L5a:
            long r2 = r10.m
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 != 0) goto L72
            hg3 r2 = r10.p
            r1.s = r5
            r11.getClass()
            qc r11 = defpackage.c75.E(r11)
            java.lang.Object r11 = r11.a(r2, r1)
            if (r11 != r9) goto L72
            goto L88
        L72:
            boolean r11 = r0.i()
            if (r11 != 0) goto L80
            ig3 r11 = r10.o
            if (r11 == 0) goto L7d
            goto L80
        L7d:
            r10.m = r6
            return r8
        L80:
            r1.s = r4
            java.lang.Object r11 = r10.A(r1)
            if (r11 != r9) goto L72
        L88:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pg3.x(pg3, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object y(defpackage.pg3 r8, defpackage.fh0 r9) {
        /*
            hh2 r0 = r8.k
            boolean r1 = r9 instanceof defpackage.ng3
            if (r1 == 0) goto L15
            r1 = r9
            ng3 r1 = (defpackage.ng3) r1
            int r2 = r1.t
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.t = r2
            goto L1a
        L15:
            ng3 r1 = new ng3
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.r
            int r2 = r1.t
            r3 = 0
            r4 = 2
            r5 = 1
            ri0 r6 = defpackage.ri0.n
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r0 = r1.q
            defpackage.gg4.T(r9)
            goto L6f
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            return r3
        L35:
            java.lang.Object r2 = r1.q
            defpackage.gg4.T(r9)
            r9 = r2
            goto L50
        L3c:
            defpackage.gg4.T(r9)
            ws2 r9 = r8.b
            java.lang.Object r9 = r9.getValue()
            r1.q = r9
            r1.t = r5
            java.lang.Object r2 = r0.j(r1)
            if (r2 != r6) goto L50
            goto L6b
        L50:
            r1.q = r9
            r1.t = r4
            o20 r2 = new o20
            dh0 r1 = defpackage.dm0.A(r1)
            r2.<init>(r5, r1)
            r2.x()
            r8.j = r2
            r0.b(r3)
            java.lang.Object r0 = r2.v()
            if (r0 != r6) goto L6c
        L6b:
            return r6
        L6c:
            r7 = r0
            r0 = r9
            r9 = r7
        L6f:
            boolean r9 = defpackage.nt1.g(r9, r0)
            if (r9 == 0) goto L78
            t64 r8 = defpackage.t64.a
            return r8
        L78:
            r0 = -9223372036854775808
            r8.m = r0
            java.util.concurrent.CancellationException r8 = new java.util.concurrent.CancellationException
            java.lang.String r9 = "targetState while waiting for composition"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pg3.y(pg3, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object z(defpackage.pg3 r8, defpackage.fh0 r9) {
        /*
            hh2 r0 = r8.k
            boolean r1 = r9 instanceof defpackage.og3
            if (r1 == 0) goto L15
            r1 = r9
            og3 r1 = (defpackage.og3) r1
            int r2 = r1.t
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.t = r2
            goto L1a
        L15:
            og3 r1 = new og3
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.r
            int r2 = r1.t
            r3 = 0
            r4 = 2
            r5 = 1
            ri0 r6 = defpackage.ri0.n
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r0 = r1.q
            defpackage.gg4.T(r9)
            goto L7b
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            return r3
        L35:
            java.lang.Object r2 = r1.q
            defpackage.gg4.T(r9)
            r9 = r2
            goto L50
        L3c:
            defpackage.gg4.T(r9)
            ws2 r9 = r8.b
            java.lang.Object r9 = r9.getValue()
            r1.q = r9
            r1.t = r5
            java.lang.Object r2 = r0.j(r1)
            if (r2 != r6) goto L50
            goto L77
        L50:
            java.lang.Object r2 = r8.d
            boolean r2 = defpackage.nt1.g(r9, r2)
            if (r2 == 0) goto L5c
            r0.b(r3)
            goto L81
        L5c:
            r1.q = r9
            r1.t = r4
            o20 r2 = new o20
            dh0 r1 = defpackage.dm0.A(r1)
            r2.<init>(r5, r1)
            r2.x()
            r8.j = r2
            r0.b(r3)
            java.lang.Object r0 = r2.v()
            if (r0 != r6) goto L78
        L77:
            return r6
        L78:
            r7 = r0
            r0 = r9
            r9 = r7
        L7b:
            boolean r1 = defpackage.nt1.g(r9, r0)
            if (r1 == 0) goto L84
        L81:
            t64 r8 = defpackage.t64.a
            return r8
        L84:
            r1 = -9223372036854775808
            r8.m = r1
            java.util.concurrent.CancellationException r8 = new java.util.concurrent.CancellationException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "snapTo() was canceled because state was changed to "
            r1.<init>(r2)
            r1.append(r9)
            java.lang.String r9 = " instead of "
            r1.append(r9)
            r1.append(r0)
            java.lang.String r9 = r1.toString()
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pg3.z(pg3, fh0):java.lang.Object");
    }

    public final Object A(fh0 fh0Var) {
        float fY = k75.y(fh0Var.e());
        t64 t64Var = t64.a;
        if (fY <= 0.0f) {
            B();
            return t64Var;
        }
        this.q = fY;
        Object objA = c75.E(fh0Var.e()).a(this.r, fh0Var);
        return objA == ri0.n ? objA : t64Var;
    }

    public final void B() {
        n14 n14Var = this.e;
        if (n14Var != null) {
            n14Var.c();
        }
        this.n.d();
        if (this.o != null) {
            this.o = null;
            F(1.0f);
            E();
        }
    }

    public final Object D(float f, Object obj, bv3 bv3Var) {
        if (0.0f > f || f > 1.0f) {
            kx2.a("Expecting fraction between 0 and 1. Got " + f);
        }
        n14 n14Var = this.e;
        if (n14Var != null) {
            Object objA = eh2.a(this.l, new mg3(obj, this.b.getValue(), this, n14Var, f, null), bv3Var);
            if (objA == ri0.n) {
                return objA;
            }
        }
        return t64.a;
    }

    public final void E() {
        n14 n14Var = this.e;
        if (n14Var == null) {
            return;
        }
        n14Var.l(is0.W(((double) this.i.g()) * ((Number) n14Var.m.getValue()).longValue()));
    }

    public final void F(float f) {
        this.i.h(f);
    }

    public final void G(ip3 ip3Var) {
        r6 r6Var;
        if (nt1.g(this.h, ip3Var)) {
            return;
        }
        ip3 ip3Var2 = this.h;
        if (ip3Var2 != null) {
            ip3Var2.a(this);
        }
        ip3 ip3Var3 = this.h;
        if (ip3Var3 != null && (r6Var = ip3Var3.h) != null) {
            r6Var.g();
        }
        this.h = ip3Var;
        if (ip3Var != null) {
            ip3Var.d();
        }
        ip3 ip3Var4 = this.h;
        if (ip3Var4 != null) {
            ip3Var4.c(this, ht4.o, this.g);
        }
    }

    @Override // defpackage.ib0
    public final Object l() {
        return this.c.getValue();
    }

    @Override // defpackage.ib0
    public final Object m() {
        return this.b.getValue();
    }

    @Override // defpackage.ib0
    public final void q(Object obj) {
        this.c.setValue(obj);
    }

    @Override // defpackage.ib0
    public final void r(n14 n14Var) {
        n14 n14Var2 = this.e;
        if (n14Var2 != null && !n14Var.equals(n14Var2)) {
            kx2.b("An instance of SeekableTransitionState has been used in different Transitions. Previous instance: " + this.e + ", new instance: " + n14Var);
        }
        this.e = n14Var;
    }

    @Override // defpackage.ib0
    public final void s() {
        this.e = null;
        ip3 ip3Var = this.h;
        if (ip3Var != null) {
            ip3Var.a(this);
        }
    }
}
