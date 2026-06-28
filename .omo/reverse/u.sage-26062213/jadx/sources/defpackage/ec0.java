package defpackage;

import android.os.Trace;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ec0 implements yb0 {
    public kg2 A;
    public boolean B;
    public sm3 C;
    public zt2 D;
    public ec0 E;
    public int F;
    public final wu4 G;
    public final l53 H;
    public final ag1 I;
    public int J;
    public final zb0 n;
    public final g64 o;
    public final AtomicReference p = new AtomicReference(null);
    public final Object q = new Object();
    public final ng2 r;
    public final un3 s;
    public final kg2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final lg2 f83u;
    public final lg2 v;
    public final kg2 w;
    public final k30 x;
    public final k30 y;
    public final kg2 z;

    public ec0(zb0 zb0Var, g64 g64Var) {
        this.n = zb0Var;
        this.o = g64Var;
        ng2 ng2Var = new ng2(new lg2());
        this.r = ng2Var;
        un3 un3Var = new un3();
        if (zb0Var.d()) {
            un3Var.x = new tf2();
        }
        if (zb0Var.f()) {
            un3Var.d();
        }
        this.s = un3Var;
        this.t = ht4.k();
        this.f83u = new lg2();
        this.v = new lg2();
        this.w = ht4.k();
        k30 k30Var = new k30();
        this.x = k30Var;
        k30 k30Var2 = new k30();
        this.y = k30Var2;
        this.z = ht4.k();
        this.A = ht4.k();
        wu4 wu4Var = new wu4(15, zb0Var);
        this.G = wu4Var;
        this.H = new l53();
        ag1 ag1Var = new ag1(g64Var, zb0Var, wn3.d(un3Var), ng2Var, k30Var, k30Var2, wu4Var, this);
        zb0Var.p(ag1Var);
        this.I = ag1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A(java.lang.Object r15) {
        /*
            r14 = this;
            java.lang.Object r0 = r14.q
            monitor-enter(r0)
            r14.u(r15)     // Catch: java.lang.Throwable -> L4f
            kg2 r1 = r14.w     // Catch: java.lang.Throwable -> L4f
            java.lang.Object r15 = r1.g(r15)     // Catch: java.lang.Throwable -> L4f
            if (r15 == 0) goto L61
            boolean r1 = r15 instanceof defpackage.lg2     // Catch: java.lang.Throwable -> L4f
            if (r1 == 0) goto L5c
            lg2 r15 = (defpackage.lg2) r15     // Catch: java.lang.Throwable -> L4f
            java.lang.Object[] r1 = r15.b     // Catch: java.lang.Throwable -> L4f
            long[] r15 = r15.a     // Catch: java.lang.Throwable -> L4f
            int r2 = r15.length     // Catch: java.lang.Throwable -> L4f
            int r2 = r2 + (-2)
            if (r2 < 0) goto L61
            r3 = 0
            r4 = r3
        L1f:
            r5 = r15[r4]     // Catch: java.lang.Throwable -> L4f
            long r7 = ~r5     // Catch: java.lang.Throwable -> L4f
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L57
            int r7 = r4 - r2
            int r7 = ~r7     // Catch: java.lang.Throwable -> L4f
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r3
        L39:
            if (r9 >= r7) goto L55
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L51
            int r10 = r4 << 3
            int r10 = r10 + r9
            r10 = r1[r10]     // Catch: java.lang.Throwable -> L4f
            os0 r10 = (defpackage.os0) r10     // Catch: java.lang.Throwable -> L4f
            r14.u(r10)     // Catch: java.lang.Throwable -> L4f
            goto L51
        L4f:
            r14 = move-exception
            goto L63
        L51:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L39
        L55:
            if (r7 != r8) goto L61
        L57:
            if (r4 == r2) goto L61
            int r4 = r4 + 1
            goto L1f
        L5c:
            os0 r15 = (defpackage.os0) r15     // Catch: java.lang.Throwable -> L4f
            r14.u(r15)     // Catch: java.lang.Throwable -> L4f
        L61:
            monitor-exit(r0)
            return
        L63:
            monitor-exit(r0)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ec0.A(java.lang.Object):void");
    }

    public final void B(df1 df1Var) {
        boolean zI = i();
        q();
        zb0 zb0Var = this.n;
        if (!zI) {
            zb0Var.a(this, df1Var);
            return;
        }
        ag1 ag1Var = this.I;
        ag1Var.z = 0;
        ag1Var.y = true;
        zb0Var.a(this, df1Var);
        if (ag1Var.F || ag1Var.z != 0) {
            ix2.a("Cannot disable reuse from root if it was caused by other groups");
        }
        ag1Var.z = -1;
        ag1Var.y = false;
    }

    public final void a() {
        this.p.set(null);
        this.x.a.P0();
        this.y.a.P0();
        ng2 ng2Var = this.r;
        if (ng2Var.n.g()) {
            return;
        }
        l53 l53Var = this.H;
        try {
            l53Var.g(ng2Var, this.I.y());
            l53Var.b();
        } finally {
            l53Var.a();
        }
    }

    public final void b(Object obj, boolean z) {
        Object objG = this.t.g(obj);
        if (objG == null) {
            return;
        }
        boolean z2 = objG instanceof lg2;
        au1 au1Var = au1.n;
        lg2 lg2Var = this.f83u;
        lg2 lg2Var2 = this.v;
        kg2 kg2Var = this.z;
        if (!z2) {
            c33 c33Var = (c33) objG;
            if (ht4.A(kg2Var, obj, c33Var) || c33Var.b(obj) == au1Var) {
                return;
            }
            if (c33Var.g == null || z) {
                lg2Var.a(c33Var);
                return;
            } else {
                lg2Var2.a(c33Var);
                return;
            }
        }
        lg2 lg2Var3 = (lg2) objG;
        Object[] objArr = lg2Var3.b;
        long[] jArr = lg2Var3.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        c33 c33Var2 = (c33) objArr[(i << 3) + i3];
                        if (!ht4.A(kg2Var, obj, c33Var2) && c33Var2.b(obj) != au1Var) {
                            if (c33Var2.g == null || z) {
                                lg2Var.a(c33Var2);
                            } else {
                                lg2Var2.a(c33Var2);
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0183 A[EDGE_INSN: B:73:0x0183->B:220:0x0122 BREAK  A[LOOP:13: B:63:0x0151->B:74:0x0185]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.util.Set r32, boolean r33) {
        /*
            Method dump skipped, instruction units count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ec0.c(java.util.Set, boolean):void");
    }

    public final void d() {
        synchronized (this.q) {
            try {
                e(this.x);
                o();
            } catch (Throwable th) {
                try {
                    if (!this.r.n.g()) {
                        l53 l53Var = this.H;
                        try {
                            l53Var.g(this.r, this.I.y());
                            l53Var.b();
                            l53Var.a();
                        } catch (Throwable th2) {
                            l53Var.a();
                            throw th2;
                        }
                    }
                    throw th;
                } catch (Throwable th3) {
                    a();
                    throw th3;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(defpackage.k30 r34) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ec0.e(k30):void");
    }

    public final void f() {
        synchronized (this.q) {
            try {
                k30 k30Var = this.y;
                k30Var.getClass();
                if (!k30Var.a.R0()) {
                    e(this.y);
                }
            } catch (Throwable th) {
                try {
                    if (!this.r.n.g()) {
                        l53 l53Var = this.H;
                        try {
                            l53Var.g(this.r, this.I.y());
                            l53Var.b();
                            l53Var.a();
                        } catch (Throwable th2) {
                            l53Var.a();
                            throw th2;
                        }
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public final void g() {
        l53 l53Var;
        synchronized (this.q) {
            try {
                this.I.v = null;
                if (!this.r.n.g()) {
                    l53Var = this.H;
                    try {
                        l53Var.g(this.r, this.I.y());
                        l53Var.b();
                        l53Var.a();
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    if (!this.r.n.g()) {
                        l53Var = this.H;
                        try {
                            l53Var.g(this.r, this.I.y());
                            l53Var.b();
                            l53Var.a();
                        } finally {
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    a();
                    throw th2;
                }
            }
        }
    }

    public final void h() {
        long j;
        char c;
        long j2;
        long j3;
        long[] jArr;
        long[] jArr2;
        int i;
        int i2;
        long j4;
        char c2;
        long j5;
        long j6;
        int i3;
        boolean zG;
        int i4;
        int i5;
        kg2 kg2Var = this.w;
        long[] jArr3 = kg2Var.a;
        int length = jArr3.length - 2;
        long j7 = 255;
        char c3 = 7;
        long j8 = -9187201950435737472L;
        int i6 = 8;
        if (length >= 0) {
            int i7 = 0;
            while (true) {
                long j9 = jArr3[i7];
                j3 = 128;
                if ((((~j9) << c3) & j9 & j8) != j8) {
                    int i8 = 8 - ((~(i7 - length)) >>> 31);
                    int i9 = 0;
                    while (i9 < i8) {
                        if ((j9 & j7) < 128) {
                            j4 = j7;
                            int i10 = (i7 << 3) + i9;
                            Object obj = kg2Var.b[i10];
                            Object obj2 = kg2Var.c[i10];
                            c2 = c3;
                            boolean z = obj2 instanceof lg2;
                            j5 = j8;
                            kg2 kg2Var2 = this.t;
                            if (z) {
                                lg2 lg2Var = (lg2) obj2;
                                Object[] objArr = lg2Var.b;
                                long[] jArr4 = lg2Var.a;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    int i11 = i6;
                                    j6 = j9;
                                    int i12 = 0;
                                    while (true) {
                                        long j10 = jArr4[i12];
                                        jArr2 = jArr3;
                                        i = length;
                                        if ((((~j10) << c2) & j10 & j5) != j5) {
                                            int i13 = 8 - ((~(i12 - length2)) >>> 31);
                                            int i14 = 0;
                                            while (i14 < i13) {
                                                if ((j10 & j4) < 128) {
                                                    i4 = i14;
                                                    int i15 = (i12 << 3) + i4;
                                                    i5 = i9;
                                                    if (!kg2Var2.c((os0) objArr[i15])) {
                                                        lg2Var.m(i15);
                                                    }
                                                } else {
                                                    i4 = i14;
                                                    i5 = i9;
                                                }
                                                j10 >>= i11;
                                                i14 = i4 + 1;
                                                i9 = i5;
                                            }
                                            i2 = i9;
                                            if (i13 != i11) {
                                                break;
                                            }
                                        } else {
                                            i2 = i9;
                                        }
                                        if (i12 == length2) {
                                            break;
                                        }
                                        i12++;
                                        jArr3 = jArr2;
                                        length = i;
                                        i9 = i2;
                                        i11 = 8;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    i = length;
                                    i2 = i9;
                                    j6 = j9;
                                }
                                zG = lg2Var.g();
                            } else {
                                jArr2 = jArr3;
                                i = length;
                                i2 = i9;
                                j6 = j9;
                                obj2.getClass();
                                zG = !kg2Var2.c((os0) obj2);
                            }
                            if (zG) {
                                kg2Var.l(i10);
                            }
                            i3 = 8;
                        } else {
                            jArr2 = jArr3;
                            i = length;
                            i2 = i9;
                            j4 = j7;
                            c2 = c3;
                            j5 = j8;
                            j6 = j9;
                            i3 = i6;
                        }
                        j9 = j6 >> i3;
                        i9 = i2 + 1;
                        i6 = i3;
                        c3 = c2;
                        j7 = j4;
                        j8 = j5;
                        jArr3 = jArr2;
                        length = i;
                    }
                    jArr = jArr3;
                    int i16 = length;
                    j = j7;
                    c = c3;
                    j2 = j8;
                    if (i8 != i6) {
                        break;
                    } else {
                        length = i16;
                    }
                } else {
                    jArr = jArr3;
                    j = j7;
                    c = c3;
                    j2 = j8;
                }
                if (i7 == length) {
                    break;
                }
                i7++;
                c3 = c;
                j7 = j;
                j8 = j2;
                jArr3 = jArr;
                i6 = 8;
            }
        } else {
            j = 255;
            c = 7;
            j2 = -9187201950435737472L;
            j3 = 128;
        }
        lg2 lg2Var2 = this.v;
        if (!lg2Var2.h()) {
            return;
        }
        Object[] objArr2 = lg2Var2.b;
        long[] jArr5 = lg2Var2.a;
        int length3 = jArr5.length - 2;
        if (length3 < 0) {
            return;
        }
        int i17 = 0;
        while (true) {
            long j11 = jArr5[i17];
            if ((((~j11) << c) & j11 & j2) != j2) {
                int i18 = 8 - ((~(i17 - length3)) >>> 31);
                for (int i19 = 0; i19 < i18; i19++) {
                    if ((j11 & j) < j3) {
                        int i20 = (i17 << 3) + i19;
                        if (((c33) objArr2[i20]).g == null) {
                            lg2Var2.m(i20);
                        }
                    }
                    j11 >>= 8;
                }
                if (i18 != 8) {
                    return;
                }
            }
            if (i17 == length3) {
                return;
            } else {
                i17++;
            }
        }
    }

    public final boolean i() {
        boolean z;
        synchronized (this.q) {
            z = true;
            if (this.J != 1) {
                z = false;
            }
            if (z) {
                this.J = 0;
            }
        }
        return z;
    }

    public final void j(df1 df1Var) {
        try {
            synchronized (this.q) {
                n();
                kg2 kg2Var = this.A;
                this.A = ht4.k();
                try {
                    ag1 ag1Var = this.I;
                    sm3 sm3Var = this.C;
                    if (!ag1Var.e.a.R0()) {
                        wb0.a("Expected applyChanges() to have been called");
                    }
                    ag1Var.P = sm3Var;
                    try {
                        ag1Var.n(kg2Var, df1Var);
                    } finally {
                        ag1Var.P = null;
                    }
                } catch (Throwable th) {
                    this.A = kg2Var;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!this.r.n.g()) {
                    l53 l53Var = this.H;
                    try {
                        l53Var.g(this.r, this.I.y());
                        l53Var.b();
                        l53Var.a();
                    } catch (Throwable th3) {
                        l53Var.a();
                        throw th3;
                    }
                }
                throw th2;
            } catch (Throwable th4) {
                a();
                throw th4;
            }
        }
    }

    public final zt2 k(boolean z, df1 df1Var) {
        if (this.D != null) {
            ix2.b("A pausable composition is in progress");
        }
        zt2 zt2Var = new zt2(this, this.n, this.I, this.r, df1Var, z, this.o, this.q);
        this.D = zt2Var;
        return zt2Var;
    }

    public final void l() {
        synchronized (this.q) {
            try {
                if (this.D != null) {
                    ix2.b("Deactivate is not supported while pausable composition is in progress");
                }
                boolean z = this.s.o == 0;
                if (!z || !this.r.n.g()) {
                    Trace.beginSection("Compose:deactivate");
                    try {
                        l53 l53Var = this.H;
                        try {
                            l53Var.g(this.r, this.I.y());
                            if (!z) {
                                un3 un3Var = this.s;
                                l53 l53Var2 = this.H;
                                xn3 xn3VarF = un3Var.f();
                                try {
                                    xn3VarF.n(xn3VarF.t, new l4(9, l53Var2, xn3VarF));
                                    xn3VarF.e(true);
                                    this.o.g();
                                    l53Var.c();
                                } catch (Throwable th) {
                                    xn3VarF.e(false);
                                    throw th;
                                }
                            }
                            l53Var.b();
                            l53Var.a();
                        } catch (Throwable th2) {
                            l53Var.a();
                            throw th2;
                        }
                    } finally {
                        Trace.endSection();
                    }
                }
                this.t.a();
                this.w.a();
                this.A.a();
                this.x.a.P0();
                this.y.a.P0();
                ag1 ag1Var = this.I;
                ag1Var.E.clear();
                ag1Var.s.clear();
                ag1Var.e.a.P0();
                ag1Var.v = null;
                this.J = 1;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void m() {
        synchronized (this.q) {
            try {
                if (this.I.F) {
                    ix2.b("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (this.J != 3) {
                    this.J = 3;
                    k30 k30Var = this.I.L;
                    if (k30Var != null) {
                        e(k30Var);
                    }
                    boolean z = this.s.o == 0;
                    if (!z || !this.r.n.g()) {
                        l53 l53Var = this.H;
                        try {
                            l53Var.g(this.r, this.I.y());
                            if (!z) {
                                un3 un3Var = this.s;
                                l53 l53Var2 = this.H;
                                xn3 xn3VarF = un3Var.f();
                                try {
                                    xn3VarF.n(xn3VarF.t, new sp0(4, l53Var2));
                                    xn3VarF.H();
                                    xn3VarF.e(true);
                                    this.o.a();
                                    this.o.g();
                                    l53Var.c();
                                } catch (Throwable th) {
                                    xn3VarF.e(false);
                                    throw th;
                                }
                            }
                            l53Var.b();
                            l53Var.a();
                        } catch (Throwable th2) {
                            l53Var.a();
                            throw th2;
                        }
                    }
                    ag1 ag1Var = this.I;
                    ag1Var.getClass();
                    Trace.beginSection("Compose:Composer.dispose");
                    try {
                        ag1Var.b.u(ag1Var);
                        ag1Var.E.clear();
                        ag1Var.s.clear();
                        ag1Var.e.a.P0();
                        ag1Var.v = null;
                        ag1Var.a.a();
                        Trace.endSection();
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        this.n.v(this);
    }

    public final void n() {
        Object obj = mt1.a;
        AtomicReference atomicReference = this.p;
        Object andSet = atomicReference.getAndSet(obj);
        if (andSet != null) {
            if (andSet.equals(obj)) {
                wb0.b("pending composition has not been applied");
                p61.q();
                return;
            }
            if (andSet instanceof Set) {
                c((Set) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                wb0.b("corrupt pendingModifications drain: " + atomicReference);
                p61.q();
                return;
            }
            for (Set set : (Set[]) andSet) {
                c(set, true);
            }
        }
    }

    public final void o() {
        AtomicReference atomicReference = this.p;
        Object andSet = atomicReference.getAndSet(null);
        if (nt1.g(andSet, mt1.a)) {
            return;
        }
        if (andSet instanceof Set) {
            c((Set) andSet, false);
            return;
        }
        if (andSet instanceof Object[]) {
            for (Set set : (Set[]) andSet) {
                c(set, false);
            }
            return;
        }
        if (andSet == null) {
            if (this.D == null) {
                wb0.a("calling recordModificationsOf and applyChanges concurrently is not supported");
            }
        } else {
            wb0.b("corrupt pendingModifications drain: " + atomicReference);
            p61.q();
        }
    }

    public final void p() {
        k01 k01Var = k01.n;
        AtomicReference atomicReference = this.p;
        Object andSet = atomicReference.getAndSet(k01Var);
        if (nt1.g(andSet, mt1.a) || andSet == null) {
            return;
        }
        if (andSet instanceof Set) {
            c((Set) andSet, false);
            return;
        }
        if (!(andSet instanceof Object[])) {
            wb0.b("corrupt pendingModifications drain: " + atomicReference);
            p61.q();
            return;
        }
        for (Set set : (Set[]) andSet) {
            c(set, false);
        }
    }

    public final void q() {
        int i = this.J;
        if (i != 0) {
            ix2.b(i != 1 ? i != 2 ? i != 3 ? "" : "The composition is disposed" : "A previous pausable composition for this composition was cancelled. This composition must be disposed." : "The composition should be activated before setting content.");
        }
        if (this.D == null) {
            return;
        }
        ix2.b("A pausable composition is in progress");
    }

    public final void r(ArrayList arrayList) {
        ng2 ng2Var = this.r;
        ag1 ag1Var = this.I;
        if (arrayList.size() > 0) {
            ((oe2) ((js2) arrayList.get(0)).n).getClass();
            wb0.a("Check failed");
        }
        try {
            ag1Var.getClass();
            Trace.beginSection("Compose:insertMovableContent");
            try {
                try {
                    ag1Var.A(arrayList);
                    ag1Var.i();
                } catch (Throwable th) {
                    ag1Var.a();
                    throw th;
                }
            } finally {
                Trace.endSection();
            }
        } catch (Throwable th2) {
            try {
                if (!ng2Var.n.g()) {
                    l53 l53Var = this.H;
                    try {
                        l53Var.g(ng2Var, ag1Var.y());
                        l53Var.b();
                        l53Var.a();
                    } catch (Throwable th3) {
                        l53Var.a();
                        throw th3;
                    }
                }
                throw th2;
            } catch (Throwable th4) {
                a();
                throw th4;
            }
        }
    }

    public final au1 s(c33 c33Var, Object obj) {
        ec0 ec0Var;
        int i = c33Var.b;
        if ((i & 2) != 0) {
            c33Var.b = i | 4;
        }
        vf1 vf1Var = c33Var.c;
        if (vf1Var == null || !vf1Var.a()) {
            return au1.n;
        }
        un3 un3Var = this.s;
        un3Var.getClass();
        vf1 vf1Var2 = c33Var.c;
        if (vf1Var2 != null && un3Var.g(k30.i(vf1Var2))) {
            if (c33Var.d == null) {
                return au1.n;
            }
            au1 au1VarT = t(c33Var, vf1Var, obj);
            if (au1VarT != au1.n) {
                this.G.j();
            }
            return au1VarT;
        }
        synchronized (this.q) {
            ec0Var = this.E;
        }
        if (ec0Var != null) {
            ag1 ag1Var = ec0Var.I;
            if (ag1Var.F && ag1Var.b0(c33Var, obj)) {
                return au1.q;
            }
        }
        return au1.n;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c9 A[Catch: all -> 0x0044, EDGE_INSN: B:79:0x00c9->B:64:0x00c9 BREAK  A[LOOP:0: B:48:0x008a->B:60:0x00c1], EDGE_INSN: B:80:0x00c9->B:64:0x00c9 BREAK  A[LOOP:0: B:48:0x008a->B:60:0x00c1], TRY_LEAVE, TryCatch #0 {all -> 0x0044, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0016, B:10:0x001d, B:14:0x0027, B:16:0x0031, B:13:0x0022, B:25:0x0049, B:27:0x004f, B:32:0x005a, B:36:0x0060, B:37:0x0068, B:40:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x007e, B:48:0x008a, B:50:0x009a, B:52:0x00a6, B:54:0x00af, B:57:0x00b9, B:60:0x00c1, B:61:0x00c4, B:64:0x00c9), top: B:77:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.au1 t(defpackage.c33 r20, defpackage.vf1 r21, java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ec0.t(c33, vf1, java.lang.Object):au1");
    }

    public final void u(Object obj) {
        Object objG = this.t.g(obj);
        if (objG == null) {
            return;
        }
        boolean z = objG instanceof lg2;
        au1 au1Var = au1.q;
        kg2 kg2Var = this.z;
        if (!z) {
            c33 c33Var = (c33) objG;
            if (c33Var.b(obj) == au1Var) {
                ht4.b(kg2Var, obj, c33Var);
                return;
            }
            return;
        }
        lg2 lg2Var = (lg2) objG;
        Object[] objArr = lg2Var.b;
        long[] jArr = lg2Var.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        c33 c33Var2 = (c33) objArr[(i << 3) + i3];
                        if (c33Var2.b(obj) == au1Var) {
                            ht4.b(kg2Var, obj, c33Var2);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final boolean v() {
        return this.J == 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean w(java.util.Set r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof defpackage.vd3
            kg2 r3 = r0.w
            kg2 r0 = r0.t
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L5e
            vd3 r1 = (defpackage.vd3) r1
            lg2 r1 = r1.n
            java.lang.Object[] r2 = r1.b
            long[] r1 = r1.a
            int r6 = r1.length
            int r6 = r6 + (-2)
            if (r6 < 0) goto L7b
            r7 = r4
        L1c:
            r8 = r1[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L59
            int r10 = r7 - r6
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r4
        L36:
            if (r12 >= r10) goto L57
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L53
            int r13 = r7 << 3
            int r13 = r13 + r12
            r13 = r2[r13]
            boolean r14 = r0.c(r13)
            if (r14 != 0) goto L52
            boolean r13 = r3.c(r13)
            if (r13 == 0) goto L53
        L52:
            return r5
        L53:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L36
        L57:
            if (r10 != r11) goto L7b
        L59:
            if (r7 == r6) goto L7b
            int r7 = r7 + 1
            goto L1c
        L5e:
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.Iterator r1 = r1.iterator()
        L64:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L7b
            java.lang.Object r2 = r1.next()
            boolean r6 = r0.c(r2)
            if (r6 != 0) goto L7a
            boolean r2 = r3.c(r2)
            if (r2 == 0) goto L64
        L7a:
            return r5
        L7b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ec0.w(java.util.Set):boolean");
    }

    public final boolean x() {
        synchronized (this.q) {
            zt2 zt2Var = this.D;
            boolean z = false;
            if (zt2Var != null && (zt2Var.h.get() != bu2.r || zt2Var.i != c75.w())) {
                AtomicReference atomicReference = zt2Var.h;
                bu2 bu2Var = bu2.s;
                bu2 bu2Var2 = bu2.q;
                while (!atomicReference.compareAndSet(bu2Var, bu2Var2) && atomicReference.get() == bu2Var) {
                }
                zt2Var.l.n.a(9);
                return false;
            }
            n();
            try {
                kg2 kg2Var = this.A;
                this.A = ht4.k();
                try {
                    ag1 ag1Var = this.I;
                    sm3 sm3Var = this.C;
                    br2 br2Var = ag1Var.e.a;
                    if (!br2Var.R0()) {
                        wb0.a("Expected applyChanges() to have been called");
                    }
                    if (kg2Var.e > 0 || !ag1Var.s.isEmpty()) {
                        ag1Var.P = sm3Var;
                        try {
                            ag1Var.n(kg2Var, null);
                            ag1Var.P = null;
                            z = !br2Var.R0();
                        } catch (Throwable th) {
                            ag1Var.P = null;
                            throw th;
                        }
                    }
                    if (!z) {
                        o();
                    }
                    return z;
                } catch (Throwable th2) {
                    this.A = kg2Var;
                    throw th2;
                }
            } catch (Throwable th3) {
                try {
                    if (!this.r.n.g()) {
                        l53 l53Var = this.H;
                        try {
                            l53Var.g(this.r, this.I.y());
                            l53Var.b();
                            l53Var.a();
                        } catch (Throwable th4) {
                            l53Var.a();
                            throw th4;
                        }
                    }
                    throw th3;
                } catch (Throwable th5) {
                    a();
                    throw th5;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void y(vd3 vd3Var) {
        Object obj;
        while (true) {
            Object obj2 = this.p.get();
            if (obj2 == null || obj2.equals(mt1.a)) {
                obj = vd3Var;
            } else if (obj2 instanceof Set) {
                obj = new Set[]{obj2, vd3Var};
            } else {
                if (!(obj2 instanceof Object[])) {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.p).toString());
                }
                Set[] setArr = (Set[]) obj2;
                int length = setArr.length;
                Object[] objArrCopyOf = Arrays.copyOf(setArr, length + 1);
                objArrCopyOf[length] = vd3Var;
                obj = objArrCopyOf;
            }
            AtomicReference atomicReference = this.p;
            while (!atomicReference.compareAndSet(obj2, obj)) {
                if (atomicReference.get() != obj2) {
                    break;
                }
            }
            if (obj2 == null) {
                synchronized (this.q) {
                    o();
                }
                return;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(java.lang.Object r21) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ec0.z(java.lang.Object):void");
    }
}
