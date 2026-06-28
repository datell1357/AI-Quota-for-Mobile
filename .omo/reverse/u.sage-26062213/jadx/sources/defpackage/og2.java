package defpackage;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class og2 extends po3 {
    public static final int[] n = new int[0];
    public final pe1 e;
    public final pe1 f;
    public int g;
    public lg2 h;
    public ArrayList i;
    public uo3 j;
    public int[] k;
    public int l;
    public boolean m;

    public og2(long j, uo3 uo3Var, pe1 pe1Var, pe1 pe1Var2) {
        super(j, uo3Var);
        this.e = pe1Var;
        this.f = pe1Var2;
        this.j = uo3.r;
        this.k = n;
        this.l = 1;
    }

    public final void A(long j) {
        synchronized (wo3.c) {
            this.j = this.j.g(j);
        }
    }

    public void B(lg2 lg2Var) {
        this.h = lg2Var;
    }

    public og2 C(pe1 pe1Var, pe1 pe1Var2) {
        ok2 ok2Var;
        if (this.c) {
            ix2.a("Cannot use a disposed snapshot");
        }
        if (this.m && this.d < 0) {
            ix2.b("Unsupported operation on a disposed or applied snapshot");
        }
        A(g());
        Object obj = wo3.c;
        synchronized (obj) {
            long j = wo3.e;
            wo3.e = j + 1;
            wo3.d = wo3.d.g(j);
            uo3 uo3VarD = d();
            r(uo3VarD.g(j));
            ok2Var = new ok2(j, wo3.d(uo3VarD, g() + 1, j), wo3.k(pe1Var, e(), true), wo3.l(pe1Var2, i()), this);
        }
        if (this.m || this.c) {
            return ok2Var;
        }
        long jG = g();
        synchronized (obj) {
            long j2 = wo3.e;
            wo3.e = j2 + 1;
            s(j2);
            wo3.d = wo3.d.g(g());
        }
        r(wo3.d(d(), jG + 1, g()));
        return ok2Var;
    }

    @Override // defpackage.po3
    public final void b() {
        wo3.d = wo3.d.d(g()).a(this.j);
    }

    @Override // defpackage.po3
    public void c() {
        if (this.c) {
            return;
        }
        this.c = true;
        synchronized (wo3.c) {
            o();
        }
        l();
    }

    @Override // defpackage.po3
    public boolean f() {
        return false;
    }

    @Override // defpackage.po3
    public int h() {
        return this.g;
    }

    @Override // defpackage.po3
    public pe1 i() {
        return this.f;
    }

    @Override // defpackage.po3
    public void k() {
        this.l++;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    @Override // defpackage.po3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l() {
        /*
            r17 = this;
            r0 = r17
            int r1 = r0.l
            if (r1 <= 0) goto L7
            goto Lc
        L7:
            java.lang.String r1 = "no pending nested snapshots"
            defpackage.ix2.a(r1)
        Lc:
            int r1 = r0.l
            int r1 = r1 + (-1)
            r0.l = r1
            if (r1 != 0) goto L94
            boolean r1 = r0.m
            if (r1 != 0) goto L94
            lg2 r1 = r0.x()
            if (r1 == 0) goto L91
            boolean r2 = r0.m
            if (r2 == 0) goto L27
            java.lang.String r2 = "Unsupported operation on a snapshot that has been applied"
            defpackage.ix2.b(r2)
        L27:
            r2 = 0
            r0.B(r2)
            long r2 = r0.g()
            java.lang.Object[] r4 = r1.b
            long[] r1 = r1.a
            int r5 = r1.length
            int r5 = r5 + (-2)
            if (r5 < 0) goto L91
            r7 = 0
        L39:
            r8 = r1[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L8c
            int r10 = r7 - r5
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = 0
        L53:
            if (r12 >= r10) goto L8a
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L86
            int r13 = r7 << 3
            int r13 = r13 + r12
            r13 = r4[r13]
            bs3 r13 = (defpackage.bs3) r13
            ds3 r13 = r13.a()
        L69:
            if (r13 == 0) goto L86
            long r14 = r13.a
            int r16 = (r14 > r2 ? 1 : (r14 == r2 ? 0 : -1))
            if (r16 == 0) goto L7d
            uo3 r6 = r0.j
            java.lang.Long r14 = java.lang.Long.valueOf(r14)
            boolean r6 = defpackage.o70.e0(r6, r14)
            if (r6 == 0) goto L83
        L7d:
            jd3 r6 = defpackage.wo3.a
            r14 = 0
            r13.a = r14
        L83:
            ds3 r13 = r13.b
            goto L69
        L86:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L53
        L8a:
            if (r10 != r11) goto L91
        L8c:
            if (r7 == r5) goto L91
            int r7 = r7 + 1
            goto L39
        L91:
            r0.a()
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.og2.l():void");
    }

    @Override // defpackage.po3
    public void m() {
        if (this.m || this.c) {
            return;
        }
        v();
    }

    @Override // defpackage.po3
    public void n(bs3 bs3Var) {
        lg2 lg2VarX = x();
        if (lg2VarX == null) {
            lg2 lg2Var = ud3.a;
            lg2VarX = new lg2();
            B(lg2VarX);
        }
        lg2VarX.a(bs3Var);
    }

    @Override // defpackage.po3
    public final void p() {
        int length = this.k.length;
        for (int i = 0; i < length; i++) {
            wo3.u(this.k[i]);
        }
        o();
    }

    @Override // defpackage.po3
    public void t(int i) {
        this.g = i;
    }

    @Override // defpackage.po3
    public po3 u(pe1 pe1Var) {
        pk2 pk2Var;
        if (this.c) {
            ix2.a("Cannot use a disposed snapshot");
        }
        if (this.m && this.d < 0) {
            ix2.b("Unsupported operation on a disposed or applied snapshot");
        }
        long jG = g();
        A(g());
        Object obj = wo3.c;
        synchronized (obj) {
            long j = wo3.e;
            wo3.e = j + 1;
            wo3.d = wo3.d.g(j);
            pk2Var = new pk2(j, wo3.d(d(), jG + 1, j), wo3.k(pe1Var, e(), true), this);
        }
        if (this.m || this.c) {
            return pk2Var;
        }
        long jG2 = g();
        synchronized (obj) {
            long j2 = wo3.e;
            wo3.e = j2 + 1;
            s(j2);
            wo3.d = wo3.d.g(g());
        }
        r(wo3.d(d(), jG2 + 1, g()));
        return pk2Var;
    }

    public final void v() {
        A(g());
        if (this.m || this.c) {
            return;
        }
        long jG = g();
        synchronized (wo3.c) {
            long j = wo3.e;
            wo3.e = j + 1;
            s(j);
            wo3.d = wo3.d.g(g());
        }
        r(wo3.d(d(), jG + 1, g()));
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.zf5 w() {
        /*
            Method dump skipped, instruction units count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.og2.w():zf5");
    }

    public lg2 x() {
        return this.h;
    }

    @Override // defpackage.po3
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public pe1 e() {
        return this.e;
    }

    public final zf5 z(long j, lg2 lg2Var, HashMap map, uo3 uo3Var) {
        ArrayList arrayList;
        ArrayList arrayListS0;
        ArrayList arrayList2;
        uo3 uo3Var2;
        Object[] objArr;
        long[] jArr;
        uo3 uo3Var3;
        Object[] objArr2;
        long[] jArr2;
        int i;
        long j2;
        ArrayList arrayList3;
        ds3 ds3VarD;
        uo3 uo3VarF = d().g(g()).f(this.j);
        Object[] objArr3 = lg2Var.b;
        long[] jArr3 = lg2Var.a;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            arrayList2 = null;
            arrayListS0 = null;
            while (true) {
                long j3 = jArr3[i2];
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    int i4 = 0;
                    while (i4 < i3) {
                        if ((j3 & 255) < 128) {
                            objArr2 = objArr3;
                            bs3 bs3Var = (bs3) objArr3[(i2 << 3) + i4];
                            jArr2 = jArr3;
                            ds3 ds3VarA = bs3Var.a();
                            i = i4;
                            ArrayList arrayList4 = arrayList2;
                            ds3 ds3VarS = wo3.s(ds3VarA, j, uo3Var);
                            if (ds3VarS == null) {
                                arrayList3 = arrayListS0;
                                j2 = j3;
                            } else {
                                arrayList3 = arrayListS0;
                                j2 = j3;
                                ds3 ds3VarS2 = wo3.s(ds3VarA, g(), uo3VarF);
                                if (ds3VarS2 != null && ds3VarS2.a != 1 && !ds3VarS.equals(ds3VarS2)) {
                                    uo3Var3 = uo3VarF;
                                    ds3 ds3VarS3 = wo3.s(ds3VarA, g(), d());
                                    if (ds3VarS3 == null) {
                                        wo3.r();
                                        throw null;
                                    }
                                    if (map == null || (ds3VarD = (ds3) map.get(ds3VarS)) == null) {
                                        ds3VarD = bs3Var.d(ds3VarS2, ds3VarS, ds3VarS3);
                                    }
                                    if (ds3VarD == null) {
                                        return new ro3(this);
                                    }
                                    if (!ds3VarD.equals(ds3VarS3)) {
                                        if (ds3VarD.equals(ds3VarS)) {
                                            ArrayList arrayList5 = arrayList4 == null ? new ArrayList() : arrayList4;
                                            arrayList5.add(new js2(bs3Var, ds3VarS.b(g())));
                                            arrayListS0 = arrayList3 == null ? new ArrayList() : arrayList3;
                                            arrayListS0.add(bs3Var);
                                            arrayList2 = arrayList5;
                                        } else {
                                            arrayList2 = arrayList4 == null ? new ArrayList() : arrayList4;
                                            arrayList2.add(!ds3VarD.equals(ds3VarS2) ? new js2(bs3Var, ds3VarD) : new js2(bs3Var, ds3VarS2.b(g())));
                                        }
                                    }
                                    arrayListS0 = arrayList3;
                                }
                                arrayList2 = arrayList4;
                                arrayListS0 = arrayList3;
                            }
                            uo3Var3 = uo3VarF;
                            arrayList2 = arrayList4;
                            arrayListS0 = arrayList3;
                        } else {
                            uo3Var3 = uo3VarF;
                            objArr2 = objArr3;
                            jArr2 = jArr3;
                            i = i4;
                            j2 = j3;
                        }
                        j3 = j2 >> 8;
                        i4 = i + 1;
                        jArr3 = jArr2;
                        objArr3 = objArr2;
                        uo3VarF = uo3Var3;
                    }
                    uo3Var2 = uo3VarF;
                    objArr = objArr3;
                    jArr = jArr3;
                    if (i3 != 8) {
                        break;
                    }
                } else {
                    uo3Var2 = uo3VarF;
                    objArr = objArr3;
                    jArr = jArr3;
                }
                if (i2 == length) {
                    arrayList = arrayList2;
                    break;
                }
                i2++;
                jArr3 = jArr;
                objArr3 = objArr;
                uo3VarF = uo3Var2;
            }
        } else {
            arrayList = null;
            arrayListS0 = null;
        }
        arrayList2 = arrayList;
        if (arrayList2 != null) {
            v();
            int size = arrayList2.size();
            for (int i5 = 0; i5 < size; i5++) {
                js2 js2Var = (js2) arrayList2.get(i5);
                bs3 bs3Var2 = (bs3) js2Var.n;
                ds3 ds3Var = (ds3) js2Var.o;
                ds3Var.a = j;
                synchronized (wo3.c) {
                    ds3Var.b = bs3Var2.a();
                    bs3Var2.e(ds3Var);
                }
            }
        }
        if (arrayListS0 != null) {
            int size2 = arrayListS0.size();
            for (int i6 = 0; i6 < size2; i6++) {
                lg2Var.l((bs3) arrayListS0.get(i6));
            }
            ArrayList arrayList6 = this.i;
            if (arrayList6 != null) {
                arrayListS0 = o70.s0(arrayList6, arrayListS0);
            }
            this.i = arrayListS0;
        }
        return so3.h;
    }
}
