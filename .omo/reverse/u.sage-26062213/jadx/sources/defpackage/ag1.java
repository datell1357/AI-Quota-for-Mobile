package defpackage;

import android.os.Trace;
import com.google.api.client.http.HttpStatusCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ag1 {
    public int A;
    public int B;
    public boolean C;
    public final zf1 D;
    public final ArrayList E;
    public boolean F;
    public tn3 G;
    public un3 H;
    public xn3 I;
    public boolean J;
    public hu2 K;
    public k30 L;
    public final tb0 M;
    public vf1 N;
    public n71 O;
    public sm3 P;
    public final cc0 Q;
    public final hi0 R;
    public boolean S;
    public long T;
    public bg1 U;
    public final g64 a;
    public final zb0 b;
    public final un3 c;
    public final ng2 d;
    public final k30 e;
    public final k30 f;
    public final wu4 g;
    public final ec0 h;
    public dg1 j;
    public int k;
    public int l;
    public int m;
    public int[] o;
    public rf2 p;
    public boolean q;
    public boolean r;
    public tf2 v;
    public boolean w;
    public boolean y;
    public final ArrayList i = new ArrayList();
    public final ss1 n = new ss1();
    public final ArrayList s = new ArrayList();
    public final ss1 t = new ss1();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public hu2 f5u = hu2.q;
    public final ss1 x = new ss1();
    public int z = -1;

    public ag1(g64 g64Var, zb0 zb0Var, un3 un3Var, ng2 ng2Var, k30 k30Var, k30 k30Var2, wu4 wu4Var, ec0 ec0Var) {
        this.a = g64Var;
        this.b = zb0Var;
        this.c = un3Var;
        this.d = ng2Var;
        this.e = k30Var;
        this.f = k30Var2;
        this.g = wu4Var;
        this.h = ec0Var;
        this.C = zb0Var.f() || zb0Var.d();
        this.D = new zf1(0, this);
        this.E = new ArrayList();
        tn3 tn3VarE = un3Var.e();
        tn3VarE.c();
        this.G = tn3VarE;
        un3 un3Var2 = new un3();
        if (zb0Var.f()) {
            un3Var2.d();
        }
        if (zb0Var.d()) {
            un3Var2.x = new tf2();
        }
        this.H = un3Var2;
        xn3 xn3VarF = un3Var2.f();
        xn3VarF.e(true);
        this.I = xn3VarF;
        this.M = new tb0(this, k30Var);
        tn3 tn3VarE2 = this.H.e();
        try {
            vf1 vf1VarA = tn3VarE2.a(0);
            tn3VarE2.c();
            this.N = vf1VarA;
            this.O = new n71();
            this.Q = new cc0(this);
            hi0 hi0VarJ = zb0Var.j();
            hi0 hi0VarY = y();
            this.R = hi0VarJ.F(hi0VarY == null ? d01.n : hi0VarY);
        } catch (Throwable th) {
            tn3VarE2.c();
            throw th;
        }
    }

    public static final int M(ag1 ag1Var, int i, boolean z, int i2) throws Throwable {
        int i3;
        long[] jArr;
        int i4;
        long[] jArr2;
        int i5;
        int i6;
        tn3 tn3Var;
        tn3 tn3Var2 = ag1Var.G;
        int i7 = 0;
        if (tn3Var2.j(i)) {
            int i8 = tn3Var2.i(i);
            Object objP = tn3Var2.p(tn3Var2.b, i);
            if (i8 == 206 && nt1.g(objP, wb0.e)) {
                Object objH = tn3Var2.h(i, 0);
                eg1 eg1Var = objH instanceof eg1 ? (eg1) objH : null;
                m53 m53Var = eg1Var != null ? eg1Var.a : null;
                xf1 xf1Var = m53Var instanceof xf1 ? (xf1) m53Var : null;
                if (xf1Var != null) {
                    lg2 lg2Var = xf1Var.n.e;
                    Object[] objArr = lg2Var.b;
                    long[] jArr3 = lg2Var.a;
                    int length = jArr3.length - 2;
                    if (length >= 0) {
                        int i9 = 0;
                        while (true) {
                            long j = jArr3[i9];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i10 = 8;
                                int i11 = 8 - ((~(i9 - length)) >>> 31);
                                int i12 = i7;
                                while (i12 < i11) {
                                    if ((255 & j) < 128) {
                                        ag1 ag1Var2 = (ag1) objArr[(i9 << 3) + i12];
                                        un3 un3Var = ag1Var2.c;
                                        if (un3Var.o <= 0 || (un3Var.n[1] & 67108864) == 0) {
                                            jArr2 = jArr3;
                                            i5 = i7;
                                            i6 = i10;
                                        } else {
                                            ec0 ec0Var = ag1Var2.h;
                                            synchronized (ec0Var.q) {
                                                ec0Var.p();
                                                i6 = i10;
                                                kg2 kg2Var = ec0Var.A;
                                                ec0Var.A = ht4.k();
                                                try {
                                                    ec0Var.I.c0(kg2Var);
                                                } finally {
                                                }
                                            }
                                            k30 k30Var = new k30();
                                            ag1Var2.L = k30Var;
                                            tn3 tn3VarE = ag1Var2.c.e();
                                            try {
                                                ag1Var2.G = tn3VarE;
                                                tb0 tb0Var = ag1Var2.M;
                                                k30 k30Var2 = tb0Var.b;
                                                try {
                                                    tb0Var.b = k30Var;
                                                    ag1Var2.L(0);
                                                    tb0 tb0Var2 = ag1Var2.M;
                                                    tb0Var2.b();
                                                    jArr2 = jArr3;
                                                    try {
                                                        if (tb0Var2.c) {
                                                            tn3Var = tn3VarE;
                                                            try {
                                                                tb0Var2.b.a.S0(qq2.c);
                                                                if (tb0Var2.c) {
                                                                    tb0Var2.d(false);
                                                                    tb0Var2.d(false);
                                                                    tb0Var2.b.a.S0(aq2.c);
                                                                    i5 = 0;
                                                                    tb0Var2.c = false;
                                                                }
                                                                tb0Var.b = k30Var2;
                                                                tn3Var.c();
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                tb0Var.b = k30Var2;
                                                                throw th;
                                                            }
                                                        } else {
                                                            tn3Var = tn3VarE;
                                                        }
                                                        tb0Var.b = k30Var2;
                                                        tn3Var.c();
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        tn3Var.c();
                                                        throw th;
                                                    }
                                                    i5 = 0;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    tn3Var = tn3VarE;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                tn3Var = tn3VarE;
                                            }
                                        }
                                        ag1Var.b.r(ag1Var2.h);
                                    } else {
                                        jArr2 = jArr3;
                                        i5 = i7;
                                        i6 = i10;
                                    }
                                    j >>= i6;
                                    i12++;
                                    i10 = i6;
                                    i7 = i5;
                                    jArr3 = jArr2;
                                }
                                jArr = jArr3;
                                i4 = i7;
                                if (i11 != i10) {
                                    break;
                                }
                            } else {
                                jArr = jArr3;
                                i4 = i7;
                            }
                            if (i9 == length) {
                                break;
                            }
                            i9++;
                            i7 = i4;
                            jArr3 = jArr;
                        }
                    }
                }
                return tn3Var2.o(i);
            }
            i3 = 1;
            if (!tn3Var2.l(i)) {
                return tn3Var2.o(i);
            }
        } else {
            i3 = 1;
            if (tn3Var2.d(i)) {
                int i13 = tn3Var2.b[(i * 5) + 3] + i;
                int iM = 0;
                for (int i14 = i + 1; i14 < i13; i14 += tn3Var2.b[(i14 * 5) + 3]) {
                    boolean zL = tn3Var2.l(i14);
                    if (zL) {
                        ag1Var.M.c();
                        tb0 tb0Var3 = ag1Var.M;
                        Object objN = tn3Var2.n(i14);
                        tb0Var3.c();
                        tb0Var3.h.add(objN);
                    }
                    iM += M(ag1Var, i14, zL || z, zL ? 0 : i2 + iM);
                    if (zL) {
                        ag1Var.M.c();
                        ag1Var.M.a();
                    }
                }
                if (!tn3Var2.l(i)) {
                    return iM;
                }
            } else if (!tn3Var2.l(i)) {
                return tn3Var2.o(i);
            }
        }
        return i3;
    }

    public final void A(ArrayList arrayList) {
        ag1 ag1Var = this;
        k30 k30Var = ag1Var.f;
        tb0 tb0Var = ag1Var.M;
        k30 k30Var2 = tb0Var.b;
        try {
            tb0Var.b = k30Var;
            k30Var.a.S0(oq2.c);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                js2 js2Var = (js2) arrayList.get(i);
                oe2 oe2Var = (oe2) js2Var.n;
                oe2Var.getClass();
                vf1 vf1VarI = k30.i(null);
                un3 un3VarD = wn3.d(null);
                int iA = un3VarD.a(vf1VarI);
                os1 os1Var = new os1();
                tb0Var.b();
                br2 br2Var = tb0Var.b.a;
                br2Var.S0(xp2.c);
                is0.Y(br2Var, 0, os1Var, 1, vf1VarI);
                if (un3VarD == ag1Var.H) {
                    if (!ag1Var.I.w) {
                        wb0.a("Check failed");
                    }
                    ag1Var.u();
                }
                tn3 tn3VarE = un3VarD.e();
                try {
                    tn3VarE.r(iA);
                    tb0Var.f = iA;
                    k30 k30Var3 = new k30();
                    ag1Var.F(null, null, null, g01.n, new pp(ag1Var, k30Var3, tn3VarE, oe2Var));
                    k30 k30Var4 = tb0Var.b;
                    k30Var4.getClass();
                    if (!k30Var3.a.R0()) {
                        br2 br2Var2 = k30Var4.a;
                        br2Var2.S0(tp2.c);
                        is0.Y(br2Var2, 0, k30Var3, 1, os1Var);
                    }
                    tn3VarE.c();
                    tb0Var.b.a.S0(qq2.c);
                    i++;
                    ag1Var = this;
                } catch (Throwable th) {
                    tn3VarE.c();
                    throw th;
                }
            }
            tb0Var.b();
            tb0Var.b.a.S0(bq2.c);
            tb0Var.f = 0;
            tb0Var.b = k30Var2;
        } catch (Throwable th2) {
            tb0Var.b = k30Var2;
            throw th2;
        }
    }

    public final void B(hu2 hu2Var, Object obj) {
        U(126665345, null);
        C();
        h0(obj);
        long j = this.T;
        try {
            this.T = 126665345L;
            if (this.S) {
                xn3.z(this.I);
            }
            boolean z = (this.S || nt1.g(this.G.f(), hu2Var)) ? false : true;
            if (z) {
                I(hu2Var);
            }
            R(HttpStatusCodes.STATUS_CODE_ACCEPTED, 0, wb0.c, hu2Var);
            this.K = null;
            boolean z2 = this.w;
            this.w = z;
            tv4.B(this, new ka0(-59194059, true, new sp0(10, obj)));
            this.w = z2;
        } finally {
        }
    }

    public final Object C() {
        boolean z = this.S;
        bx3 bx3Var = rb0.a;
        if (!z) {
            Object objM = this.G.m();
            if (!this.y || (objM instanceof n83)) {
                return objM;
            }
        } else if (this.r) {
            wb0.a("A call to createNode(), emitNode() or useNode() expected");
            return bx3Var;
        }
        return bx3Var;
    }

    public final List D() {
        zb0 zb0Var = this.b;
        yb0 yb0VarH = zb0Var.h();
        ec0 ec0Var = yb0VarH != null ? (ec0) yb0VarH : null;
        if (ec0Var != null) {
            un3 un3Var = ec0Var.s;
            tn3 tn3VarE = wn3.d(un3Var).e();
            try {
                Integer numP = qn0.p(tn3VarE, zb0Var, 0, tn3VarE.c);
                if (numP != null) {
                    tn3VarE = wn3.d(un3Var).e();
                    try {
                        ArrayList arrayListK = qn0.K(tn3VarE, numP.intValue(), 0);
                        tn3VarE.c();
                        return o70.s0(arrayListK, ec0Var.I.D());
                    } finally {
                    }
                }
            } finally {
            }
        }
        return g01.n;
    }

    public final int E(int i) {
        int iQ = this.G.q(i) + 1;
        int i2 = 0;
        while (iQ < i) {
            if (!this.G.k(iQ)) {
                i2++;
            }
            iQ += this.G.b[(iQ * 5) + 3];
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0055 A[Catch: all -> 0x0024, TRY_LEAVE, TryCatch #0 {all -> 0x0024, blocks: (B:3:0x0005, B:6:0x0012, B:8:0x0020, B:12:0x0029, B:11:0x0026, B:15:0x0030, B:20:0x003c, B:22:0x0044, B:24:0x004a, B:25:0x004e, B:26:0x004f, B:28:0x0055, B:21:0x0040), top: B:33:0x0005, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object F(defpackage.ec0 r9, defpackage.ec0 r10, java.lang.Integer r11, java.util.List r12, defpackage.ne1 r13) {
        /*
            r8 = this;
            boolean r0 = r8.F
            int r1 = r8.k
            r2 = 1
            r8.F = r2     // Catch: java.lang.Throwable -> L24
            r2 = 0
            r8.k = r2     // Catch: java.lang.Throwable -> L24
            int r3 = r12.size()     // Catch: java.lang.Throwable -> L24
            r4 = r2
        Lf:
            r5 = 0
            if (r4 >= r3) goto L2c
            java.lang.Object r6 = r12.get(r4)     // Catch: java.lang.Throwable -> L24
            js2 r6 = (defpackage.js2) r6     // Catch: java.lang.Throwable -> L24
            java.lang.Object r7 = r6.n     // Catch: java.lang.Throwable -> L24
            c33 r7 = (defpackage.c33) r7     // Catch: java.lang.Throwable -> L24
            java.lang.Object r6 = r6.o     // Catch: java.lang.Throwable -> L24
            if (r6 == 0) goto L26
            r8.b0(r7, r6)     // Catch: java.lang.Throwable -> L24
            goto L29
        L24:
            r9 = move-exception
            goto L5e
        L26:
            r8.b0(r7, r5)     // Catch: java.lang.Throwable -> L24
        L29:
            int r4 = r4 + 1
            goto Lf
        L2c:
            if (r9 == 0) goto L55
            if (r11 == 0) goto L35
            int r11 = r11.intValue()     // Catch: java.lang.Throwable -> L24
            goto L36
        L35:
            r11 = -1
        L36:
            if (r10 == 0) goto L4f
            if (r10 == r9) goto L4f
            if (r11 < 0) goto L4f
            r9.E = r10     // Catch: java.lang.Throwable -> L24
            r9.F = r11     // Catch: java.lang.Throwable -> L24
            java.lang.Object r10 = r13.a()     // Catch: java.lang.Throwable -> L49
            r9.E = r5     // Catch: java.lang.Throwable -> L24
            r9.F = r2     // Catch: java.lang.Throwable -> L24
            goto L53
        L49:
            r10 = move-exception
            r9.E = r5     // Catch: java.lang.Throwable -> L24
            r9.F = r2     // Catch: java.lang.Throwable -> L24
            throw r10     // Catch: java.lang.Throwable -> L24
        L4f:
            java.lang.Object r10 = r13.a()     // Catch: java.lang.Throwable -> L24
        L53:
            if (r10 != 0) goto L59
        L55:
            java.lang.Object r10 = r13.a()     // Catch: java.lang.Throwable -> L24
        L59:
            r8.F = r0
            r8.k = r1
            return r10
        L5e:
            r8.F = r0
            r8.k = r1
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.F(ec0, ec0, java.lang.Integer, java.util.List, ne1):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x01b8, code lost:
    
        r17 = r1;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0139  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G() {
        /*
            Method dump skipped, instruction units count: 887
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.G():void");
    }

    public final void H() throws Throwable {
        int i;
        L(this.G.g);
        tb0 tb0Var = this.M;
        tb0Var.d(false);
        ss1 ss1Var = tb0Var.d;
        ag1 ag1Var = tb0Var.a;
        tn3 tn3Var = ag1Var.G;
        if (tn3Var.c > 0 && ss1Var.a(-2) != (i = tn3Var.i)) {
            if (!tb0Var.c && tb0Var.e) {
                tb0Var.d(false);
                tb0Var.b.a.S0(eq2.c);
                tb0Var.c = true;
            }
            if (i > 0) {
                vf1 vf1VarA = tn3Var.a(i);
                ss1Var.c(i);
                tb0Var.d(false);
                br2 br2Var = tb0Var.b.a;
                br2Var.S0(dq2.c);
                is0.X(br2Var, 0, vf1VarA);
                tb0Var.c = true;
            }
        }
        tb0Var.b.a.S0(mq2.c);
        int i2 = tb0Var.f;
        tn3 tn3Var2 = ag1Var.G;
        tb0Var.f = tn3Var2.b[(tn3Var2.g * 5) + 3] + i2;
    }

    public final void I(hu2 hu2Var) {
        tf2 tf2Var = this.v;
        if (tf2Var == null) {
            tf2Var = new tf2();
            this.v = tf2Var;
        }
        tf2Var.h(this.G.g, hu2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J(int r7, int r8, int r9) {
        /*
            r6 = this;
            tn3 r0 = r6.G
            if (r7 != r8) goto L5
            goto L1a
        L5:
            if (r7 == r9) goto L6b
            if (r8 != r9) goto Lb
            goto L6b
        Lb:
            int r1 = r0.q(r7)
            if (r1 != r8) goto L14
            r9 = r8
            goto L6b
        L14:
            int r1 = r0.q(r8)
            if (r1 != r7) goto L1c
        L1a:
            r9 = r7
            goto L6b
        L1c:
            int r1 = r0.q(r7)
            int r2 = r0.q(r8)
            if (r1 != r2) goto L2b
            int r9 = r0.q(r7)
            goto L6b
        L2b:
            r1 = 0
            r2 = r7
            r3 = r1
        L2e:
            if (r2 <= 0) goto L39
            if (r2 == r9) goto L39
            int r2 = r0.q(r2)
            int r3 = r3 + 1
            goto L2e
        L39:
            r2 = r8
            r4 = r1
        L3b:
            if (r2 <= 0) goto L46
            if (r2 == r9) goto L46
            int r2 = r0.q(r2)
            int r4 = r4 + 1
            goto L3b
        L46:
            int r9 = r3 - r4
            r5 = r7
            r2 = r1
        L4a:
            if (r2 >= r9) goto L53
            int r5 = r0.q(r5)
            int r2 = r2 + 1
            goto L4a
        L53:
            int r4 = r4 - r3
            r9 = r8
        L55:
            if (r1 >= r4) goto L5e
            int r9 = r0.q(r9)
            int r1 = r1 + 1
            goto L55
        L5e:
            r1 = r9
            r9 = r5
        L60:
            if (r9 == r1) goto L6b
            int r9 = r0.q(r9)
            int r1 = r0.q(r1)
            goto L60
        L6b:
            if (r7 <= 0) goto L7f
            if (r7 == r9) goto L7f
            boolean r1 = r0.l(r7)
            if (r1 == 0) goto L7a
            tb0 r1 = r6.M
            r1.a()
        L7a:
            int r7 = r0.q(r7)
            goto L6b
        L7f:
            r6.o(r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.J(int, int, int):void");
    }

    public final Object K() {
        boolean z = this.S;
        bx3 bx3Var = rb0.a;
        if (!z) {
            Object objM = this.G.m();
            if (!this.y || (objM instanceof n83)) {
                return objM instanceof eg1 ? ((eg1) objM).a : objM;
            }
        } else if (this.r) {
            wb0.a("A call to createNode(), emitNode() or useNode() expected");
            return bx3Var;
        }
        return bx3Var;
    }

    public final void L(int i) throws Throwable {
        boolean zL = this.G.l(i);
        tb0 tb0Var = this.M;
        if (zL) {
            tb0Var.c();
            Object objN = this.G.n(i);
            tb0Var.c();
            tb0Var.h.add(objN);
        }
        M(this, i, zL, 0);
        tb0Var.c();
        if (zL) {
            tb0Var.a();
        }
    }

    public final boolean N(int i, boolean z) {
        c33 c33VarW;
        if ((i & 1) == 0 && (this.S || this.y)) {
            sm3 sm3Var = this.P;
            if (sm3Var != null && (c33VarW = w()) != null && sm3Var.c()) {
                int i2 = c33VarW.b;
                if ((i2 & 512) != 0) {
                    return true;
                }
                int i3 = i2 | 1;
                c33VarW.b = i3;
                c33VarW.b = (this.y ? i2 | 129 : i3 & (-129)) | 256;
                br2 br2Var = this.M.b.a;
                br2Var.S0(lq2.c);
                is0.X(br2Var, 0, c33VarW);
                this.b.q(c33VarW);
                return false;
            }
        } else if (!z && z()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void O() {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.O():void");
    }

    public final void P() {
        tn3 tn3Var = this.G;
        int i = tn3Var.i;
        this.l = i >= 0 ? tn3Var.b[(i * 5) + 1] & 67108863 : 0;
        tn3Var.t();
    }

    public final void Q() {
        if (this.l != 0) {
            wb0.a("No nodes can be emitted before calling skipAndEndGroup");
        }
        if (this.S) {
            return;
        }
        c33 c33VarW = w();
        if (c33VarW != null) {
            int i = c33VarW.b;
            if ((i & 128) == 0) {
                c33VarW.b = i | 16;
            }
        }
        if (this.s.isEmpty()) {
            P();
        } else {
            G();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void R(int r27, int r28, java.lang.Object r29, java.lang.Object r30) {
        /*
            Method dump skipped, instruction units count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.R(int, int, java.lang.Object, java.lang.Object):void");
    }

    public final void S() {
        R(-127, 0, null, null);
    }

    public final void T(int i, pp2 pp2Var) {
        R(i, 0, pp2Var, null);
    }

    public final void U(int i, Object obj) {
        R(i, 0, obj, null);
    }

    public final void V(Object obj, boolean z) {
        if (z) {
            tn3 tn3Var = this.G;
            if (tn3Var.k <= 0) {
                if ((tn3Var.b[(tn3Var.g * 5) + 1] & 1073741824) == 0) {
                    ix2.a("Expected a node group");
                }
                tn3Var.u();
                return;
            }
            return;
        }
        if (obj != null && this.G.f() != obj) {
            tb0 tb0Var = this.M;
            tb0Var.getClass();
            tb0Var.d(false);
            br2 br2Var = tb0Var.b.a;
            br2Var.S0(vq2.c);
            is0.X(br2Var, 0, obj);
        }
        this.G.u();
    }

    public final void W(int i) {
        int i2;
        int i3;
        if (this.j != null) {
            R(i, 0, null, null);
            return;
        }
        if (this.r) {
            wb0.a("A call to createNode(), emitNode() or useNode() expected");
        }
        this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) i), 3) ^ ((long) this.m);
        this.m++;
        tn3 tn3Var = this.G;
        boolean z = this.S;
        bx3 bx3Var = rb0.a;
        if (z) {
            tn3Var.k++;
            this.I.Q(i, bx3Var, bx3Var, false);
            t(false, null);
            return;
        }
        if (tn3Var.g() == i && ((i3 = tn3Var.g) >= tn3Var.h || (tn3Var.b[(i3 * 5) + 1] & 536870912) == 0)) {
            tn3Var.u();
            t(false, null);
            return;
        }
        if (tn3Var.k <= 0 && (i2 = tn3Var.g) != tn3Var.h) {
            int i4 = this.k;
            H();
            this.M.e(i4, tn3Var.s());
            is0.j(this.s, i2, tn3Var.g);
        }
        tn3Var.k++;
        this.S = true;
        this.K = null;
        if (this.I.w) {
            xn3 xn3VarF = this.H.f();
            this.I = xn3VarF;
            xn3VarF.M();
            this.J = false;
            this.K = null;
        }
        xn3 xn3Var = this.I;
        xn3Var.d();
        int i5 = xn3Var.t;
        xn3Var.Q(i, bx3Var, bx3Var, false);
        this.N = xn3Var.b(i5);
        t(false, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ag1 X(int r7) {
        /*
            r6 = this;
            r6.W(r7)
            boolean r7 = r6.S
            wu4 r0 = r6.g
            java.util.ArrayList r1 = r6.E
            ec0 r2 = r6.h
            if (r7 == 0) goto L26
            c33 r7 = new c33
            r7.<init>(r2)
            r1.add(r7)
            r6.h0(r7)
            int r1 = r6.B
            r7.e = r1
            int r1 = r7.b
            r1 = r1 & (-17)
            r7.b = r1
            r0.j()
            return r6
        L26:
            tn3 r7 = r6.G
            int r7 = r7.i
            java.util.ArrayList r3 = r6.s
            int r7 = defpackage.is0.x(r7, r3)
            if (r7 < 0) goto L39
            java.lang.Object r7 = r3.remove(r7)
            zt1 r7 = (defpackage.zt1) r7
            goto L3a
        L39:
            r7 = 0
        L3a:
            tn3 r3 = r6.G
            java.lang.Object r3 = r3.m()
            bx3 r4 = defpackage.rb0.a
            boolean r4 = defpackage.nt1.g(r3, r4)
            if (r4 == 0) goto L51
            c33 r3 = new c33
            r3.<init>(r2)
            r6.h0(r3)
            goto L56
        L51:
            r3.getClass()
            c33 r3 = (defpackage.c33) r3
        L56:
            r2 = 0
            r4 = 1
            if (r7 != 0) goto L6e
            int r7 = r3.b
            r5 = r7 & 64
            if (r5 == 0) goto L62
            r5 = r4
            goto L63
        L62:
            r5 = r2
        L63:
            if (r5 == 0) goto L69
            r7 = r7 & (-65)
            r3.b = r7
        L69:
            if (r5 == 0) goto L6c
            goto L6e
        L6c:
            r7 = r2
            goto L6f
        L6e:
            r7 = r4
        L6f:
            int r5 = r3.b
            if (r7 == 0) goto L76
            r7 = r5 | 8
            goto L78
        L76:
            r7 = r5 & (-9)
        L78:
            r3.b = r7
            r1.add(r3)
            int r7 = r6.B
            r3.e = r7
            int r7 = r3.b
            r7 = r7 & (-17)
            r3.b = r7
            r0.j()
            int r7 = r3.b
            r0 = r7 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto Lba
            r7 = r7 & (-257(0xfffffffffffffeff, float:NaN))
            r7 = r7 | 512(0x200, float:7.175E-43)
            r3.b = r7
            tb0 r7 = r6.M
            k30 r7 = r7.b
            br2 r7 = r7.a
            rq2 r0 = defpackage.rq2.c
            r7.S0(r0)
            defpackage.is0.X(r7, r2, r3)
            boolean r7 = r6.y
            if (r7 != 0) goto Lba
            int r7 = r3.b
            r0 = r7 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto Lba
            r6.y = r4
            tn3 r0 = r6.G
            int r0 = r0.i
            r6.z = r0
            r7 = r7 | 1024(0x400, float:1.435E-42)
            r3.b = r7
        Lba:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.X(int):ag1");
    }

    public final void Y(Object obj) {
        if (!this.S && this.G.g() == 207 && !nt1.g(this.G.f(), obj) && this.z < 0) {
            this.z = this.G.g;
            this.y = true;
        }
        R(207, 0, null, obj);
    }

    public final void Z() {
        R(125, 2, null, null);
        this.r = true;
    }

    public final void a() {
        i();
        this.i.clear();
        this.n.b = 0;
        this.t.b = 0;
        this.x.b = 0;
        this.v = null;
        n71 n71Var = this.O;
        n71Var.h.P0();
        n71Var.g.P0();
        this.T = 0L;
        this.A = 0;
        this.r = false;
        this.S = false;
        this.y = false;
        this.F = false;
        this.z = -1;
        tn3 tn3Var = this.G;
        if (!tn3Var.f) {
            tn3Var.c();
        }
        if (this.I.w) {
            return;
        }
        u();
    }

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
    public final void a0() {
        this.m = 0;
        this.G = this.c.e();
        R(100, 0, null, null);
        zb0 zb0Var = this.b;
        zb0Var.t();
        hu2 hu2VarI = zb0Var.i();
        this.x.c(this.w ? 1 : 0);
        this.w = f(hu2VarI);
        this.K = null;
        if (!this.q) {
            this.q = zb0Var.e();
        }
        if (!this.C) {
            this.C = zb0Var.f();
        }
        if (this.C) {
            is3 is3Var = dc0.a;
            is3Var.getClass();
            hu2VarI = hu2VarI.b(is3Var, new js3(y()));
        }
        this.f5u = hu2VarI;
        Set set = (Set) bi4.F(hu2VarI, wr1.a);
        if (set != null) {
            set.add(v());
            zb0Var.o(set);
        }
        R(Long.hashCode(zb0Var.g()), 0, null, null);
    }

    public final void b(df1 df1Var, Object obj) {
        if (this.S) {
            br2 br2Var = this.O.g;
            br2Var.S0(wq2.c);
            is0.X(br2Var, 0, obj);
            df1Var.getClass();
            n44.R(2, df1Var);
            is0.X(br2Var, 1, df1Var);
            return;
        }
        tb0 tb0Var = this.M;
        tb0Var.b();
        br2 br2Var2 = tb0Var.b.a;
        br2Var2.S0(wq2.c);
        df1Var.getClass();
        n44.R(2, df1Var);
        is0.Y(br2Var2, 0, obj, 1, df1Var);
    }

    public final boolean b0(c33 c33Var, Object obj) {
        vf1 vf1Var = c33Var.c;
        if (vf1Var == null) {
            return false;
        }
        int iA = this.G.a.a(k30.i(vf1Var));
        if (!this.F || iA < this.G.g) {
            return false;
        }
        ArrayList arrayList = this.s;
        int iX = is0.x(iA, arrayList);
        if (iX < 0) {
            int i = -(iX + 1);
            if (!(obj instanceof os0)) {
                obj = null;
            }
            arrayList.add(i, new zt1(c33Var, iA, obj));
            return true;
        }
        zt1 zt1Var = (zt1) arrayList.get(iX);
        if (!(obj instanceof os0)) {
            zt1Var.c = null;
            return true;
        }
        Object obj2 = zt1Var.c;
        if (obj2 == null) {
            zt1Var.c = obj;
            return true;
        }
        if (obj2 instanceof lg2) {
            ((lg2) obj2).a(obj);
            return true;
        }
        lg2 lg2Var = ud3.a;
        lg2 lg2Var2 = new lg2(2);
        lg2Var2.k(obj2);
        lg2Var2.k(obj);
        zt1Var.c = lg2Var2;
        return true;
    }

    public final boolean c(float f) {
        Object objC = C();
        if ((objC instanceof Float) && f == ((Number) objC).floatValue()) {
            return false;
        }
        h0(Float.valueOf(f));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c0(defpackage.kg2 r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            java.util.ArrayList r0 = r0.s
            int r2 = defpackage.tv4.v(r0)
        La:
            r4 = -1
            if (r4 >= r2) goto L36
            java.lang.Object r4 = r0.get(r2)
            zt1 r4 = (defpackage.zt1) r4
            c33 r5 = r4.a
            vf1 r5 = r5.c
            if (r5 == 0) goto L1e
            vf1 r3 = defpackage.k30.i(r5)
            goto L1f
        L1e:
            r3 = 0
        L1f:
            if (r3 == 0) goto L30
            boolean r5 = r3.a()
            if (r5 == 0) goto L30
            int r5 = r4.b
            int r3 = r3.a
            if (r5 == r3) goto L33
            r4.b = r3
            goto L33
        L30:
            r0.remove(r2)
        L33:
            int r2 = r2 + (-1)
            goto La
        L36:
            java.lang.Object[] r2 = r1.b
            java.lang.Object[] r4 = r1.c
            long[] r1 = r1.a
            int r5 = r1.length
            int r5 = r5 + (-2)
            if (r5 < 0) goto L96
            r6 = 0
            r7 = r6
        L43:
            r8 = r1[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L91
            int r10 = r7 - r5
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r6
        L5d:
            if (r12 >= r10) goto L8f
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L8b
            int r13 = r7 << 3
            int r13 = r13 + r12
            r14 = r2[r13]
            r13 = r4[r13]
            r14.getClass()
            c33 r14 = (defpackage.c33) r14
            vf1 r15 = r14.c
            if (r15 == 0) goto L8b
            vf1 r15 = defpackage.k30.i(r15)
            int r15 = r15.a
            mj1 r3 = defpackage.mj1.f0
            if (r13 != r3) goto L83
            r13 = 0
        L83:
            zt1 r3 = new zt1
            r3.<init>(r14, r15, r13)
            r0.add(r3)
        L8b:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L5d
        L8f:
            if (r10 != r11) goto L96
        L91:
            if (r7 == r5) goto L96
            int r7 = r7 + 1
            goto L43
        L96:
            yb r1 = defpackage.is0.k
            defpackage.r70.c0(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.c0(kg2):void");
    }

    public final boolean d(int i) {
        Object objC = C();
        if ((objC instanceof Integer) && i == ((Number) objC).intValue()) {
            return false;
        }
        h0(Integer.valueOf(i));
        return true;
    }

    public final void d0(int i, int i2) {
        if (i0(i) != i2) {
            if (i < 0) {
                rf2 rf2Var = this.p;
                if (rf2Var == null) {
                    rf2Var = new rf2();
                    this.p = rf2Var;
                }
                rf2Var.f(i, i2);
                return;
            }
            int[] iArr = this.o;
            if (iArr == null) {
                int i3 = this.G.c;
                int[] iArr2 = new int[i3];
                Arrays.fill(iArr2, 0, i3, -1);
                this.o = iArr2;
                iArr = iArr2;
            }
            iArr[i] = i2;
        }
    }

    public final boolean e(long j) {
        Object objC = C();
        if ((objC instanceof Long) && j == ((Number) objC).longValue()) {
            return false;
        }
        h0(Long.valueOf(j));
        return true;
    }

    public final void e0(int i, int i2) {
        int iI0 = i0(i);
        if (iI0 != i2) {
            int i3 = i2 - iI0;
            ArrayList arrayList = this.i;
            int size = arrayList.size() - 1;
            while (i != -1) {
                int iI02 = i0(i) + i3;
                d0(i, iI02);
                int i4 = size;
                while (true) {
                    if (-1 < i4) {
                        dg1 dg1Var = (dg1) arrayList.get(i4);
                        if (dg1Var != null && dg1Var.a(i, iI02)) {
                            size = i4 - 1;
                            break;
                        }
                        i4--;
                    } else {
                        break;
                    }
                }
                tn3 tn3Var = this.G;
                if (i < 0) {
                    i = tn3Var.i;
                } else if (tn3Var.l(i)) {
                    return;
                } else {
                    i = this.G.q(i);
                }
            }
        }
    }

    public final boolean f(Object obj) {
        if (nt1.g(C(), obj)) {
            return false;
        }
        h0(obj);
        return true;
    }

    public final hu2 f0(hu2 hu2Var, hu2 hu2Var2) {
        hu2Var.getClass();
        gu2 gu2Var = new gu2(hu2Var);
        gu2Var.putAll(hu2Var2);
        hu2 hu2VarA = gu2Var.a();
        T(HttpStatusCodes.STATUS_CODE_NO_CONTENT, wb0.d);
        C();
        h0(hu2VarA);
        C();
        h0(hu2Var2);
        p(false);
        return hu2VarA;
    }

    public final boolean g(boolean z) {
        Object objC = C();
        if ((objC instanceof Boolean) && z == ((Boolean) objC).booleanValue()) {
            return false;
        }
        h0(Boolean.valueOf(z));
        return true;
    }

    public final void g0(Object obj) {
        if (obj instanceof m53) {
            eg1 eg1Var = new eg1((m53) obj, this.m - 1);
            if (this.S) {
                br2 br2Var = this.M.b.a;
                br2Var.S0(kq2.c);
                is0.X(br2Var, 0, eg1Var);
            }
            this.d.add(obj);
            obj = eg1Var;
        }
        h0(obj);
    }

    public final boolean h(Object obj) {
        if (C() == obj) {
            return false;
        }
        h0(obj);
        return true;
    }

    public final void h0(Object obj) {
        if (this.S) {
            xn3 xn3Var = this.I;
            if (xn3Var.n <= 0 || xn3Var.i == xn3Var.k) {
                xn3Var.F(obj);
                return;
            }
            tf2 tf2Var = xn3Var.s;
            if (tf2Var == null) {
                tf2Var = new tf2();
            }
            xn3Var.s = tf2Var;
            int i = xn3Var.v;
            Object objB = tf2Var.b(i);
            if (objB == null) {
                objB = new dg2();
                tf2Var.h(i, objB);
            }
            ((dg2) objB).a(obj);
            return;
        }
        tn3 tn3Var = this.G;
        boolean z = tn3Var.n;
        tb0 tb0Var = this.M;
        if (!z) {
            vf1 vf1VarA = tn3Var.a(tn3Var.i);
            br2 br2Var = tb0Var.b.a;
            br2Var.S0(sp2.c);
            is0.Y(br2Var, 0, vf1VarA, 1, obj);
            return;
        }
        int iB = (tn3Var.l - wn3.b(tn3Var.b, tn3Var.i)) - 1;
        if (tb0Var.a.G.i - tb0Var.f >= 0) {
            tb0Var.d(true);
            br2 br2Var2 = tb0Var.b.a;
            br2Var2.S0(fq2.g);
            is0.X(br2Var2, 0, obj);
            br2Var2.i[br2Var2.j - br2Var2.g[br2Var2.h - 1].a] = iB;
            return;
        }
        tn3 tn3Var2 = this.G;
        vf1 vf1VarA2 = tn3Var2.a(tn3Var2.i);
        br2 br2Var3 = tb0Var.b.a;
        br2Var3.S0(fq2.f);
        is0.Y(br2Var3, 0, obj, 1, vf1VarA2);
        br2Var3.i[br2Var3.j - br2Var3.g[br2Var3.h - 1].a] = iB;
    }

    public final void i() {
        this.j = null;
        this.k = 0;
        this.l = 0;
        this.T = 0L;
        this.r = false;
        tb0 tb0Var = this.M;
        tb0Var.c = false;
        tb0Var.d.b = 0;
        tb0Var.f = 0;
        tb0Var.e = true;
        tb0Var.g = 0;
        tb0Var.h.clear();
        tb0Var.i = -1;
        tb0Var.j = -1;
        tb0Var.k = -1;
        tb0Var.l = 0;
        this.E.clear();
        this.o = null;
        this.p = null;
    }

    public final int i0(int i) {
        int i2;
        if (i >= 0) {
            int[] iArr = this.o;
            return (iArr == null || (i2 = iArr[i]) < 0) ? this.G.o(i) : i2;
        }
        rf2 rf2Var = this.p;
        if (rf2Var != null && rf2Var.c(i) >= 0) {
            int iC = rf2Var.c(i);
            if (iC >= 0) {
                return rf2Var.c[iC];
            }
            q73.l(di0.q(i, "Cannot find value for key "));
        }
        return 0;
    }

    public final Object j(h03 h03Var) {
        return bi4.F(l(), h03Var);
    }

    public final void j0() {
        if (!this.r) {
            wb0.a("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.r = false;
        if (this.S) {
            wb0.a("useNode() called while inserting");
        }
        tn3 tn3Var = this.G;
        Object objN = tn3Var.n(tn3Var.i);
        tb0 tb0Var = this.M;
        tb0Var.c();
        tb0Var.h.add(objN);
        if (this.y && (objN instanceof ya0)) {
            tb0Var.b();
            tb0Var.b.a.S0(yq2.c);
        }
    }

    public final void k(ne1 ne1Var) {
        if (!this.r) {
            wb0.a("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.r = false;
        if (!this.S) {
            wb0.a("createNode() can only be called when inserting");
        }
        ss1 ss1Var = this.n;
        int i = ss1Var.a[ss1Var.b - 1];
        xn3 xn3Var = this.I;
        vf1 vf1VarB = xn3Var.b(xn3Var.v);
        this.l++;
        n71 n71Var = this.O;
        br2 br2Var = n71Var.g;
        br2Var.S0(fq2.d);
        is0.X(br2Var, 0, ne1Var);
        br2Var.i[br2Var.j - br2Var.g[br2Var.h - 1].a] = i;
        is0.X(br2Var, 1, vf1VarB);
        br2 br2Var2 = n71Var.h;
        br2Var2.S0(fq2.e);
        br2Var2.i[br2Var2.j - br2Var2.g[br2Var2.h - 1].a] = i;
        is0.X(br2Var2, 0, vf1VarB);
    }

    public final hu2 l() {
        hu2 hu2Var;
        hu2 hu2Var2 = this.K;
        if (hu2Var2 != null) {
            return hu2Var2;
        }
        int iQ = this.G.i;
        boolean z = this.S;
        pp2 pp2Var = wb0.c;
        if (z && this.J) {
            int iE = this.I.v;
            while (iE > 0) {
                if (this.I.s(iE) == 202 && nt1.g(this.I.t(iE), pp2Var)) {
                    Object objQ = this.I.q(iE);
                    objQ.getClass();
                    hu2 hu2Var3 = (hu2) objQ;
                    this.K = hu2Var3;
                    return hu2Var3;
                }
                xn3 xn3Var = this.I;
                iE = xn3Var.E(xn3Var.b, iE);
            }
        }
        if (this.G.c > 0) {
            while (iQ > 0) {
                if (this.G.i(iQ) == 202) {
                    tn3 tn3Var = this.G;
                    if (nt1.g(tn3Var.p(tn3Var.b, iQ), pp2Var)) {
                        tf2 tf2Var = this.v;
                        if (tf2Var == null || (hu2Var = (hu2) tf2Var.b(iQ)) == null) {
                            tn3 tn3Var2 = this.G;
                            Object objB = tn3Var2.b(tn3Var2.b, iQ);
                            objB.getClass();
                            hu2Var = (hu2) objB;
                        }
                        this.K = hu2Var;
                        return hu2Var;
                    }
                }
                iQ = this.G.q(iQ);
            }
        }
        hu2 hu2Var4 = this.f5u;
        this.K = hu2Var4;
        return hu2Var4;
    }

    public final hb0 m() {
        Collection collection;
        if (!this.b.k()) {
            return null;
        }
        a42 a42VarP = tv4.p();
        xn3 xn3Var = this.I;
        a42VarP.addAll(qn0.k(xn3Var, null, xn3Var.t, null));
        tn3 tn3Var = this.G;
        boolean z = tn3Var.f;
        int[] iArr = tn3Var.b;
        if (z || tn3Var.c == 0) {
            collection = g01.n;
        } else {
            y13 y13Var = new y13(tn3Var);
            int iQ = tn3Var.i;
            Object objValueOf = Integer.valueOf(tn3Var.l - wn3.b(iArr, iQ));
            while (iQ >= 0) {
                y13Var.n(tn3Var.i(iQ), tn3Var.k(iQ) ? tn3Var.p(iArr, iQ) : rb0.a, tn3Var.a.h(iQ), objValueOf);
                objValueOf = tn3Var.a(iQ);
                iQ = tn3Var.q(iQ);
            }
            collection = (ArrayList) y13Var.a;
        }
        a42VarP.addAll(collection);
        a42VarP.addAll(D());
        return new hb0(tv4.l(a42VarP), this.C);
    }

    public final void n(kg2 kg2Var, df1 df1Var) {
        ArrayList arrayList = this.s;
        if (this.F) {
            wb0.a("Reentrant composition is not supported");
        }
        this.g.j();
        Trace.beginSection("Compose:recompose");
        try {
            this.B = Long.hashCode(wo3.j().g());
            this.v = null;
            c0(kg2Var);
            this.k = 0;
            this.F = true;
            try {
                a0();
                Object objC = C();
                if (objC != df1Var && df1Var != null) {
                    h0(df1Var);
                }
                zf1 zf1Var = this.D;
                ug2 ug2VarL = ca.l();
                try {
                    ug2VarL.c(zf1Var);
                    pp2 pp2Var = wb0.a;
                    if (df1Var != null) {
                        T(HttpStatusCodes.STATUS_CODE_OK, pp2Var);
                        tv4.B(this, df1Var);
                        p(false);
                    } else if (!this.w || objC == null || objC.equals(rb0.a)) {
                        O();
                    } else {
                        T(HttpStatusCodes.STATUS_CODE_OK, pp2Var);
                        n44.R(2, objC);
                        tv4.B(this, (df1) objC);
                        p(false);
                    }
                    ug2VarL.l(ug2VarL.p - 1);
                    s();
                    this.F = false;
                    arrayList.clear();
                    if (!this.I.w) {
                        wb0.a("Check failed");
                    }
                    u();
                } catch (Throwable th) {
                    ug2VarL.l(ug2VarL.p - 1);
                    throw th;
                }
            } finally {
            }
        } finally {
            Trace.endSection();
        }
    }

    public final void o(int i, int i2) {
        if (i <= 0 || i == i2) {
            return;
        }
        o(this.G.q(i), i2);
        if (this.G.l(i)) {
            Object objN = this.G.n(i);
            tb0 tb0Var = this.M;
            tb0Var.c();
            tb0Var.h.add(objN);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:150:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x050c  */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v29, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(boolean r43) {
        /*
            Method dump skipped, instruction units count: 1604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.p(boolean):void");
    }

    public final void q() {
        p(false);
        c33 c33VarW = w();
        if (c33VarW != null) {
            int i = c33VarW.b;
            if ((i & 1) != 0) {
                c33VarW.b = i | 2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0085 A[EDGE_INSN: B:61:0x0085->B:29:0x0085 BREAK  A[LOOP:0: B:16:0x003f->B:28:0x0081], EDGE_INSN: B:62:0x0085->B:29:0x0085 BREAK  A[LOOP:0: B:16:0x003f->B:28:0x0081]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.c33 r() {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ag1.r():c33");
    }

    public final void s() {
        p(false);
        this.b.c();
        p(false);
        tb0 tb0Var = this.M;
        if (tb0Var.c) {
            tb0Var.d(false);
            tb0Var.d(false);
            tb0Var.b.a.S0(aq2.c);
            tb0Var.c = false;
        }
        tb0Var.b();
        if (tb0Var.d.b != 0) {
            wb0.a("Missed recording an endGroup()");
        }
        if (!this.i.isEmpty()) {
            wb0.a("Start/end imbalance");
        }
        i();
        this.G.c();
        this.w = this.x.b() != 0;
    }

    public final void t(boolean z, dg1 dg1Var) {
        this.i.add(this.j);
        this.j = dg1Var;
        int i = this.l;
        ss1 ss1Var = this.n;
        ss1Var.c(i);
        ss1Var.c(this.m);
        ss1Var.c(this.k);
        if (z) {
            this.k = 0;
        }
        this.l = 0;
        this.m = 0;
    }

    public final void u() {
        un3 un3Var = new un3();
        if (this.C) {
            un3Var.d();
        }
        if (this.b.d()) {
            un3Var.x = new tf2();
        }
        this.H = un3Var;
        xn3 xn3VarF = un3Var.f();
        xn3VarF.e(true);
        this.I = xn3VarF;
    }

    public final bc0 v() {
        bg1 bg1Var = this.U;
        if (bg1Var != null) {
            return bg1Var;
        }
        bg1 bg1Var2 = new bg1(this.h);
        this.U = bg1Var2;
        return bg1Var2;
    }

    public final c33 w() {
        if (this.A != 0) {
            return null;
        }
        ArrayList arrayList = this.E;
        if (arrayList.isEmpty()) {
            return null;
        }
        return (c33) arrayList.get(arrayList.size() - 1);
    }

    public final boolean x() {
        if (!z() || this.w) {
            return true;
        }
        c33 c33VarW = w();
        return (c33VarW == null || (c33VarW.b & 4) == 0) ? false : true;
    }

    public final cc0 y() {
        if (this.b.k()) {
            return this.Q;
        }
        return null;
    }

    public final boolean z() {
        c33 c33VarW;
        return (this.S || this.y || this.w || (c33VarW = w()) == null || (c33VarW.b & 8) != 0) ? false : true;
    }
}
