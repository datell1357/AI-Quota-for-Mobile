package defpackage;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wo3 {
    public static final jd3 a = new jd3(9);
    public static final ui3 b = new ui3(1);
    public static final Object c = new Object();
    public static uo3 d;
    public static long e;
    public static final se2 f;
    public static final hb g;
    public static List h;
    public static List i;
    public static final jh1 j;
    public static final lj k;

    static {
        uo3 uo3Var = uo3.r;
        d = uo3Var;
        e = 2L;
        se2 se2Var = new se2();
        se2Var.c = new long[16];
        se2Var.d = new int[16];
        int[] iArr = new int[16];
        byte b2 = 0;
        int i2 = 0;
        while (i2 < 16) {
            int i3 = i2 + 1;
            iArr[i2] = i3;
            i2 = i3;
        }
        se2Var.e = iArr;
        f = se2Var;
        hb hbVar = new hb(7, b2);
        hbVar.c = new int[16];
        hbVar.d = new rc4[16];
        g = hbVar;
        g01 g01Var = g01.n;
        h = g01Var;
        i = g01Var;
        long j2 = e;
        e = 1 + j2;
        jh1 jh1Var = new jh1(j2, uo3Var, null, new t3(24));
        d = d.g(jh1Var.b);
        j = jh1Var;
        k = new lj(0);
    }

    public static final void a() {
        e(a);
    }

    public static final HashMap b(long j2, og2 og2Var, uo3 uo3Var) {
        long[] jArr;
        uo3 uo3Var2;
        long[] jArr2;
        uo3 uo3Var3;
        int i2;
        int i3;
        ds3 ds3VarS;
        lg2 lg2VarX = og2Var.x();
        if (lg2VarX != null) {
            long jG = og2Var.g();
            uo3 uo3VarF = og2Var.d().g(jG).f(og2Var.j);
            Object[] objArr = lg2VarX.b;
            long[] jArr3 = lg2VarX.a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i4 = 0;
                HashMap map = null;
                while (true) {
                    long j3 = jArr3[i4];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i5 = 8;
                        int i6 = 8 - ((~(i4 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j3 & 255) < 128) {
                                bs3 bs3Var = (bs3) objArr[(i4 << 3) + i7];
                                ds3 ds3VarA = bs3Var.a();
                                jArr2 = jArr3;
                                i2 = i5;
                                i3 = i7;
                                ds3 ds3VarS2 = s(ds3VarA, j2, uo3Var);
                                if (ds3VarS2 == null || (ds3VarS = s(ds3VarA, jG, uo3VarF)) == null || ds3VarS2.equals(ds3VarS)) {
                                    uo3Var3 = uo3VarF;
                                } else {
                                    uo3Var3 = uo3VarF;
                                    ds3 ds3VarS3 = s(ds3VarA, jG, og2Var.d());
                                    if (ds3VarS3 == null) {
                                        r();
                                        throw null;
                                    }
                                    ds3 ds3VarD = bs3Var.d(ds3VarS, ds3VarS2, ds3VarS3);
                                    if (ds3VarD == null) {
                                        return null;
                                    }
                                    if (map == null) {
                                        map = new HashMap();
                                    }
                                    map.put(ds3VarS2, ds3VarD);
                                    map = map;
                                }
                            } else {
                                jArr2 = jArr3;
                                uo3Var3 = uo3VarF;
                                i2 = i5;
                                i3 = i7;
                            }
                            j3 >>= i2;
                            i7 = i3 + 1;
                            i5 = i2;
                            jArr3 = jArr2;
                            uo3VarF = uo3Var3;
                        }
                        jArr = jArr3;
                        uo3Var2 = uo3VarF;
                        if (i6 != i5) {
                            return map;
                        }
                    } else {
                        jArr = jArr3;
                        uo3Var2 = uo3VarF;
                    }
                    if (i4 == length) {
                        return map;
                    }
                    i4++;
                    jArr3 = jArr;
                    uo3VarF = uo3Var2;
                }
            }
        }
        return null;
    }

    public static final void c(po3 po3Var) {
        Long lValueOf;
        if (d.e(po3Var.g())) {
            return;
        }
        long jG = po3Var.g();
        boolean z = po3Var.c;
        og2 og2Var = po3Var instanceof og2 ? (og2) po3Var : null;
        String strValueOf = og2Var != null ? Boolean.valueOf(og2Var.m) : "read-only";
        synchronized (c) {
            se2 se2Var = f;
            lValueOf = Long.valueOf(se2Var.a > 0 ? ((long[]) se2Var.c)[0] : -1L);
        }
        throw new IllegalStateException(("Snapshot is not open: snapshotId=" + jG + ", disposed=" + z + ", applied=" + strValueOf + ", lowestPin=" + lValueOf).toString());
    }

    public static final uo3 d(uo3 uo3Var, long j2, long j3) {
        while (nt1.m(j2, j3) < 0) {
            uo3Var = uo3Var.g(j2);
            j2++;
        }
        return uo3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(defpackage.pe1 r15) {
        /*
            jh1 r0 = defpackage.wo3.j
            java.lang.Object r1 = defpackage.wo3.c
            monitor-enter(r1)
            lg2 r2 = r0.h     // Catch: java.lang.Throwable -> L10
            if (r2 == 0) goto L13
            lj r3 = defpackage.wo3.k     // Catch: java.lang.Throwable -> L10
            r4 = 1
            r3.addAndGet(r4)     // Catch: java.lang.Throwable -> L10
            goto L13
        L10:
            r15 = move-exception
            goto L97
        L13:
            java.lang.Object r15 = v(r0, r15)     // Catch: java.lang.Throwable -> L10
            monitor-exit(r1)
            r1 = 0
            if (r2 == 0) goto L44
            r3 = -1
            java.util.List r4 = defpackage.wo3.h     // Catch: java.lang.Throwable -> L36
            vd3 r5 = new vd3     // Catch: java.lang.Throwable -> L36
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L36
            int r6 = r4.size()     // Catch: java.lang.Throwable -> L36
            r7 = r1
        L28:
            if (r7 >= r6) goto L38
            java.lang.Object r8 = r4.get(r7)     // Catch: java.lang.Throwable -> L36
            df1 r8 = (defpackage.df1) r8     // Catch: java.lang.Throwable -> L36
            r8.f(r5, r0)     // Catch: java.lang.Throwable -> L36
            int r7 = r7 + 1
            goto L28
        L36:
            r15 = move-exception
            goto L3e
        L38:
            lj r0 = defpackage.wo3.k
            r0.addAndGet(r3)
            goto L44
        L3e:
            lj r0 = defpackage.wo3.k
            r0.addAndGet(r3)
            throw r15
        L44:
            java.lang.Object r0 = defpackage.wo3.c
            monitor-enter(r0)
            f()     // Catch: java.lang.Throwable -> L86
            if (r2 == 0) goto L93
            java.lang.Object[] r3 = r2.b     // Catch: java.lang.Throwable -> L86
            long[] r2 = r2.a     // Catch: java.lang.Throwable -> L86
            int r4 = r2.length     // Catch: java.lang.Throwable -> L86
            int r4 = r4 + (-2)
            if (r4 < 0) goto L93
            r5 = r1
        L56:
            r6 = r2[r5]     // Catch: java.lang.Throwable -> L86
            long r8 = ~r6     // Catch: java.lang.Throwable -> L86
            r10 = 7
            long r8 = r8 << r10
            long r8 = r8 & r6
            r10 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r8 = r8 & r10
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 == 0) goto L8e
            int r8 = r5 - r4
            int r8 = ~r8     // Catch: java.lang.Throwable -> L86
            int r8 = r8 >>> 31
            r9 = 8
            int r8 = 8 - r8
            r10 = r1
        L70:
            if (r10 >= r8) goto L8c
            r11 = 255(0xff, double:1.26E-321)
            long r11 = r11 & r6
            r13 = 128(0x80, double:6.32E-322)
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 >= 0) goto L88
            int r11 = r5 << 3
            int r11 = r11 + r10
            r11 = r3[r11]     // Catch: java.lang.Throwable -> L86
            bs3 r11 = (defpackage.bs3) r11     // Catch: java.lang.Throwable -> L86
            q(r11)     // Catch: java.lang.Throwable -> L86
            goto L88
        L86:
            r15 = move-exception
            goto L95
        L88:
            long r6 = r6 >> r9
            int r10 = r10 + 1
            goto L70
        L8c:
            if (r8 != r9) goto L93
        L8e:
            if (r5 == r4) goto L93
            int r5 = r5 + 1
            goto L56
        L93:
            monitor-exit(r0)
            return r15
        L95:
            monitor-exit(r0)
            throw r15
        L97:
            monitor-exit(r1)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wo3.e(pe1):java.lang.Object");
    }

    public static final void f() {
        hb hbVar = g;
        int i2 = hbVar.b;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            rc4 rc4Var = ((rc4[]) hbVar.d)[i3];
            Object obj = rc4Var != null ? rc4Var.get() : null;
            if (obj != null && p((bs3) obj)) {
                if (i4 != i3) {
                    ((rc4[]) hbVar.d)[i4] = rc4Var;
                    int[] iArr = (int[]) hbVar.c;
                    iArr[i4] = iArr[i3];
                }
                i4++;
            }
            i3++;
        }
        for (int i5 = i4; i5 < i2; i5++) {
            ((rc4[]) hbVar.d)[i5] = null;
            ((int[]) hbVar.c)[i5] = 0;
        }
        if (i4 != i2) {
            hbVar.b = i4;
        }
    }

    public static final po3 g(po3 po3Var, pe1 pe1Var, boolean z) {
        boolean z2 = po3Var instanceof og2;
        if (z2 || po3Var == null) {
            return new s14(z2 ? (og2) po3Var : null, pe1Var, null, false, z);
        }
        return new t14(po3Var, pe1Var, false, z);
    }

    public static final ds3 h(ds3 ds3Var) {
        ds3 ds3VarS;
        po3 po3VarJ = j();
        ds3 ds3VarS2 = s(ds3Var, po3VarJ.g(), po3VarJ.d());
        if (ds3VarS2 != null) {
            return ds3VarS2;
        }
        synchronized (c) {
            po3 po3VarJ2 = j();
            ds3VarS = s(ds3Var, po3VarJ2.g(), po3VarJ2.d());
        }
        if (ds3VarS != null) {
            return ds3VarS;
        }
        r();
        throw null;
    }

    public static final ds3 i(ds3 ds3Var, po3 po3Var) {
        ds3 ds3VarS;
        ds3 ds3VarS2 = s(ds3Var, po3Var.g(), po3Var.d());
        if (ds3VarS2 != null) {
            return ds3VarS2;
        }
        synchronized (c) {
            ds3VarS = s(ds3Var, po3Var.g(), po3Var.d());
        }
        if (ds3VarS != null) {
            return ds3VarS;
        }
        r();
        throw null;
    }

    public static final po3 j() {
        po3 po3Var = (po3) b.c();
        return po3Var == null ? j : po3Var;
    }

    public static final pe1 k(pe1 pe1Var, pe1 pe1Var2, boolean z) {
        if (!z) {
            pe1Var2 = null;
        }
        return (pe1Var == null || pe1Var2 == null || pe1Var == pe1Var2) ? pe1Var == null ? pe1Var2 : pe1Var : new vo3(pe1Var, pe1Var2, 0);
    }

    public static final pe1 l(pe1 pe1Var, pe1 pe1Var2) {
        return (pe1Var == null || pe1Var2 == null || pe1Var == pe1Var2) ? pe1Var == null ? pe1Var2 : pe1Var : new vo3(pe1Var, pe1Var2, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        r3 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.ds3 m(defpackage.ds3 r10, defpackage.bs3 r11) {
        /*
            ds3 r0 = r11.a()
            long r1 = defpackage.wo3.e
            se2 r3 = defpackage.wo3.f
            int r4 = r3.a
            if (r4 <= 0) goto L14
            java.lang.Object r1 = r3.c
            long[] r1 = (long[]) r1
            r2 = 0
            r2 = r1[r2]
            r1 = r2
        L14:
            r3 = 1
            long r1 = r1 - r3
            r3 = 0
            r4 = r3
        L19:
            if (r0 == 0) goto L4b
            long r5 = r0.a
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L24
            goto L44
        L24:
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 == 0) goto L48
            int r7 = defpackage.nt1.m(r5, r1)
            if (r7 > 0) goto L48
            uo3 r7 = defpackage.uo3.r
            boolean r5 = r7.e(r5)
            if (r5 != 0) goto L48
            if (r4 != 0) goto L3a
            r4 = r0
            goto L48
        L3a:
            long r1 = r0.a
            long r5 = r4.a
            int r1 = defpackage.nt1.m(r1, r5)
            if (r1 >= 0) goto L46
        L44:
            r3 = r0
            goto L4b
        L46:
            r3 = r4
            goto L4b
        L48:
            ds3 r0 = r0.b
            goto L19
        L4b:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            if (r3 == 0) goto L55
            r3.a = r0
            return r3
        L55:
            ds3 r10 = r10.b(r0)
            ds3 r0 = r11.a()
            r10.b = r0
            r11.e(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wo3.m(ds3, bs3):ds3");
    }

    public static final void n(po3 po3Var, bs3 bs3Var) {
        po3Var.t(po3Var.h() + 1);
        pe1 pe1VarI = po3Var.i();
        if (pe1VarI != null) {
            pe1VarI.k(bs3Var);
        }
    }

    public static final ds3 o(ds3 ds3Var, cs3 cs3Var, po3 po3Var, ds3 ds3Var2) {
        ds3 ds3VarM;
        if (po3Var.f()) {
            po3Var.n(cs3Var);
        }
        long jG = po3Var.g();
        if (ds3Var2.a == jG) {
            return ds3Var2;
        }
        synchronized (c) {
            ds3VarM = m(ds3Var, cs3Var);
        }
        ds3VarM.a = jG;
        if (ds3Var2.a != 1) {
            po3Var.n(cs3Var);
        }
        return ds3VarM;
    }

    public static final boolean p(bs3 bs3Var) {
        ds3 ds3Var;
        long j2 = e;
        se2 se2Var = f;
        if (se2Var.a > 0) {
            j2 = ((long[]) se2Var.c)[0];
        }
        ds3 ds3Var2 = null;
        ds3 ds3VarA = null;
        int i2 = 0;
        for (ds3 ds3VarA2 = bs3Var.a(); ds3VarA2 != null; ds3VarA2 = ds3VarA2.b) {
            long j3 = ds3VarA2.a;
            if (j3 != 0) {
                if (nt1.m(j3, j2) >= 0) {
                    i2++;
                } else if (ds3Var2 == null) {
                    i2++;
                    ds3Var2 = ds3VarA2;
                } else {
                    if (nt1.m(ds3VarA2.a, ds3Var2.a) < 0) {
                        ds3Var = ds3Var2;
                        ds3Var2 = ds3VarA2;
                    } else {
                        ds3Var = ds3VarA2;
                    }
                    if (ds3VarA == null) {
                        ds3VarA = bs3Var.a();
                        ds3 ds3Var3 = ds3VarA;
                        while (true) {
                            if (ds3VarA == null) {
                                ds3VarA = ds3Var3;
                                break;
                            }
                            if (nt1.m(ds3VarA.a, j2) >= 0) {
                                break;
                            }
                            if (nt1.m(ds3Var3.a, ds3VarA.a) < 0) {
                                ds3Var3 = ds3VarA;
                            }
                            ds3VarA = ds3VarA.b;
                        }
                    }
                    ds3Var2.a = 0L;
                    ds3Var2.a(ds3VarA);
                    ds3Var2 = ds3Var;
                }
            }
        }
        return i2 > 1;
    }

    public static final void q(bs3 bs3Var) {
        if (p(bs3Var)) {
            hb hbVar = g;
            int i2 = hbVar.b;
            int iIdentityHashCode = System.identityHashCode(bs3Var);
            int i3 = -1;
            if (i2 > 0) {
                int i4 = hbVar.b - 1;
                int i5 = 0;
                while (true) {
                    if (i5 > i4) {
                        i3 = -(i5 + 1);
                        break;
                    }
                    int i6 = (i5 + i4) >>> 1;
                    int i7 = ((int[]) hbVar.c)[i6];
                    if (i7 < iIdentityHashCode) {
                        i5 = i6 + 1;
                    } else if (i7 > iIdentityHashCode) {
                        i4 = i6 - 1;
                    } else {
                        rc4 rc4Var = ((rc4[]) hbVar.d)[i6];
                        if (bs3Var == (rc4Var != null ? rc4Var.get() : null)) {
                            i3 = i6;
                        } else {
                            for (int i8 = i6 - 1; -1 < i8 && ((int[]) hbVar.c)[i8] == iIdentityHashCode; i8--) {
                                rc4 rc4Var2 = ((rc4[]) hbVar.d)[i8];
                                if ((rc4Var2 != null ? rc4Var2.get() : null) == bs3Var) {
                                    i3 = i8;
                                    break;
                                }
                            }
                            i6++;
                            int i9 = hbVar.b;
                            while (true) {
                                if (i6 >= i9) {
                                    i3 = -(hbVar.b + 1);
                                    break;
                                } else {
                                    if (((int[]) hbVar.c)[i6] != iIdentityHashCode) {
                                        i3 = -(i6 + 1);
                                        break;
                                    }
                                    rc4 rc4Var3 = ((rc4[]) hbVar.d)[i6];
                                    if ((rc4Var3 != null ? rc4Var3.get() : null) == bs3Var) {
                                        break;
                                    } else {
                                        i6++;
                                    }
                                }
                            }
                            i3 = i6;
                        }
                    }
                }
                if (i3 >= 0) {
                    return;
                }
            }
            int i10 = -(i3 + 1);
            rc4[] rc4VarArr = (rc4[]) hbVar.d;
            int length = rc4VarArr.length;
            if (i2 == length) {
                int i11 = length * 2;
                rc4[] rc4VarArr2 = new rc4[i11];
                int[] iArr = new int[i11];
                int i12 = i10 + 1;
                System.arraycopy(rc4VarArr, i10, rc4VarArr2, i12, i2 - i10);
                System.arraycopy((rc4[]) hbVar.d, 0, rc4VarArr2, 0, i10);
                ji.N(i12, i10, i2, (int[]) hbVar.c, iArr);
                ji.Q(0, i10, 6, (int[]) hbVar.c, iArr);
                hbVar.d = rc4VarArr2;
                hbVar.c = iArr;
            } else {
                int i13 = i10 + 1;
                System.arraycopy(rc4VarArr, i10, rc4VarArr, i13, i2 - i10);
                int[] iArr2 = (int[]) hbVar.c;
                ji.N(i13, i10, i2, iArr2, iArr2);
            }
            ((rc4[]) hbVar.d)[i10] = new rc4(bs3Var);
            ((int[]) hbVar.c)[i10] = iIdentityHashCode;
            hbVar.b++;
        }
    }

    public static final void r() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final ds3 s(ds3 ds3Var, long j2, uo3 uo3Var) {
        ds3 ds3Var2 = null;
        while (ds3Var != null) {
            long j3 = ds3Var.a;
            if (j3 != 0 && nt1.m(j3, j2) <= 0 && !uo3Var.e(j3) && (ds3Var2 == null || nt1.m(ds3Var2.a, ds3Var.a) < 0)) {
                ds3Var2 = ds3Var;
            }
            ds3Var = ds3Var.b;
        }
        if (ds3Var2 != null) {
            return ds3Var2;
        }
        return null;
    }

    public static final ds3 t(ds3 ds3Var, bs3 bs3Var) {
        ds3 ds3VarS;
        po3 po3VarJ = j();
        pe1 pe1VarE = po3VarJ.e();
        if (pe1VarE != null) {
            pe1VarE.k(bs3Var);
        }
        ds3 ds3VarS2 = s(ds3Var, po3VarJ.g(), po3VarJ.d());
        if (ds3VarS2 != null) {
            return ds3VarS2;
        }
        synchronized (c) {
            po3 po3VarJ2 = j();
            ds3 ds3VarA = bs3Var.a();
            ds3VarA.getClass();
            ds3VarS = s(ds3VarA, po3VarJ2.g(), po3VarJ2.d());
            if (ds3VarS == null) {
                r();
                throw null;
            }
        }
        return ds3VarS;
    }

    public static final void u(int i2) {
        se2 se2Var = f;
        int i3 = ((int[]) se2Var.e)[i2];
        se2Var.c(i3, se2Var.a - 1);
        se2Var.a--;
        long[] jArr = (long[]) se2Var.c;
        long j2 = jArr[i3];
        int i4 = i3;
        while (i4 > 0) {
            int i5 = ((i4 + 1) >> 1) - 1;
            if (nt1.m(jArr[i5], j2) <= 0) {
                break;
            }
            se2Var.c(i5, i4);
            i4 = i5;
        }
        long[] jArr2 = (long[]) se2Var.c;
        int i6 = se2Var.a >> 1;
        while (i3 < i6) {
            int i7 = (i3 + 1) << 1;
            int i8 = i7 - 1;
            if (i7 < se2Var.a && nt1.m(jArr2[i7], jArr2[i8]) < 0) {
                if (nt1.m(jArr2[i7], jArr2[i3]) >= 0) {
                    break;
                }
                se2Var.c(i7, i3);
                i3 = i7;
            } else {
                if (nt1.m(jArr2[i8], jArr2[i3]) >= 0) {
                    break;
                }
                se2Var.c(i8, i3);
                i3 = i8;
            }
        }
        ((int[]) se2Var.e)[i2] = se2Var.b;
        se2Var.b = i2;
    }

    public static final Object v(jh1 jh1Var, pe1 pe1Var) {
        long j2 = jh1Var.b;
        Object objK = pe1Var.k(d.d(j2));
        long j3 = e;
        e = 1 + j3;
        uo3 uo3VarD = d.d(j2);
        d = uo3VarD;
        jh1Var.b = j3;
        jh1Var.a = uo3VarD;
        jh1Var.g = 0;
        jh1Var.h = null;
        jh1Var.o();
        d = d.g(j3);
        return objK;
    }

    public static final ds3 w(ds3 ds3Var, bs3 bs3Var, po3 po3Var) {
        ds3 ds3VarS;
        ds3 ds3VarS2;
        if (po3Var.f()) {
            po3Var.n(bs3Var);
        }
        long jG = po3Var.g();
        ds3 ds3VarS3 = s(ds3Var, jG, po3Var.d());
        if (ds3VarS3 == null) {
            synchronized (c) {
                po3 po3VarJ = j();
                ds3 ds3VarA = bs3Var.a();
                ds3VarA.getClass();
                ds3VarS2 = s(ds3VarA, po3VarJ.g(), po3VarJ.d());
                if (ds3VarS2 == null) {
                    r();
                    throw null;
                }
            }
            ds3VarS3 = ds3VarS2;
        }
        if (ds3VarS3.a == po3Var.g()) {
            return ds3VarS3;
        }
        synchronized (c) {
            ds3VarS = s(bs3Var.a(), jG, po3Var.d());
            if (ds3VarS == null) {
                r();
                throw null;
            }
            if (ds3VarS.a != jG) {
                ds3 ds3VarM = m(ds3VarS, bs3Var);
                ds3VarM.a(ds3VarS);
                ds3VarM.a = po3Var.g();
                ds3VarS = ds3VarM;
            }
        }
        if (ds3VarS3.a != 1) {
            po3Var.n(bs3Var);
        }
        return ds3VarS;
    }
}
