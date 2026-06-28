package defpackage;

import android.view.KeyEvent;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wf3 extends kr0 implements px1, eh3, cw2, jq1, fc0, bx0 {
    public hr2 D;
    public pe1 E;
    public boolean F;
    public vf2 G;
    public zy H;
    public zw0 I;
    public boolean J;
    public boolean K;
    public iw0 L;
    public long M;
    public xg1 N;
    public xg1 O;
    public lw0 P;
    public kw0 Q;
    public jw0 R;
    public ht4 S;
    public ra3 T;
    public lj1 U;
    public iq1 V;
    public wa W;
    public to0 X;
    public final tk2 Y;
    public final to0 Z;
    public final dg3 a0;
    public final sb0 b0;
    public final ka1 c0;
    public final fg0 d0;
    public sp0 e0;
    public uf3 f0;
    public me2 g0;
    public z04 h0;

    public wf3(wa waVar, to0 to0Var, vf2 vf2Var, hr2 hr2Var, xf3 xf3Var, boolean z, boolean z2) {
        jd3 jd3Var = rf3.a;
        this.D = hr2Var;
        this.E = jd3Var;
        this.F = z;
        this.G = vf2Var;
        this.M = 0L;
        this.W = waVar;
        this.X = to0Var;
        tk2 tk2Var = new tk2();
        this.Y = tk2Var;
        to0 to0Var2 = new to0(new sn0(new dd1(rf3.d)));
        this.Z = to0Var2;
        wa waVar2 = this.W;
        to0 to0Var3 = this.X;
        dg3 dg3Var = new dg3(xf3Var, waVar2, to0Var3 == null ? to0Var2 : to0Var3, hr2Var, z2, tk2Var, this, new tf3(this, 0));
        this.a0 = dg3Var;
        sb0 sb0Var = new sb0(dg3Var, z);
        this.b0 = sb0Var;
        ka1 ka1Var = new ka1(2, null, 10);
        G0(ka1Var);
        this.c0 = ka1Var;
        fg0 fg0Var = new fg0(hr2Var, dg3Var, z2, new tf3(this, 1));
        G0(fg0Var);
        this.d0 = fg0Var;
        G0(new xk2(sb0Var, tk2Var));
        dy dyVar = new dy();
        dyVar.B = fg0Var;
        G0(dyVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object J0(defpackage.wf3 r5, defpackage.fh0 r6) {
        /*
            boolean r0 = r6 instanceof defpackage.uw0
            if (r0 == 0) goto L13
            r0 = r6
            uw0 r0 = (defpackage.uw0) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            uw0 r0 = new uw0
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            defpackage.gg4.T(r6)
            goto L47
        L26:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            return r2
        L2c:
            defpackage.gg4.T(r6)
            zw0 r6 = r5.I
            if (r6 == 0) goto L49
            vf2 r1 = r5.G
            if (r1 == 0) goto L47
            yw0 r4 = new yw0
            r4.<init>(r6)
            r0.s = r3
            java.lang.Object r6 = r1.b(r4, r0)
            ri0 r0 = defpackage.ri0.n
            if (r6 != r0) goto L47
            return r0
        L47:
            r5.I = r2
        L49:
            pw0 r6 = new pw0
            r0 = 0
            r2 = 0
            r6.<init>(r2, r0)
            r5.S0(r6)
            t64 r5 = defpackage.t64.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wf3.J0(wf3, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object K0(defpackage.wf3 r6, defpackage.ow0 r7, defpackage.fh0 r8) {
        /*
            boolean r0 = r8 instanceof defpackage.vw0
            if (r0 == 0) goto L13
            r0 = r8
            vw0 r0 = (defpackage.vw0) r0
            int r1 = r0.f387u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f387u = r1
            goto L18
        L13:
            vw0 r0 = new vw0
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.s
            int r1 = r0.f387u
            r2 = 2
            r3 = 1
            ri0 r4 = defpackage.ri0.n
            if (r1 == 0) goto L3b
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2e
            zw0 r7 = r0.r
            ow0 r0 = r0.q
            defpackage.gg4.T(r8)
            goto L6e
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            r6 = 0
            return r6
        L35:
            ow0 r7 = r0.q
            defpackage.gg4.T(r8)
            goto L56
        L3b:
            defpackage.gg4.T(r8)
            zw0 r8 = r6.I
            if (r8 == 0) goto L56
            vf2 r1 = r6.G
            if (r1 == 0) goto L56
            yw0 r5 = new yw0
            r5.<init>(r8)
            r0.q = r7
            r0.f387u = r3
            java.lang.Object r8 = r1.b(r5, r0)
            if (r8 != r4) goto L56
            goto L6b
        L56:
            zw0 r8 = new zw0
            r8.<init>()
            vf2 r1 = r6.G
            if (r1 == 0) goto L70
            r0.q = r7
            r0.r = r8
            r0.f387u = r2
            java.lang.Object r0 = r1.b(r8, r0)
            if (r0 != r4) goto L6c
        L6b:
            return r4
        L6c:
            r0 = r7
            r7 = r8
        L6e:
            r8 = r7
            r7 = r0
        L70:
            r6.I = r8
            long r6 = r7.a
            t64 r6 = defpackage.t64.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wf3.K0(wf3, ow0, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object L0(defpackage.wf3 r5, defpackage.pw0 r6, defpackage.fh0 r7) {
        /*
            boolean r0 = r7 instanceof defpackage.ww0
            if (r0 == 0) goto L13
            r0 = r7
            ww0 r0 = (defpackage.ww0) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            ww0 r0 = new ww0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            pw0 r6 = r0.q
            defpackage.gg4.T(r7)
            goto L4b
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            return r2
        L2e:
            defpackage.gg4.T(r7)
            zw0 r7 = r5.I
            if (r7 == 0) goto L4d
            vf2 r1 = r5.G
            if (r1 == 0) goto L4b
            ax0 r4 = new ax0
            r4.<init>(r7)
            r0.q = r6
            r0.t = r3
            java.lang.Object r7 = r1.b(r4, r0)
            ri0 r0 = defpackage.ri0.n
            if (r7 != r0) goto L4b
            return r0
        L4b:
            r5.I = r2
        L4d:
            r5.S0(r6)
            t64 r5 = defpackage.t64.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wf3.L0(wf3, pw0, fh0):java.lang.Object");
    }

    public static void P0(wf3 wf3Var, zv2 zv2Var, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        kw0 kw0Var = wf3Var.Q;
        if (kw0Var == null) {
            kw0Var = new kw0();
            kw0Var.r = null;
            kw0Var.s = Long.MAX_VALUE;
            kw0Var.t = false;
            wf3Var.Q = kw0Var;
        }
        kw0Var.r = zv2Var;
        kw0Var.s = j;
        lj1 lj1Var = wf3Var.U;
        hr2 hr2Var = wf3Var.D;
        if (lj1Var == null) {
            wf3Var.U = new lj1(hr2Var, 0);
        } else {
            lj1Var.o = hr2Var;
            lj1Var.n = j2;
        }
        kw0Var.t = false;
        wf3Var.S = kw0Var;
    }

    @Override // defpackage.jq1
    public final void B(hb hbVar, wv2 wv2Var) {
        Object obj;
        Object obj2;
        char c;
        long j;
        float f;
        float fIntBitsToFloat;
        iq1 iq1Var;
        Object obj3;
        wv2 wv2Var2;
        iq1 iq1Var2;
        Object obj4;
        Object obj5;
        int i = hbVar.b;
        ArrayList arrayList = (ArrayList) hbVar.c;
        if (this.F) {
            if (this.V == null) {
                this.V = new iq1(this);
            }
            if (this.O == null) {
                iq1 iq1Var3 = this.V;
                iq1Var3.getClass();
                xg1 xg1Var = new xg1(iq1Var3);
                G0(xg1Var);
                this.O = xg1Var;
            }
            iq1 iq1Var4 = this.V;
            if (iq1Var4 != null) {
                wf3 wf3Var = iq1Var4.n;
                if (iq1Var4.s == null) {
                    dq1 dq1Var = iq1Var4.o;
                    if (dq1Var == null) {
                        dq1Var = new dq1();
                        dq1Var.f = cq1.p;
                        dq1Var.g = false;
                        dq1Var.h = false;
                        iq1Var4.o = dq1Var;
                    }
                    iq1Var4.s = dq1Var;
                }
                tv4 tv4Var = iq1Var4.s;
                if (tv4Var == null) {
                    k21.f("currentDragState should not be null");
                    return;
                }
                boolean z = tv4Var instanceof dq1;
                wv2 wv2Var3 = wv2.n;
                boolean z2 = true;
                wv2 wv2Var4 = wv2.o;
                if (z) {
                    dq1 dq1Var2 = (dq1) tv4Var;
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (!k30.k((bq1) arrayList.get(i2))) {
                            return;
                        }
                    }
                    bq1 bq1Var = (bq1) o70.h0(arrayList);
                    int i3 = hq1.a[dq1Var2.f.ordinal()];
                    cq1 cq1Var = cq1.o;
                    cq1 cq1Var2 = cq1.n;
                    cq1 cq1Var3 = i3 == 1 ? !wf3Var.X0() ? cq1Var2 : cq1Var : dq1Var2.f;
                    dq1Var2.f = cq1Var3;
                    if (wv2Var == wv2Var3) {
                        if (cq1Var3 == cq1Var) {
                            bq1Var.i = true;
                            dq1Var2.g = true;
                        }
                        dq1Var2.h = true;
                    }
                    if (wv2Var == wv2Var4) {
                        if (cq1Var3 == cq1Var2) {
                            iq1.c(iq1Var4, bq1Var, bq1Var.a, 0L, 12);
                            return;
                        }
                        if (dq1Var2.g) {
                            iq1Var4.f(bq1Var, bq1Var, new aq1(i), 0L);
                            iq1Var4.e(bq1Var, new aq1(i), 0L);
                            long j2 = bq1Var.a;
                            gq1 gq1Var = iq1Var4.p;
                            if (gq1Var == null) {
                                gq1Var = new gq1();
                                gq1Var.f = Long.MAX_VALUE;
                                iq1Var4.p = gq1Var;
                            }
                            gq1Var.f = j2;
                            iq1Var4.s = gq1Var;
                            return;
                        }
                        return;
                    }
                    return;
                }
                boolean z3 = tv4Var instanceof fq1;
                wv2 wv2Var5 = wv2.p;
                if (z3) {
                    fq1 fq1Var = (fq1) tv4Var;
                    if (wv2Var == wv2Var3) {
                        return;
                    }
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size2) {
                            iq1Var = iq1Var4;
                            obj3 = null;
                            break;
                        }
                        obj3 = arrayList.get(i4);
                        iq1Var = iq1Var4;
                        if (qj0.G(((bq1) obj3).a, fq1Var.g)) {
                            break;
                        }
                        i4++;
                        iq1Var4 = iq1Var;
                    }
                    bq1 bq1Var2 = (bq1) obj3;
                    if (bq1Var2 == null) {
                        int size3 = arrayList.size();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= size3) {
                                obj5 = null;
                                break;
                            }
                            obj5 = arrayList.get(i5);
                            if (((bq1) obj5).d) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                        bq1Var2 = (bq1) obj5;
                        if (bq1Var2 == null) {
                            iq1Var.a();
                            return;
                        }
                        fq1Var.g = bq1Var2.a;
                    }
                    bq1 bq1Var3 = bq1Var2;
                    if (wv2Var != wv2Var4) {
                        wv2Var2 = wv2Var5;
                        iq1Var2 = iq1Var;
                    } else if (bq1Var3.i) {
                        wv2Var2 = wv2Var5;
                        iq1Var2 = iq1Var;
                        bq1 bq1Var4 = fq1Var.f;
                        if (bq1Var4 == null) {
                            k21.f("AwaitTouchSlop.initialDown was not initialized");
                            return;
                        }
                        long j3 = fq1Var.g;
                        lj1 lj1Var = iq1Var2.f142u;
                        if (lj1Var == null) {
                            k21.f("AwaitTouchSlop.touchSlopDetector was not initialized");
                            return;
                        }
                        iq1Var2.b(bq1Var4, j3, lj1Var);
                    } else if (k30.g(bq1Var3)) {
                        int size4 = arrayList.size();
                        int i6 = 0;
                        while (true) {
                            if (i6 >= size4) {
                                obj4 = null;
                                break;
                            }
                            Object obj6 = arrayList.get(i6);
                            if (((bq1) obj6).d) {
                                obj4 = obj6;
                                break;
                            }
                            i6++;
                        }
                        bq1 bq1Var5 = (bq1) obj4;
                        if (bq1Var5 == null) {
                            iq1Var.a();
                        } else {
                            fq1Var.g = bq1Var5.a;
                        }
                        wv2Var2 = wv2Var5;
                        iq1Var2 = iq1Var;
                    } else {
                        nb4 nb4Var = (nb4) n44.g0(wf3Var, kc0.t);
                        float f2 = rw0.a;
                        float fB = nb4Var.b();
                        iq1Var2 = iq1Var;
                        lj1 lj1Var2 = iq1Var2.f142u;
                        if (lj1Var2 == null) {
                            k21.f("Touch slop detector not initialized.");
                            return;
                        }
                        long jA = lj1.a(lj1Var2, k30.B(bq1Var3, wf3Var.D, new aq1(i), true), fB);
                        if ((9223372034707292159L & jA) != 9205357640488583168L) {
                            bq1Var3.i = true;
                            bq1 bq1Var6 = fq1Var.f;
                            bq1Var6.getClass();
                            wv2Var2 = wv2Var5;
                            iq1Var2.f(bq1Var6, bq1Var3, new aq1(i), jA);
                            iq1Var2.e(bq1Var3, new aq1(i), jA);
                            long j4 = bq1Var3.a;
                            gq1 gq1Var2 = iq1Var2.p;
                            if (gq1Var2 == null) {
                                gq1Var2 = new gq1();
                                gq1Var2.f = Long.MAX_VALUE;
                                iq1Var2.p = gq1Var2;
                            }
                            gq1Var2.f = j4;
                            iq1Var2.s = gq1Var2;
                        } else {
                            wv2Var2 = wv2Var5;
                            fq1Var.h = true;
                        }
                    }
                    if (wv2Var == wv2Var2 && fq1Var.h) {
                        if (!bq1Var3.i) {
                            fq1Var.h = false;
                            return;
                        }
                        bq1 bq1Var7 = fq1Var.f;
                        if (bq1Var7 == null) {
                            k21.f("AwaitTouchSlop.initialDown was not initialized");
                            return;
                        }
                        long j5 = fq1Var.g;
                        lj1 lj1Var3 = iq1Var2.f142u;
                        if (lj1Var3 != null) {
                            iq1Var2.b(bq1Var7, j5, lj1Var3);
                            return;
                        } else {
                            k21.f("AwaitTouchSlop.touchSlopDetector was not initialized");
                            return;
                        }
                    }
                    return;
                }
                if (tv4Var instanceof eq1) {
                    eq1 eq1Var = (eq1) tv4Var;
                    if (wv2Var != wv2Var5) {
                        return;
                    }
                    int size5 = arrayList.size();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= size5) {
                            break;
                        }
                        if (((bq1) arrayList.get(i7)).i) {
                            z2 = false;
                            break;
                        }
                        i7++;
                    }
                    int size6 = arrayList.size();
                    int i8 = 0;
                    while (true) {
                        if (i8 >= size6) {
                            break;
                        }
                        if (!((bq1) arrayList.get(i8)).d) {
                            i8++;
                        } else if (!arrayList.isEmpty()) {
                            if (z2) {
                                long jC = k30.C((bq1) o70.h0(arrayList), wf3Var.D, new aq1(i));
                                bq1 bq1Var8 = eq1Var.f;
                                bq1Var8.getClass();
                                long jD = go2.d(jC, k30.C(bq1Var8, wf3Var.D, new aq1(i)));
                                bq1 bq1Var9 = eq1Var.f;
                                if (bq1Var9 != null) {
                                    iq1.c(iq1Var4, bq1Var9, eq1Var.g, jD, 8);
                                    return;
                                } else {
                                    k21.f("AwaitGesturePickup.initialDown was not initialized.");
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    iq1Var4.a();
                    return;
                }
                if (!(tv4Var instanceof gq1)) {
                    p61.x();
                    return;
                }
                gq1 gq1Var3 = (gq1) tv4Var;
                if (wv2Var != wv2Var4) {
                    return;
                }
                long j6 = gq1Var3.f;
                int size7 = arrayList.size();
                int i9 = 0;
                while (true) {
                    if (i9 >= size7) {
                        obj = null;
                        break;
                    }
                    obj = arrayList.get(i9);
                    if (qj0.G(((bq1) obj).a, j6)) {
                        break;
                    } else {
                        i9++;
                    }
                }
                bq1 bq1Var10 = (bq1) obj;
                if (bq1Var10 == null) {
                    return;
                }
                long j7 = bq1Var10.c;
                boolean zG = k30.g(bq1Var10);
                mw0 mw0Var = mw0.a;
                if (!zG) {
                    if (bq1Var10.i) {
                        wf3Var.Q0(mw0Var);
                        return;
                    } else {
                        if (go2.c(k30.B(bq1Var10, wf3Var.D, new aq1(i), true)) == 0.0f) {
                            return;
                        }
                        iq1Var4.e(bq1Var10, new aq1(i), k30.B(bq1Var10, wf3Var.D, new aq1(i), false));
                        bq1Var10.i = true;
                        return;
                    }
                }
                int size8 = arrayList.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size8) {
                        obj2 = null;
                        break;
                    }
                    obj2 = arrayList.get(i10);
                    if (((bq1) obj2).d) {
                        break;
                    } else {
                        i10++;
                    }
                }
                bq1 bq1Var11 = (bq1) obj2;
                if (bq1Var11 != null) {
                    gq1Var3.f = bq1Var11.a;
                    return;
                }
                if (bq1Var10.i || !k30.g(bq1Var10)) {
                    wf3Var.Q0(mw0Var);
                } else {
                    ra3 ra3VarD = iq1Var4.d();
                    hr2 hr2Var = wf3Var.D;
                    d90 d90Var = iq1Var4.v;
                    dg2 dg2Var = (dg2) d90Var.p;
                    char c2 = ' ';
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j7 >> 32));
                    long j8 = 4294967295L;
                    float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j7 & 4294967295L));
                    if (k30.k(bq1Var10)) {
                        d90Var.o = 0;
                        dg2Var.d();
                    }
                    if (k30.g(bq1Var10) || k30.k(bq1Var10)) {
                        c = ' ';
                        j = 4294967295L;
                        f = 0.0f;
                    } else {
                        if (dg2Var.b == 3) {
                            int i11 = d90Var.o;
                            d90Var.o = i11 + 1;
                            dg2Var.n(i11, bq1Var10);
                        } else {
                            dg2Var.a(bq1Var10);
                        }
                        if (d90Var.o == 3) {
                            d90Var.o = 0;
                        }
                        Object[] objArr = dg2Var.a;
                        int i12 = dg2Var.b;
                        int i13 = 0;
                        float fIntBitsToFloat4 = 0.0f;
                        while (i13 < i12) {
                            char c3 = c2;
                            fIntBitsToFloat4 = Float.intBitsToFloat((int) (((bq1) objArr[i13]).c >> c3)) + fIntBitsToFloat4;
                            i13++;
                            c2 = c3;
                        }
                        c = c2;
                        f = 0.0f;
                        int i14 = dg2Var.b;
                        fIntBitsToFloat2 = fIntBitsToFloat4 / i14;
                        Object[] objArr2 = dg2Var.a;
                        float fIntBitsToFloat5 = 0.0f;
                        int i15 = 0;
                        while (i15 < i14) {
                            long j9 = j8;
                            fIntBitsToFloat5 += Float.intBitsToFloat((int) (((bq1) objArr2[i15]).c & j9));
                            i15++;
                            j8 = j9;
                        }
                        j = j8;
                        fIntBitsToFloat3 = fIntBitsToFloat5 / dg2Var.b;
                    }
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << c) | (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) & j);
                    if (hr2Var != null) {
                        if (i == 1) {
                            fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> c));
                        } else if (i == 2) {
                            fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits & j));
                        }
                        jFloatToRawIntBits = hr2Var == hr2.o ? (((long) Float.floatToRawIntBits(f)) & j) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << c) : (((long) Float.floatToRawIntBits(f)) << c) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j);
                    }
                    ((t82) ra3VarD.o).a(bq1Var10.b, jFloatToRawIntBits);
                    float fA = ((nb4) n44.g0(wf3Var, kc0.t)).a();
                    long jA2 = iq1Var4.d().a(is0.g(fA, fA));
                    t82 t82Var = (t82) iq1Var4.d().o;
                    ta4 ta4Var = (ta4) t82Var.b;
                    jm0[] jm0VarArr = ta4Var.d;
                    ji.U(0, jm0VarArr.length, null, jm0VarArr);
                    ta4Var.e = 0;
                    ta4 ta4Var2 = (ta4) t82Var.c;
                    jm0[] jm0VarArr2 = ta4Var2.d;
                    ji.U(0, jm0VarArr2.length, null, jm0VarArr2);
                    ta4Var2.e = 0;
                    t82Var.a = 0L;
                    wf3Var.Q0(new pw0(true, dx0.a(jA2)));
                }
                iq1Var4.a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e0 A[PHI: r19
  0x00e0: PHI (r19v12 java.util.List) = 
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v5 java.util.List)
  (r19v7 java.util.List)
  (r19v7 java.util.List)
  (r19v7 java.util.List)
  (r19v7 java.util.List)
  (r19v7 java.util.List)
  (r19v8 java.util.List)
  (r19v8 java.util.List)
  (r19v9 java.util.List)
  (r19v13 java.util.List)
 binds: [B:177:0x0335, B:187:0x035a, B:212:0x0410, B:210:0x03fb, B:207:0x03ef, B:206:0x03ea, B:151:0x02c5, B:173:0x032a, B:167:0x02fe, B:171:0x0320, B:170:0x0317, B:135:0x0292, B:137:0x0296, B:146:0x02b2, B:145:0x02ad, B:144:0x02a8, B:134:0x028d, B:133:0x0288, B:127:0x026e, B:49:0x00de] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.cw2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F(defpackage.vv2 r23, defpackage.wv2 r24, long r25) {
        /*
            Method dump skipped, instruction units count: 1416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wf3.F(vv2, wv2, long):void");
    }

    public final void M0() {
        zw0 zw0Var = this.I;
        if (zw0Var != null) {
            vf2 vf2Var = this.G;
            if (vf2Var != null) {
                vf2Var.c(new yw0(zw0Var));
            }
            this.I = null;
        }
    }

    public final void N0() {
        this.M = 0L;
        iw0 iw0Var = this.L;
        hw0 hw0Var = hw0.p;
        if (iw0Var == null) {
            iw0Var = new iw0();
            iw0Var.r = hw0Var;
            iw0Var.s = false;
            iw0Var.t = false;
            this.L = iw0Var;
        }
        iw0Var.r = hw0Var;
        iw0Var.s = false;
        iw0Var.t = false;
        this.S = iw0Var;
    }

    public final void O0(zv2 zv2Var, long j, lj1 lj1Var) {
        jw0 jw0Var = this.R;
        if (jw0Var == null) {
            jw0Var = new jw0();
            jw0Var.r = null;
            jw0Var.s = Long.MAX_VALUE;
            this.R = jw0Var;
        }
        jw0Var.r = zv2Var;
        jw0Var.s = j;
        lj1Var.n = 0L;
        this.S = jw0Var;
    }

    public final void Q0(qw0 qw0Var) {
        if ((qw0Var instanceof ow0) && !this.J) {
            this.J = true;
            Y0();
        }
        T0().n(qw0Var);
    }

    @Override // defpackage.px1
    public final boolean R(KeyEvent keyEvent) {
        long jFloatToRawIntBits;
        if (!this.F || ((!nx1.a(k30.c(keyEvent.getKeyCode()), nx1.n) && !nx1.a(k30.c(keyEvent.getKeyCode()), nx1.m)) || tv4.z(keyEvent) != 2 || keyEvent.isCtrlPressed())) {
            return false;
        }
        boolean z = this.a0.d == hr2.n;
        fg0 fg0Var = this.d0;
        if (z) {
            int iH0 = (int) (fg0Var.H0() & 4294967295L);
            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(0.0f)) << 32) | (4294967295L & ((long) Float.floatToRawIntBits(nx1.a(k30.c(keyEvent.getKeyCode()), nx1.m) ? iH0 : -iH0)));
        } else {
            int iH02 = (int) (fg0Var.H0() >> 32);
            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(0.0f)) & 4294967295L) | (((long) Float.floatToRawIntBits(nx1.a(k30.c(keyEvent.getKeyCode()), nx1.m) ? iH02 : -iH02)) << 32);
        }
        ca.y(u0(), null, null, new uf3(this, jFloatToRawIntBits, null, 0), 3);
        return true;
    }

    public final void S0(pw0 pw0Var) {
        ca.y(this.Y.c(), null, null, new d93(pw0Var, this, null, 2), 3);
    }

    public final n30 T0() {
        zy zyVar = this.H;
        if (zyVar != null) {
            return zyVar;
        }
        k21.f("Events channel not initialized.");
        return null;
    }

    public final ra3 U0() {
        ra3 ra3Var = this.T;
        if (ra3Var != null) {
            return ra3Var;
        }
        k21.f("Velocity Tracker not initialized.");
        return null;
    }

    public final void V0(zv2 zv2Var, long j) {
        this.M = go2.e(this.M, j);
        n44.L(U0(), zv2Var);
        T0().n(new nw0(false, j));
    }

    public final void W0(zv2 zv2Var, zv2 zv2Var2, long j) {
        if (this.T == null) {
            this.T = new ra3(11);
        }
        n44.L(U0(), zv2Var);
        long jD = go2.d(zv2Var2.c, j);
        if (((Boolean) this.E.k(new hw2(zv2Var.i))).booleanValue()) {
            if (!this.J) {
                if (this.H == null) {
                    this.H = ix.c(Api.BaseClientBuilder.API_PRIORITY_OTHER, 6, null);
                }
                Y0();
            }
            T0().n(new ow0(jD));
        }
    }

    public final boolean X0() {
        dg3 dg3Var = this.a0;
        if (dg3Var.a.e()) {
            return true;
        }
        wa waVar = dg3Var.b;
        return waVar != null ? waVar.e() : false;
    }

    public final void Y0() {
        this.J = true;
        if (this.H == null) {
            this.H = ix.c(Api.BaseClientBuilder.API_PRIORITY_OTHER, 6, null);
        }
        ca.y(u0(), null, null, new xw0(this, null), 3);
    }

    public final void Z0(wa waVar, to0 to0Var, vf2 vf2Var, hr2 hr2Var, xf3 xf3Var, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5 = true;
        if (this.F != z) {
            this.b0.n = z;
            z3 = true;
        } else {
            z3 = false;
        }
        to0 to0Var2 = to0Var == null ? this.Z : to0Var;
        dg3 dg3Var = this.a0;
        if (nt1.g(dg3Var.a, xf3Var)) {
            z4 = false;
        } else {
            dg3Var.a = xf3Var;
            z4 = true;
        }
        dg3Var.b = waVar;
        if (dg3Var.d != hr2Var) {
            dg3Var.d = hr2Var;
            z4 = true;
        }
        if (dg3Var.e != z2) {
            dg3Var.e = z2;
            z4 = true;
        }
        dg3Var.c = to0Var2;
        dg3Var.f = this.Y;
        fg0 fg0Var = this.d0;
        fg0Var.B = hr2Var;
        fg0Var.D = z2;
        this.W = waVar;
        this.X = to0Var;
        jd3 jd3Var = rf3.a;
        hr2 hr2Var2 = dg3Var.d;
        hr2 hr2Var3 = hr2.n;
        if (hr2Var2 != hr2Var3) {
            hr2Var3 = hr2.o;
        }
        this.E = jd3Var;
        if (this.F != z) {
            this.F = z;
            if (!z) {
                xg1 xg1Var = this.O;
                if (xg1Var != null) {
                    H0(xg1Var);
                }
                xg1 xg1Var2 = this.N;
                if (xg1Var2 != null) {
                    H0(xg1Var2);
                }
                this.O = null;
                this.N = null;
                M0();
                this.V = null;
            }
            z4 = true;
        }
        if (!nt1.g(this.G, vf2Var)) {
            M0();
            this.G = vf2Var;
        }
        if (this.D != hr2Var3) {
            this.D = hr2Var3;
        } else {
            z5 = z4;
        }
        if (z5) {
            boolean z6 = this.K;
            mw0 mw0Var = mw0.a;
            if (z6) {
                N0();
                if (this.J) {
                    T0().n(mw0Var);
                }
                this.T = null;
            }
            iq1 iq1Var = this.V;
            if (iq1Var != null) {
                iq1Var.a();
                wf3 wf3Var = iq1Var.n;
                if (wf3Var.J) {
                    wf3Var.Q0(mw0Var);
                }
                iq1Var.t = null;
                d90 d90Var = iq1Var.w;
                d90Var.o = 0;
                ((xf2) d90Var.p).b = 0;
            }
        }
        if (z3) {
            this.e0 = null;
            this.f0 = null;
            w80.A(this);
        }
    }

    @Override // defpackage.jr0
    public final void a() {
        c0();
        if (this.A) {
            as0 as0Var = w80.R(this).L;
            to0 to0Var = this.Z;
            to0Var.getClass();
            to0Var.a = new sn0(new dd1(as0Var));
        }
        me2 me2Var = this.g0;
        if (me2Var != null) {
            me2Var.c = w80.R(this).L;
        }
        z04 z04Var = this.h0;
        if (z04Var != null) {
            z04Var.c = w80.R(this).L;
        }
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        if (this.F && (this.e0 == null || this.f0 == null)) {
            this.e0 = new sp0(17, this);
            this.f0 = new uf3(this, null);
        }
        sp0 sp0Var = this.e0;
        if (sp0Var != null) {
            kx1[] kx1VarArr = nh3.a;
            ph3Var.a(ah3.d, new o2(null, sp0Var));
        }
        uf3 uf3Var = this.f0;
        if (uf3Var != null) {
            kx1[] kx1VarArr2 = nh3.a;
            ph3Var.a(ah3.e, uf3Var);
        }
    }

    @Override // defpackage.cw2
    public final void c0() {
        if (this.K) {
            N0();
            if (this.J) {
                T0().n(mw0.a);
            }
            this.T = null;
        }
        this.K = false;
    }

    @Override // defpackage.bx0
    public final hr2 i() {
        return this.D;
    }

    @Override // defpackage.px1
    public final boolean j(KeyEvent keyEvent) {
        return false;
    }

    @Override // defpackage.wg1
    public final String o0() {
        if (!this.F) {
            return "idle";
        }
        ht4 ht4Var = this.S;
        return ht4Var instanceof iw0 ? ((iw0) ht4Var).t ? "waiting" : "idle" : ((ht4Var instanceof kw0) || (ht4Var instanceof jw0)) ? "waiting" : ht4Var instanceof lw0 ? "recognized" : "idle";
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.jq1
    public final void x() {
        iq1 iq1Var = this.V;
        if (iq1Var != null) {
            iq1Var.a();
            wf3 wf3Var = iq1Var.n;
            if (wf3Var.J) {
                wf3Var.Q0(mw0.a);
            }
            iq1Var.t = null;
            d90 d90Var = iq1Var.w;
            d90Var.o = 0;
            ((xf2) d90Var.p).b = 0;
        }
    }

    @Override // defpackage.md2
    public final void y0() {
        if (this.A) {
            as0 as0Var = w80.R(this).L;
            to0 to0Var = this.Z;
            to0Var.getClass();
            to0Var.a = new sn0(new dd1(as0Var));
        }
        me2 me2Var = this.g0;
        if (me2Var != null) {
            me2Var.c = w80.R(this).L;
        }
        z04 z04Var = this.h0;
        if (z04Var != null) {
            z04Var.c = w80.R(this).L;
        }
    }

    @Override // defpackage.md2
    public final void z0() {
        this.J = false;
        M0();
        xg1 xg1Var = this.O;
        if (xg1Var != null) {
            H0(xg1Var);
        }
        xg1 xg1Var2 = this.N;
        if (xg1Var2 != null) {
            H0(xg1Var2);
        }
        this.O = null;
        this.N = null;
    }

    public final void R0(long j) {
    }
}
