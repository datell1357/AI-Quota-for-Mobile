package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n33 {
    public final hs1 a;
    public final q9 b;
    public final hb c;
    public final wy3 d;
    public final dg2 e;
    public boolean f;
    public boolean g;
    public boolean h;
    public d9 i;
    public long j;
    public final je k;
    public final jg2 l;

    public n33(tf2 tf2Var, q9 q9Var) {
        this.a = tf2Var;
        this.b = q9Var;
        hb hbVar = new hb(6, (byte) 0);
        hbVar.c = new long[192];
        hbVar.d = new long[192];
        this.c = hbVar;
        this.d = new wy3();
        this.e = new dg2();
        this.j = -1L;
        this.k = new je(11, this);
        this.l = new jg2();
    }

    public static boolean c(mm2 mm2Var) {
        rr2 rr2Var = mm2Var.c0;
        return (rr2Var == null || gg4.J(((ci1) rr2Var).b())) ? false : true;
    }

    public static boolean d(xy1 xy1Var) {
        return xy1Var.t != -4;
    }

    public static long g(xy1 xy1Var) {
        bo boVar = xy1Var.S;
        mm2 mm2Var = (mm2) boVar.e;
        long jC = 0;
        for (mm2 mm2Var2 = (gr1) boVar.d; mm2Var2 != null && mm2Var2 != mm2Var; mm2Var2 = mm2Var2.H) {
            if (c(mm2Var2)) {
                return 9223372034707292159L;
            }
            jC = js1.c(jC, mm2Var2.Q);
        }
        return jC;
    }

    public static void j(xy1 xy1Var) {
        if (!xy1Var.p || c((mm2) xy1Var.S.e)) {
            return;
        }
        xy1Var.p = false;
        if (xy1Var.r) {
            xy1Var.q = g(xy1Var);
            xy1Var.r = false;
        }
        if (js1.a(xy1Var.q, 9223372034707292159L)) {
            return;
        }
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            j((xy1) objArr[i2]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0206  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instruction units count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n33.a():void");
    }

    public final long b(xy1 xy1Var) {
        if (!d(xy1Var)) {
            return 9223372034707292159L;
        }
        long j = ((long[]) this.c.c)[e(xy1Var)];
        return (((long) ((int) (j >> 32))) << 32) | (((long) ((int) j)) & 4294967295L);
    }

    public final int e(xy1 xy1Var) {
        int i = xy1Var.t;
        if (i == -4) {
            i = -4;
        } else {
            int i2 = xy1Var.o;
            hb hbVar = this.c;
            long[] jArr = (long[]) hbVar.c;
            if (i < 0 || i >= hbVar.b - 2 || (((int) jArr[i + 2]) & 33554431) != (i2 & 33554431)) {
                int i3 = i2 & 33554431;
                int i4 = hbVar.b;
                for (int i5 = 0; i5 < i4 - 2; i5 += 3) {
                    if ((((int) jArr[i5 + 2]) & 33554431) == i3) {
                        i = i5;
                        break;
                    }
                }
                i = -4;
            }
        }
        if (i == -4) {
            ar1.a("LayoutNode " + xy1Var.o + " not found in RectList");
        }
        xy1Var.t = i;
        return i;
    }

    public final void f(xy1 xy1Var) {
        xy1Var.p = true;
        bo boVar = xy1Var.S;
        mm2 mm2Var = (mm2) boVar.e;
        cb2 cb2Var = xy1Var.T.p;
        int iA0 = cb2Var.a0();
        float fY = cb2Var.Y();
        jg2 jg2Var = this.l;
        jg2Var.a = 0.0f;
        jg2Var.b = 0.0f;
        jg2Var.c = iA0;
        jg2Var.d = fY;
        while (true) {
            if (mm2Var == null) {
                break;
            }
            xy1 xy1Var2 = mm2Var.F;
            if (mm2Var == ((mm2) xy1Var2.S.e) && !xy1Var2.p) {
                if (!js1.a(b(xy1Var2), 9223372034707292159L)) {
                    jg2Var.c((((long) Float.floatToRawIntBits((int) (r9 >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (r9 & 4294967295L))) & 4294967295L));
                    break;
                }
            }
            rr2 rr2Var = mm2Var.c0;
            if (rr2Var != null) {
                float[] fArrB = ((ci1) rr2Var).b();
                if (!gg4.J(fArrB)) {
                    xa2.c(fArrB, jg2Var);
                }
            }
            long j = mm2Var.Q;
            jg2Var.c((4294967295L & ((long) Float.floatToRawIntBits((int) (j & 4294967295L)))) | (((long) Float.floatToRawIntBits((int) (j >> 32))) << 32));
            mm2Var = mm2Var.H;
        }
        int i = (int) jg2Var.a;
        int i2 = (int) jg2Var.b;
        int i3 = (int) jg2Var.c;
        int i4 = (int) jg2Var.d;
        int i5 = xy1Var.o;
        int i6 = xy1Var.t;
        hb hbVar = this.c;
        if (i6 != -4) {
            int iE = e(xy1Var);
            long[] jArr = (long[]) hbVar.c;
            jArr[iE] = (((long) i) << 32) | (((long) i2) & 4294967295L);
            jArr[iE + 1] = (4294967295L & ((long) i4)) | (((long) i3) << 32);
            int i7 = iE + 2;
            long j2 = jArr[i7];
            jArr[i7] = j2 | (((j2 >> 63) & 1) << 60);
        } else {
            xy1 xy1VarU = xy1Var.u();
            xy1Var.t = hbVar.f(i5, i, i2, i3, i4, xy1VarU != null ? xy1VarU.o : -1, xy1VarU != null ? e(xy1VarU) : -4, boVar.f(1024), boVar.f(16), this.d.a.a(i5));
        }
        xy1Var.s = false;
        this.f = true;
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i8 = ug2VarZ.p;
        for (int i9 = 0; i9 < i8; i9++) {
            xy1 xy1Var3 = (xy1) objArr[i9];
            if (xy1Var3.I()) {
                f(xy1Var3);
            }
        }
    }

    public final void h(xy1 xy1Var) {
        long j;
        boolean zI = xy1Var.I();
        bo boVar = xy1Var.S;
        if (zI && xy1Var.s) {
            xy1 xy1VarU = xy1Var.u();
            if (xy1VarU == null || xy1VarU.p) {
                j = xy1VarU == null ? 0L : 9223372034707292159L;
            } else {
                if (xy1VarU.r) {
                    xy1VarU.r = false;
                    xy1VarU.q = g(xy1VarU);
                }
                j = xy1VarU.q;
            }
            mm2 mm2Var = (mm2) boVar.e;
            if (js1.a(j, 9223372034707292159L) || c(mm2Var)) {
                f(xy1Var);
            } else if (xy1Var.p) {
                f(xy1Var);
                j(xy1Var);
            } else {
                long jC = js1.c(j, mm2Var.Q);
                cb2 cb2Var = xy1Var.T.p;
                int iA0 = cb2Var.a0();
                int iY = cb2Var.Y();
                int i = xy1Var.t;
                hb hbVar = this.c;
                if (i != -4) {
                    int iE = e(xy1Var);
                    if (xy1VarU != null) {
                        int iE2 = e(xy1VarU);
                        int i2 = (int) (jC >> 32);
                        int i3 = (int) (jC & 4294967295L);
                        long[] jArr = (long[]) hbVar.c;
                        long j2 = jArr[iE2];
                        int i4 = ((int) (j2 >> 32)) + i2;
                        int i5 = ((int) j2) + i3;
                        int i6 = iY + i5;
                        long j3 = jArr[iE];
                        int i7 = i4 - ((int) (j3 >> 32));
                        int i8 = i5 - ((int) j3);
                        int i9 = iE + 2;
                        long j4 = jArr[i9];
                        jArr[iE] = (((long) i5) & 4294967295L) | (((long) i4) << 32);
                        jArr[iE + 1] = (((long) (iA0 + i4)) << 32) | (((long) i6) & 4294967295L);
                        jArr[i9] = (((j4 >> 63) & 1) << 60) | j4;
                        if (i7 != 0 || i8 != 0) {
                            hbVar.j(j4, iE, i7, i8);
                        }
                    } else {
                        int iE3 = e(xy1Var);
                        int i10 = (int) (jC >> 32);
                        int i11 = (int) (jC & 4294967295L);
                        long[] jArr2 = (long[]) hbVar.c;
                        long j5 = jArr2[iE3];
                        jArr2[iE3] = (((long) i10) << 32) | (((long) i11) & 4294967295L);
                        jArr2[iE3 + 1] = (((long) (iY + i11)) & 4294967295L) | (((long) (iA0 + i10)) << 32);
                        int i12 = iE3 + 2;
                        long j6 = jArr2[i12];
                        jArr2[i12] = (((j6 >> 63) & 1) << 60) | j6;
                        int i13 = i10 - ((int) (j5 >> 32));
                        int i14 = i11 - ((int) j5);
                        if (i13 != 0 || i14 != 0) {
                            hbVar.j(j6, iE3, i13, i14);
                        }
                    }
                } else {
                    int i15 = xy1Var.o;
                    boolean zF = boVar.f(1024);
                    boolean zF2 = boVar.f(16);
                    boolean zA = this.d.a.a(i15);
                    if (xy1VarU != null) {
                        int i16 = xy1VarU.o;
                        int iE4 = e(xy1VarU);
                        int i17 = (int) (jC >> 32);
                        int i18 = (int) (jC & 4294967295L);
                        int i19 = i15 & 33554431;
                        long[] jArr3 = (long[]) hbVar.c;
                        if ((((int) jArr3[iE4 + 2]) & 33554431) != (33554431 & i16)) {
                            ar1.a("Inserted child " + i19 + " without valid parent index or parent " + i16 + " not found");
                        }
                        long j7 = jArr3[iE4];
                        int i20 = ((int) (j7 >> 32)) + i17;
                        int i21 = ((int) j7) + i18;
                        xy1Var.t = hbVar.f(i19, i20, i21, i20 + iA0, i21 + iY, i16, iE4, zF, zF2, zA);
                    } else {
                        int i22 = (int) (jC >> 32);
                        int i23 = (int) (jC & 4294967295L);
                        xy1Var.t = hbVar.f(i15, i22, i23, i22 + iA0, i23 + iY, -1, -4, zF, zF2, zA);
                    }
                }
            }
            xy1Var.s = false;
            this.f = true;
            k();
        }
    }

    public final void i(xy1 xy1Var) {
        if (d(xy1Var)) {
            int iE = e(xy1Var);
            long[] jArr = (long[]) this.c.c;
            jArr[iE] = -1;
            jArr[iE + 1] = -1;
            jArr[iE + 2] = m33.a;
            xy1Var.t = -4;
            xy1Var.s = true;
            this.f = true;
            this.h = true;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void k() {
        d9 d9Var = this.i;
        boolean z = d9Var != null;
        long j = this.d.c;
        if (j >= 0 || !z) {
            if (this.j == j && z) {
                return;
            }
            q9 q9Var = this.b;
            if (d9Var != null) {
                q9Var.removeCallbacks(d9Var);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jMax = Math.max(j, 16 + jCurrentTimeMillis);
            this.j = jMax;
            d9 d9Var2 = new d9(0, this.k);
            q9Var.postDelayed(d9Var2, jMax - jCurrentTimeMillis);
            this.i = d9Var2;
        }
    }
}
