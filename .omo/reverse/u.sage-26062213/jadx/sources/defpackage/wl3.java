package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class wl3 extends d2 implements tl3, b81, a81, qf1 {
    public final int r;
    public final int s;
    public final vy t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object[] f400u;
    public long v;
    public long w;
    public int x;
    public int y;

    public wl3(int i, int i2, vy vyVar) {
        this.r = i;
        this.s = i2;
        this.t = vyVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(2:4|(1:6)(1:7))(0)|8|(1:53)|(2:10|(1:(1:(7:14|15|16|31|59|(5:32|33|(10:57|(2:42|43)|44|(1:61)|16|31|59|32|33|(0)(1:35))(0)|49|50)|46)(2:19|20))(5:21|22|59|(5:32|33|(0)(0)|49|50)|46))(4:24|55|25|26))(1:29)|51|30|31|59|(5:32|33|(0)(0)|49|50)|46) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b0, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b1, code lost:
    
        r4 = r8;
        r8 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0080 A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #1 {all -> 0x0036, blocks: (B:15:0x002f, B:32:0x0076, B:35:0x0080, B:39:0x0093, B:42:0x009a, B:43:0x009e, B:44:0x009f, B:22:0x0047), top: B:53:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v4, types: [b81] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r4v1, types: [d2] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4, types: [wl3] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [b81] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v2, types: [e2] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [yl3] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [yl3] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ad -> B:16:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void j(defpackage.wl3 r8, defpackage.b81 r9, defpackage.dh0 r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10 instanceof defpackage.vl3
            if (r0 == 0) goto L13
            r0 = r10
            vl3 r0 = (defpackage.vl3) r0
            int r1 = r0.w
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.w = r1
            goto L18
        L13:
            vl3 r0 = new vl3
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f381u
            int r1 = r0.w
            r2 = 3
            r3 = 2
            if (r1 == 0) goto L5a
            r8 = 1
            if (r1 == r8) goto L4b
            if (r1 == r3) goto L3f
            if (r1 != r2) goto L39
            tu1 r8 = r0.t
            yl3 r9 = r0.s
            b81 r1 = r0.r
            wl3 r4 = r0.q
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L36
        L32:
            r10 = r1
            r1 = r8
            r8 = r4
            goto L73
        L36:
            r8 = move-exception
            goto Lb3
        L39:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            return
        L3f:
            tu1 r8 = r0.t
            yl3 r9 = r0.s
            b81 r1 = r0.r
            wl3 r4 = r0.q
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L36
            goto L76
        L4b:
            yl3 r9 = r0.s
            b81 r8 = r0.r
            wl3 r1 = r0.q
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L57
            r10 = r8
            r8 = r1
            goto L66
        L57:
            r8 = move-exception
            r4 = r1
            goto Lb3
        L5a:
            defpackage.gg4.T(r10)
            e2 r10 = r8.c()
            yl3 r10 = (defpackage.yl3) r10
            r7 = r10
            r10 = r9
            r9 = r7
        L66:
            hi0 r1 = r0.o     // Catch: java.lang.Throwable -> Lb0
            r1.getClass()     // Catch: java.lang.Throwable -> Lb0
            mj1 r4 = defpackage.mj1.W     // Catch: java.lang.Throwable -> Lb0
            fi0 r1 = r1.K(r4)     // Catch: java.lang.Throwable -> Lb0
            tu1 r1 = (defpackage.tu1) r1     // Catch: java.lang.Throwable -> Lb0
        L73:
            r4 = r8
            r8 = r1
            r1 = r10
        L76:
            java.lang.Object r10 = r4.t(r9)     // Catch: java.lang.Throwable -> L36
            sg0 r5 = defpackage.xl3.a     // Catch: java.lang.Throwable -> L36
            ri0 r6 = defpackage.ri0.n
            if (r10 != r5) goto L91
            r0.q = r4     // Catch: java.lang.Throwable -> L36
            r0.r = r1     // Catch: java.lang.Throwable -> L36
            r0.s = r9     // Catch: java.lang.Throwable -> L36
            r0.t = r8     // Catch: java.lang.Throwable -> L36
            r0.w = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r10 = r4.h(r9, r0)     // Catch: java.lang.Throwable -> L36
            if (r10 != r6) goto L76
            goto Laf
        L91:
            if (r8 == 0) goto L9f
            boolean r5 = r8.b()     // Catch: java.lang.Throwable -> L36
            if (r5 == 0) goto L9a
            goto L9f
        L9a:
            java.util.concurrent.CancellationException r8 = r8.N()     // Catch: java.lang.Throwable -> L36
            throw r8     // Catch: java.lang.Throwable -> L36
        L9f:
            r0.q = r4     // Catch: java.lang.Throwable -> L36
            r0.r = r1     // Catch: java.lang.Throwable -> L36
            r0.s = r9     // Catch: java.lang.Throwable -> L36
            r0.t = r8     // Catch: java.lang.Throwable -> L36
            r0.w = r2     // Catch: java.lang.Throwable -> L36
            java.lang.Object r10 = r1.m(r10, r0)     // Catch: java.lang.Throwable -> L36
            if (r10 != r6) goto L32
        Laf:
            return
        Lb0:
            r10 = move-exception
            r4 = r8
            r8 = r10
        Lb3:
            r4.f(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wl3.j(wl3, b81, dh0):void");
    }

    @Override // defpackage.qf1
    public final a81 a(hi0 hi0Var, int i, vy vyVar) {
        return xl3.c(this, hi0Var, i, vyVar);
    }

    @Override // defpackage.a81
    public final Object b(b81 b81Var, dh0 dh0Var) throws Throwable {
        j(this, b81Var, dh0Var);
        return ri0.n;
    }

    @Override // defpackage.d2
    public final e2 d() {
        yl3 yl3Var = new yl3();
        yl3Var.a = -1L;
        return yl3Var;
    }

    @Override // defpackage.d2
    public final e2[] e() {
        return new yl3[2];
    }

    public final Object h(yl3 yl3Var, vl3 vl3Var) {
        o20 o20Var = new o20(1, dm0.A(vl3Var));
        o20Var.x();
        synchronized (this) {
            try {
                if (s(yl3Var) < 0) {
                    yl3Var.b = o20Var;
                } else {
                    o20Var.g(t64.a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object objV = o20Var.v();
        return objV == ri0.n ? objV : t64.a;
    }

    public final void i() {
        if (this.s != 0 || this.y > 1) {
            Object[] objArr = this.f400u;
            objArr.getClass();
            while (this.y > 0) {
                long jO = o();
                int i = this.x;
                int i2 = this.y;
                if (objArr[((int) ((jO + ((long) (i + i2))) - 1)) & (objArr.length - 1)] != xl3.a) {
                    return;
                }
                this.y = i2 - 1;
                xl3.b(objArr, o() + ((long) (this.x + this.y)), null);
            }
        }
    }

    public final void k() {
        e2[] e2VarArr;
        Object[] objArr = this.f400u;
        objArr.getClass();
        xl3.b(objArr, o(), null);
        this.x--;
        long jO = o() + 1;
        if (this.v < jO) {
            this.v = jO;
        }
        if (this.w < jO) {
            if (this.o != 0 && (e2VarArr = this.n) != null) {
                for (e2 e2Var : e2VarArr) {
                    if (e2Var != null) {
                        yl3 yl3Var = (yl3) e2Var;
                        long j = yl3Var.a;
                        if (j >= 0 && j < jO) {
                            yl3Var.a = jO;
                        }
                    }
                }
            }
            this.w = jO;
        }
    }

    public final void l(Object obj) {
        int i = this.x + this.y;
        Object[] objArrP = this.f400u;
        if (objArrP == null) {
            objArrP = p(null, 0, 2);
        } else if (i >= objArrP.length) {
            objArrP = p(objArrP, i, objArrP.length * 2);
        }
        xl3.b(objArrP, o() + ((long) i), obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    @Override // defpackage.b81
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(java.lang.Object r8, defpackage.dh0 r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r7.q(r8)
            if (r0 == 0) goto L9
            t64 r7 = defpackage.t64.a
            return r7
        L9:
            o20 r5 = new o20
            dh0 r9 = defpackage.dm0.A(r9)
            r6 = 1
            r5.<init>(r6, r9)
            r5.x()
            dh0[] r9 = defpackage.ca.a
            monitor-enter(r7)
            boolean r0 = r7.r(r8)     // Catch: java.lang.Throwable -> L8b
            if (r0 == 0) goto L30
            t64 r8 = defpackage.t64.a     // Catch: java.lang.Throwable -> L2b
            r5.g(r8)     // Catch: java.lang.Throwable -> L2b
            dh0[] r8 = r7.n(r9)     // Catch: java.lang.Throwable -> L2b
            r9 = 0
            r1 = r7
            goto L59
        L2b:
            r0 = move-exception
            r8 = r0
            r1 = r7
            goto L8e
        L30:
            ul3 r0 = new ul3     // Catch: java.lang.Throwable -> L8b
            long r1 = r7.o()     // Catch: java.lang.Throwable -> L8b
            int r3 = r7.x     // Catch: java.lang.Throwable -> L86
            int r4 = r7.y     // Catch: java.lang.Throwable -> L86
            int r3 = r3 + r4
            long r3 = (long) r3
            long r2 = r1 + r3
            r1 = r7
            r4 = r8
            r0.<init>(r1, r2, r4, r5)     // Catch: java.lang.Throwable -> L54
            r1.l(r0)     // Catch: java.lang.Throwable -> L54
            int r7 = r1.y     // Catch: java.lang.Throwable -> L54
            int r7 = r7 + r6
            r1.y = r7     // Catch: java.lang.Throwable -> L54
            int r7 = r1.s     // Catch: java.lang.Throwable -> L54
            if (r7 != 0) goto L57
            dh0[] r9 = r1.n(r9)     // Catch: java.lang.Throwable -> L54
            goto L57
        L54:
            r0 = move-exception
        L55:
            r8 = r0
            goto L8e
        L57:
            r8 = r9
            r9 = r0
        L59:
            monitor-exit(r1)
            if (r9 == 0) goto L65
            j20 r7 = new j20
            r0 = 2
            r7.<init>(r0, r9)
            r5.A(r7)
        L65:
            int r7 = r8.length
            r9 = 0
        L67:
            if (r9 >= r7) goto L75
            r0 = r8[r9]
            if (r0 == 0) goto L72
            t64 r1 = defpackage.t64.a
            r0.g(r1)
        L72:
            int r9 = r9 + 1
            goto L67
        L75:
            java.lang.Object r7 = r5.v()
            ri0 r8 = defpackage.ri0.n
            if (r7 != r8) goto L7e
            goto L80
        L7e:
            t64 r7 = defpackage.t64.a
        L80:
            if (r7 != r8) goto L83
            return r7
        L83:
            t64 r7 = defpackage.t64.a
            return r7
        L86:
            r0 = move-exception
            r1 = r7
            r7 = r0
            r8 = r7
            goto L8e
        L8b:
            r0 = move-exception
            r1 = r7
            goto L55
        L8e:
            monitor-exit(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wl3.m(java.lang.Object, dh0):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [dh0[]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final dh0[] n(dh0[] dh0VarArr) {
        e2[] e2VarArr;
        yl3 yl3Var;
        o20 o20Var;
        int length = dh0VarArr.length;
        if (this.o != 0 && (e2VarArr = this.n) != null) {
            int length2 = e2VarArr.length;
            int i = 0;
            dh0VarArr = dh0VarArr;
            while (i < length2) {
                e2 e2Var = e2VarArr[i];
                if (e2Var != null && (o20Var = (yl3Var = (yl3) e2Var).b) != null && s(yl3Var) >= 0) {
                    int length3 = dh0VarArr.length;
                    dh0VarArr = dh0VarArr;
                    if (length >= length3) {
                        dh0VarArr = Arrays.copyOf((Object[]) dh0VarArr, Math.max(2, dh0VarArr.length * 2));
                    }
                    ((dh0[]) dh0VarArr)[length] = o20Var;
                    yl3Var.b = null;
                    length++;
                }
                i++;
                dh0VarArr = dh0VarArr;
            }
        }
        return (dh0[]) dh0VarArr;
    }

    public final long o() {
        return Math.min(this.w, this.v);
    }

    public final Object[] p(Object[] objArr, int i, int i2) {
        if (i2 <= 0) {
            k21.n("Buffer size overflow");
            return null;
        }
        Object[] objArr2 = new Object[i2];
        this.f400u = objArr2;
        if (objArr != null) {
            long jO = o();
            for (int i3 = 0; i3 < i; i3++) {
                long j = ((long) i3) + jO;
                xl3.b(objArr2, j, objArr[((int) j) & (objArr.length - 1)]);
            }
        }
        return objArr2;
    }

    public final boolean q(Object obj) {
        int i;
        boolean z;
        dh0[] dh0VarArrN = ca.a;
        synchronized (this) {
            if (r(obj)) {
                dh0VarArrN = n(dh0VarArrN);
                z = true;
            } else {
                z = false;
            }
        }
        for (dh0 dh0Var : dh0VarArrN) {
            if (dh0Var != null) {
                dh0Var.g(t64.a);
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(java.lang.Object r13) {
        /*
            r12 = this;
            int r1 = r12.o
            int r2 = r12.r
            r9 = 1
            if (r1 != 0) goto L23
            if (r2 != 0) goto Lb
            goto L7e
        Lb:
            r12.l(r13)
            int r1 = r12.x
            int r1 = r1 + r9
            r12.x = r1
            if (r1 <= r2) goto L18
            r12.k()
        L18:
            long r1 = r12.o()
            int r3 = r12.x
            long r3 = (long) r3
            long r1 = r1 + r3
            r12.w = r1
            return r9
        L23:
            int r1 = r12.x
            int r3 = r12.s
            if (r1 < r3) goto L46
            long r4 = r12.w
            long r6 = r12.v
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 > 0) goto L46
            vy r1 = r12.t
            int r1 = r1.ordinal()
            if (r1 == 0) goto L44
            if (r1 == r9) goto L46
            r0 = 2
            if (r1 != r0) goto L3f
            goto L7e
        L3f:
            defpackage.p61.x()
            r0 = 0
            return r0
        L44:
            r0 = 0
            return r0
        L46:
            r12.l(r13)
            int r1 = r12.x
            int r1 = r1 + r9
            r12.x = r1
            if (r1 <= r3) goto L53
            r12.k()
        L53:
            long r3 = r12.o()
            int r1 = r12.x
            long r5 = (long) r1
            long r3 = r3 + r5
            long r5 = r12.v
            long r3 = r3 - r5
            int r1 = (int) r3
            if (r1 <= r2) goto L7e
            r1 = 1
            long r1 = r1 + r5
            long r3 = r12.w
            long r5 = r12.o()
            int r7 = r12.x
            long r7 = (long) r7
            long r5 = r5 + r7
            long r7 = r12.o()
            int r10 = r12.x
            long r10 = (long) r10
            long r7 = r7 + r10
            int r10 = r12.y
            long r10 = (long) r10
            long r7 = r7 + r10
            r0 = r12
            r0.u(r1, r3, r5, r7)
        L7e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wl3.r(java.lang.Object):boolean");
    }

    public final long s(yl3 yl3Var) {
        long j = yl3Var.a;
        if (j >= o() + ((long) this.x) && (this.s > 0 || j > o() || this.y == 0)) {
            return -1L;
        }
        return j;
    }

    public final Object t(yl3 yl3Var) {
        Object obj;
        dh0[] dh0VarArrV = ca.a;
        synchronized (this) {
            try {
                long jS = s(yl3Var);
                if (jS < 0) {
                    obj = xl3.a;
                } else {
                    long j = yl3Var.a;
                    Object[] objArr = this.f400u;
                    objArr.getClass();
                    Object obj2 = objArr[((int) jS) & (objArr.length - 1)];
                    if (obj2 instanceof ul3) {
                        obj2 = ((ul3) obj2).p;
                    }
                    yl3Var.a = jS + 1;
                    Object obj3 = obj2;
                    dh0VarArrV = v(j);
                    obj = obj3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (dh0 dh0Var : dh0VarArrV) {
            if (dh0Var != null) {
                dh0Var.g(t64.a);
            }
        }
        return obj;
    }

    public final void u(long j, long j2, long j3, long j4) {
        long jMin = Math.min(j2, j);
        for (long jO = o(); jO < jMin; jO++) {
            Object[] objArr = this.f400u;
            objArr.getClass();
            xl3.b(objArr, jO, null);
        }
        this.v = j;
        this.w = j2;
        this.x = (int) (j3 - jMin);
        this.y = (int) (j4 - j3);
    }

    public final dh0[] v(long j) {
        long j2;
        long j3;
        long j4;
        dh0[] dh0VarArr;
        dh0[] dh0VarArr2;
        e2[] e2VarArr;
        dh0[] dh0VarArr3 = ca.a;
        if (j <= this.w) {
            long jO = o();
            long j5 = ((long) this.x) + jO;
            int i = this.s;
            if (i == 0 && this.y > 0) {
                j5++;
            }
            int i2 = 0;
            if (this.o != 0 && (e2VarArr = this.n) != null) {
                for (e2 e2Var : e2VarArr) {
                    if (e2Var != null) {
                        long j6 = ((yl3) e2Var).a;
                        if (j6 >= 0 && j6 < j5) {
                            j5 = j6;
                        }
                    }
                }
            }
            if (j5 > this.w) {
                long jO2 = o() + ((long) this.x);
                int i3 = this.o;
                int iMin = this.y;
                if (i3 > 0) {
                    iMin = Math.min(iMin, i - ((int) (jO2 - j5)));
                }
                long j7 = ((long) this.y) + jO2;
                sg0 sg0Var = xl3.a;
                if (iMin > 0) {
                    j4 = 1;
                    Object[] objArr = this.f400u;
                    objArr.getClass();
                    j2 = jO;
                    dh0[] dh0VarArr4 = new dh0[iMin];
                    long j8 = jO2;
                    while (true) {
                        if (jO2 >= j7) {
                            dh0VarArr2 = dh0VarArr4;
                            j3 = j5;
                            break;
                        }
                        dh0VarArr2 = dh0VarArr4;
                        Object obj = objArr[(objArr.length - 1) & ((int) jO2)];
                        if (obj != sg0Var) {
                            obj.getClass();
                            ul3 ul3Var = (ul3) obj;
                            int i4 = i2 + 1;
                            j3 = j5;
                            dh0VarArr2[i2] = ul3Var.q;
                            xl3.b(objArr, jO2, sg0Var);
                            xl3.b(objArr, j8, ul3Var.p);
                            j8++;
                            if (i4 >= iMin) {
                                break;
                            }
                            i2 = i4;
                        } else {
                            j3 = j5;
                        }
                        jO2++;
                        dh0VarArr4 = dh0VarArr2;
                        j5 = j3;
                    }
                    jO2 = j8;
                    dh0VarArr = dh0VarArr2;
                } else {
                    j2 = jO;
                    j3 = j5;
                    j4 = 1;
                    dh0VarArr = dh0VarArr3;
                }
                int i5 = (int) (jO2 - j2);
                long j9 = this.o == 0 ? jO2 : j3;
                long jMax = Math.max(this.v, jO2 - ((long) Math.min(this.r, i5)));
                if (i == 0 && jMax < j7) {
                    Object[] objArr2 = this.f400u;
                    objArr2.getClass();
                    if (nt1.g(objArr2[((int) jMax) & (objArr2.length - 1)], sg0Var)) {
                        jO2 += j4;
                        jMax += j4;
                    }
                }
                u(jMax, j9, jO2, j7);
                i();
                return dh0VarArr.length == 0 ? dh0VarArr : n(dh0VarArr);
            }
        }
        return dh0VarArr3;
    }
}
