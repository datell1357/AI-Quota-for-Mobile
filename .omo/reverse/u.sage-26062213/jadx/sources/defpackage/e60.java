package defpackage;

import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class e60 extends kr0 implements cw2, px1, eh3, fc0, co2, jq1, wg1 {
    public vf2 D;
    public zp1 E;
    public boolean F;
    public q93 G;
    public boolean H;
    public ne1 I;
    public final na1 J;
    public zp1 K;
    public xg1 L;
    public String M = "idle";
    public jr0 N;
    public hy2 O;
    public ik1 P;
    public final yf2 Q;
    public long R;
    public hy2 S;
    public vf2 T;
    public boolean U;
    public ir3 V;
    public zv2 W;
    public bq1 X;

    public e60(ne1 ne1Var, zp1 zp1Var, vf2 vf2Var, q93 q93Var, boolean z, boolean z2) {
        this.D = vf2Var;
        this.E = zp1Var;
        this.F = z;
        this.G = q93Var;
        this.H = z2;
        this.I = ne1Var;
        this.J = new na1(vf2Var, new o(1, this, e60.class, "onFocusChange", "onFocusChange(Z)V", 0, 0, 0));
        int i = a82.a;
        this.Q = new yf2(6);
        this.R = 0L;
        vf2 vf2Var2 = this.D;
        this.T = vf2Var2;
        this.U = vf2Var2 == null;
    }

    @Override // defpackage.jq1
    public final void B(hb hbVar, wv2 wv2Var) {
        ArrayList arrayList = (ArrayList) hbVar.c;
        O0();
        if (this.H && this.L == null) {
            xg1 xg1Var = new xg1(this);
            G0(xg1Var);
            this.L = xg1Var;
        }
        int i = 1;
        int i2 = 0;
        if (wv2Var != wv2.o) {
            if (wv2Var == wv2.p) {
                if (this.X != null) {
                    int size = arrayList.size();
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        bq1 bq1Var = (bq1) arrayList.get(i2);
                        if (bq1Var.i && bq1Var != this.X) {
                            K0(true);
                            break;
                        }
                        i2++;
                    }
                }
                if (nt1.g(this.M, "recognized")) {
                    this.M = "idle";
                    return;
                }
                return;
            }
            return;
        }
        dh0 dh0Var = null;
        if (this.X == null) {
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                if (k30.k((bq1) arrayList.get(i3))) {
                    bq1 bq1Var2 = (bq1) arrayList.get(0);
                    bq1Var2.i = true;
                    this.X = bq1Var2;
                    if (this.H) {
                        this.M = "waiting";
                        vf2 vf2Var = this.D;
                        if (vf2Var != null) {
                            hy2 hy2Var = new hy2(bq1Var2.c);
                            if (L0()) {
                                this.V = ca.y(u0(), null, null, new s(vf2Var, hy2Var, this, dh0Var, 0), 3);
                                return;
                            } else {
                                this.S = hy2Var;
                                ca.y(u0(), null, null, new r(vf2Var, hy2Var, dh0Var, i), 3);
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
            }
            return;
        }
        int size3 = arrayList.size();
        for (int i4 = 0; i4 < size3; i4++) {
            bq1 bq1Var3 = (bq1) arrayList.get(i4);
            if (bq1Var3.i || !bq1Var3.h || bq1Var3.d) {
                float fB = ((nb4) n44.g0(this, kc0.t)).b();
                int size4 = arrayList.size();
                for (int i5 = 0; i5 < size4; i5++) {
                    bq1 bq1Var4 = (bq1) arrayList.get(i5);
                    long j = bq1Var4.c;
                    bq1 bq1Var5 = this.X;
                    bq1Var5.getClass();
                    boolean z = Math.abs(go2.c(go2.d(j, bq1Var5.c))) > fB;
                    if (bq1Var4.i || z) {
                        K0(true);
                        return;
                    }
                }
                return;
            }
        }
        ((bq1) arrayList.get(0)).i = true;
        if (this.H) {
            this.M = "recognized";
            bq1 bq1Var6 = this.X;
            bq1Var6.getClass();
            N0(true, bq1Var6.c);
            P0();
        }
        this.X = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cw2
    public final void F(vv2 vv2Var, wv2 wv2Var, long j) {
        boolean z;
        char c = ' ';
        long j2 = 4294967295L;
        long j3 = ((j >> 33) << 32) | (((j << 32) >> 33) & 4294967295L);
        this.R = (((long) Float.floatToRawIntBits((int) (j3 & 4294967295L))) & 4294967295L) | (((long) Float.floatToRawIntBits((int) (j3 >> 32))) << 32);
        O0();
        boolean z2 = this.H;
        wv2 wv2Var2 = wv2.o;
        int i = 1;
        int i2 = 0;
        dh0 dh0Var = null;
        if (z2) {
            if (this.L == null) {
                xg1 xg1Var = new xg1(this);
                G0(xg1Var);
                this.L = xg1Var;
            }
            if (wv2Var == wv2Var2) {
                int i3 = vv2Var.c;
                if (i3 == 4) {
                    ca.y(u0(), null, null, new u(this, dh0Var, i2), 3);
                } else if (i3 == 5) {
                    ca.y(u0(), null, null, new u(this, dh0Var, i), 3);
                }
            }
        }
        if (wv2Var != wv2Var2) {
            if (wv2Var == wv2.p) {
                if (this.W != null) {
                    List list = vv2Var.a;
                    int size = list.size();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size) {
                            break;
                        }
                        zv2 zv2Var = (zv2) list.get(i4);
                        if (zv2Var.c() && zv2Var != this.W) {
                            K0(false);
                            break;
                        }
                        i4++;
                    }
                }
                if (nt1.g(this.M, "recognized")) {
                    this.M = "idle";
                    return;
                }
                return;
            }
            return;
        }
        if (this.W == null) {
            if (qj0.O(vv2Var, true)) {
                zv2 zv2Var2 = (zv2) vv2Var.a.get(0);
                zv2Var2.a();
                this.W = zv2Var2;
                if (this.H) {
                    this.M = "waiting";
                    vf2 vf2Var = this.D;
                    if (vf2Var != null) {
                        hy2 hy2Var = new hy2(zv2Var2.c);
                        if (L0()) {
                            this.V = ca.y(u0(), null, null, new s(vf2Var, hy2Var, this, dh0Var, 1), 3);
                            return;
                        } else {
                            this.O = hy2Var;
                            ca.y(u0(), null, null, new r(vf2Var, hy2Var, dh0Var, 2), 3);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        List list2 = vv2Var.a;
        int size2 = list2.size();
        int i5 = 0;
        while (i5 < size2) {
            if (!se0.e((zv2) list2.get(i5))) {
                long jX = w80.R(this).L.X(((nb4) n44.g0(this, kc0.t)).c());
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Math.max(0.0f, Float.intBitsToFloat((int) (jX & j2)) - ((int) (j & j2))) / 2.0f)) & j2) | (((long) Float.floatToRawIntBits(Math.max(0.0f, Float.intBitsToFloat((int) (jX >> c)) - ((int) (j >> c))) / 2.0f)) << c);
                int size3 = list2.size();
                int i6 = 0;
                while (i6 < size3) {
                    zv2 zv2Var3 = (zv2) list2.get(i6);
                    if (zv2Var3.c()) {
                        z = i2;
                    } else {
                        int i7 = zv2Var3.i == i ? i : i2;
                        long j4 = zv2Var3.c;
                        char c2 = c;
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (j4 >> c2));
                        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j4 & j2));
                        float f = i7;
                        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (jFloatToRawIntBits >> c2)) * f;
                        long j5 = j2;
                        float f2 = ((int) (j >> c2)) + fIntBitsToFloat3;
                        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (jFloatToRawIntBits & j5)) * f;
                        if (((fIntBitsToFloat > f2) | (fIntBitsToFloat < (-fIntBitsToFloat3)) | (fIntBitsToFloat2 < (-fIntBitsToFloat4))) || (fIntBitsToFloat2 > ((int) (j & j5)) + fIntBitsToFloat4)) {
                            z = 0;
                        } else {
                            i6++;
                            j2 = j5;
                            i = 1;
                            c = ' ';
                            i2 = 0;
                        }
                    }
                    K0(z);
                    return;
                }
                return;
            }
            i5++;
            j2 = j2;
            i = 1;
            c = ' ';
        }
        ((zv2) list2.get(0)).a();
        if (this.H) {
            this.M = "recognized";
            zv2 zv2Var4 = this.W;
            zv2Var4.getClass();
            N0(false, zv2Var4.c);
            P0();
        }
        this.W = null;
    }

    @Override // defpackage.co2
    public final void H() {
        if (this.F) {
            ix.H(this, new l(this, 0));
        }
    }

    public final void K0(boolean z) {
        dh0 dh0Var = null;
        if (z) {
            this.X = null;
        } else {
            this.W = null;
        }
        vf2 vf2Var = this.D;
        if (vf2Var != null) {
            ir3 ir3Var = this.V;
            if (ir3Var == null || !ir3Var.b()) {
                hy2 hy2Var = z ? this.S : this.O;
                if (hy2Var != null) {
                    gy2 gy2Var = new gy2(hy2Var);
                    tu1 tu1Var = (tu1) ((bh0) u0()).n.K(mj1.W);
                    ca.y(u0(), null, null, new p(vf2Var, gy2Var, tu1Var != null ? tu1Var.V(new m(0, vf2Var, gy2Var)) : null, dh0Var, 0), 3);
                }
            } else {
                ir3 ir3Var2 = this.V;
                if (ir3Var2 != null) {
                    ir3Var2.j(null);
                }
            }
            if (z) {
                this.S = null;
            } else {
                this.O = null;
            }
        }
        this.M = "idle";
    }

    public final boolean L0() {
        w33 w33Var = new w33();
        qj0.b0(this, xg1.C, new yg1(new c60(0, w33Var), 0));
        if (w33Var.n != null) {
            return true;
        }
        int i = f60.b;
        ViewParent parent = ca.F(this).getParent();
        while (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = viewGroup.getParent();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M0() {
        /*
            r17 = this;
            r0 = r17
            vf2 r1 = r0.D
            yf2 r2 = r0.Q
            if (r1 == 0) goto L76
            hy2 r3 = r0.O
            if (r3 == 0) goto L14
            gy2 r4 = new gy2
            r4.<init>(r3)
            r1.c(r4)
        L14:
            hy2 r3 = r0.S
            if (r3 == 0) goto L20
            gy2 r4 = new gy2
            r4.<init>(r3)
            r1.c(r4)
        L20:
            ik1 r3 = r0.P
            if (r3 == 0) goto L2c
            jk1 r4 = new jk1
            r4.<init>(r3)
            r1.c(r4)
        L2c:
            java.lang.Object[] r3 = r2.c
            long[] r4 = r2.a
            int r5 = r4.length
            int r5 = r5 + (-2)
            if (r5 < 0) goto L76
            r6 = 0
            r7 = r6
        L37:
            r8 = r4[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L71
            int r10 = r7 - r5
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r6
        L51:
            if (r12 >= r10) goto L6f
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L6b
            int r13 = r7 << 3
            int r13 = r13 + r12
            r13 = r3[r13]
            hy2 r13 = (defpackage.hy2) r13
            gy2 r14 = new gy2
            r14.<init>(r13)
            r1.c(r14)
        L6b:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L51
        L6f:
            if (r10 != r11) goto L76
        L71:
            if (r7 == r5) goto L76
            int r7 = r7 + 1
            goto L37
        L76:
            r1 = 0
            r0.O = r1
            r0.S = r1
            r0.P = r1
            r2.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e60.M0():void");
    }

    public final void N0(boolean z, long j) {
        vf2 vf2Var = this.D;
        if (vf2Var != null) {
            ir3 ir3Var = this.V;
            if (ir3Var == null || !ir3Var.b()) {
                hy2 hy2Var = z ? this.S : this.O;
                if (hy2Var != null) {
                    ca.y(u0(), null, null, new r(hy2Var, vf2Var, null), 3);
                }
            } else {
                ir3Var.j(null);
                ca.y(u0(), null, null, new q(ir3Var, j, vf2Var, (dh0) null, 0), 3);
            }
            if (z) {
                this.S = null;
            } else {
                this.O = null;
            }
        }
    }

    public final void O0() {
        if (this.N != null) {
            return;
        }
        zp1 zp1Var = this.F ? this.K : this.E;
        if (zp1Var != null) {
            if (this.D == null) {
                this.D = new vf2();
            }
            this.J.L0(this.D);
            vf2 vf2Var = this.D;
            vf2Var.getClass();
            jr0 jr0VarA = zp1Var.a(vf2Var);
            G0(jr0VarA);
            this.N = jr0VarA;
        }
    }

    public final void P0() {
        xp3 xp3Var = (xp3) n44.g0(this, kc0.v);
        if (xp3Var != null) {
            xp3Var.a();
        }
        this.I.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Q0(defpackage.ne1 r4, defpackage.zp1 r5, defpackage.vf2 r6, defpackage.q93 r7, boolean r8, boolean r9) {
        /*
            r3 = this;
            vf2 r0 = r3.T
            boolean r0 = defpackage.nt1.g(r0, r6)
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L13
            r3.M0()
            r3.T = r6
            r3.D = r6
            r6 = r1
            goto L14
        L13:
            r6 = r2
        L14:
            zp1 r0 = r3.E
            boolean r0 = defpackage.nt1.g(r0, r5)
            if (r0 != 0) goto L1f
            r3.E = r5
            r6 = r1
        L1f:
            boolean r5 = r3.F
            if (r5 == r8) goto L2b
            r3.F = r8
            if (r8 == 0) goto L2a
            r3.H()
        L2a:
            r6 = r1
        L2b:
            boolean r5 = r3.H
            r8 = 0
            na1 r0 = r3.J
            if (r5 == r9) goto L52
            if (r9 == 0) goto L38
            r3.G0(r0)
            goto L3e
        L38:
            r3.H0(r0)
            r3.M0()
        L3e:
            defpackage.w80.A(r3)
            if (r9 != 0) goto L50
            xg1 r5 = r3.L
            if (r5 == 0) goto L4a
            r3.H0(r5)
        L4a:
            r3.L = r8
            java.lang.String r5 = "idle"
            r3.M = r5
        L50:
            r3.H = r9
        L52:
            q93 r5 = r3.G
            boolean r5 = defpackage.nt1.g(r5, r7)
            if (r5 != 0) goto L5f
            r3.G = r7
            defpackage.w80.A(r3)
        L5f:
            r3.I = r4
            boolean r4 = r3.U
            vf2 r5 = r3.T
            if (r5 != 0) goto L69
            r7 = r1
            goto L6a
        L69:
            r7 = r2
        L6a:
            if (r4 == r7) goto L78
            if (r5 != 0) goto L6f
            r2 = r1
        L6f:
            r3.U = r2
            if (r2 != 0) goto L78
            jr0 r4 = r3.N
            if (r4 != 0) goto L78
            goto L79
        L78:
            r1 = r6
        L79:
            if (r1 == 0) goto L8d
            jr0 r4 = r3.N
            if (r4 != 0) goto L83
            boolean r5 = r3.U
            if (r5 != 0) goto L8d
        L83:
            if (r4 == 0) goto L88
            r3.H0(r4)
        L88:
            r3.N = r8
            r3.O0()
        L8d:
            vf2 r3 = r3.D
            r0.L0(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e60.Q0(ne1, zp1, vf2, q93, boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cd, code lost:
    
        if (((r7 & ((~r7) << 6)) & r14) == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cf, code lost:
    
        r16 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
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
    @Override // defpackage.px1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean R(android.view.KeyEvent r24) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e60.R(android.view.KeyEvent):boolean");
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        q93 q93Var = this.G;
        if (q93Var != null) {
            nh3.c(ph3Var, q93Var.a);
        }
        l lVar = new l(this, 1);
        kx1[] kx1VarArr = nh3.a;
        ph3Var.a(ah3.b, new o2(null, lVar));
        if (this.H) {
            this.J.a0(ph3Var);
        } else {
            ph3Var.a(lh3.j, t64.a);
        }
        J0(ph3Var);
    }

    @Override // defpackage.cw2
    public final void c0() {
        ik1 ik1Var;
        vf2 vf2Var = this.D;
        if (vf2Var != null && (ik1Var = this.P) != null) {
            vf2Var.c(new jk1(ik1Var));
        }
        this.P = null;
        K0(false);
    }

    @Override // defpackage.eh3
    public final boolean g0() {
        return true;
    }

    @Override // defpackage.px1
    public final boolean j(KeyEvent keyEvent) {
        return false;
    }

    @Override // defpackage.wg1
    public final String o0() {
        return this.M;
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.jq1
    public final void x() {
        K0(true);
    }

    @Override // defpackage.md2
    public final void y0() {
        H();
        if (!this.U) {
            O0();
        }
        if (this.H) {
            G0(this.J);
        }
    }

    @Override // defpackage.md2
    public final void z0() {
        M0();
        if (this.T == null) {
            this.D = null;
        }
        jr0 jr0Var = this.N;
        if (jr0Var != null) {
            H0(jr0Var);
        }
        this.N = null;
        xg1 xg1Var = this.L;
        if (xg1Var != null) {
            H0(xg1Var);
        }
        this.L = null;
    }

    public void J0(ph3 ph3Var) {
    }
}
