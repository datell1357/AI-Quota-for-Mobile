package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class zy implements n30 {
    public static final /* synthetic */ long A;
    public static final /* synthetic */ long B;
    public static final /* synthetic */ AtomicLongFieldUpdater o = AtomicLongFieldUpdater.newUpdater(zy.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater p = AtomicLongFieldUpdater.newUpdater(zy.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater q = AtomicLongFieldUpdater.newUpdater(zy.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater r = AtomicLongFieldUpdater.newUpdater(zy.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater s = AtomicReferenceFieldUpdater.newUpdater(zy.class, Object.class, "sendSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f448u;
    public static final /* synthetic */ AtomicReferenceFieldUpdater v;
    public static final /* synthetic */ AtomicReferenceFieldUpdater w;
    public static final /* synthetic */ long x;
    public static final /* synthetic */ long y;
    public static final /* synthetic */ long z;
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    public final int n;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    static {
        Unsafe unsafe = sa5.a;
        B = unsafe.objectFieldOffset(zy.class.getDeclaredField("sendSegment$volatile"));
        t = AtomicReferenceFieldUpdater.newUpdater(zy.class, Object.class, "receiveSegment$volatile");
        A = unsafe.objectFieldOffset(zy.class.getDeclaredField("receiveSegment$volatile"));
        f448u = AtomicReferenceFieldUpdater.newUpdater(zy.class, Object.class, "bufferEndSegment$volatile");
        y = unsafe.objectFieldOffset(zy.class.getDeclaredField("bufferEndSegment$volatile"));
        v = AtomicReferenceFieldUpdater.newUpdater(zy.class, Object.class, "_closeCause$volatile");
        x = unsafe.objectFieldOffset(zy.class.getDeclaredField("_closeCause$volatile"));
        w = AtomicReferenceFieldUpdater.newUpdater(zy.class, Object.class, "closeHandler$volatile");
        z = unsafe.objectFieldOffset(zy.class.getDeclaredField("closeHandler$volatile"));
    }

    public zy(int i) {
        this.n = i;
        if (i < 0) {
            k21.l(xw1.q("Invalid channel capacity: ", i, ", should be >=0"));
            throw null;
        }
        a40 a40Var = bz.a;
        this.bufferEnd$volatile = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag$volatile = q.get(this);
        a40 a40Var2 = new a40(0L, null, this, 3);
        this.sendSegment$volatile = a40Var2;
        this.receiveSegment$volatile = a40Var2;
        if (E()) {
            a40Var2 = bz.a;
            a40Var2.getClass();
        }
        this.bufferEndSegment$volatile = a40Var2;
        this._closeCause$volatile = bz.s;
    }

    public static Object H(zy zyVar, bv3 bv3Var) throws Throwable {
        a40 a40Var;
        Throwable th;
        a40 a40Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = t;
        atomicReferenceFieldUpdater.getClass();
        if (zyVar == null) {
            mk0.b();
            return null;
        }
        a40 a40Var3 = (a40) sa5.a.getObjectVolatile(zyVar, A);
        while (!zyVar.B()) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = p;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(zyVar);
            long j = bz.b;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (a40Var3.e != j2) {
                a40 a40VarQ = zyVar.q(j2, a40Var3);
                if (a40VarQ == null) {
                    continue;
                } else {
                    a40Var = a40VarQ;
                }
            } else {
                a40Var = a40Var3;
            }
            zy zyVar2 = zyVar;
            Object objP = zyVar2.P(a40Var, i, andIncrement, null);
            sg0 sg0Var = bz.m;
            if (objP == sg0Var) {
                k21.n("unexpected");
                return null;
            }
            sg0 sg0Var2 = bz.o;
            if (objP == sg0Var2) {
                if (andIncrement < zyVar2.v()) {
                    a40Var.a();
                }
                zyVar = zyVar2;
                a40Var3 = a40Var;
            } else {
                if (objP != bz.n) {
                    a40Var.a();
                    return objP;
                }
                o20 o20VarJ = kt4.J(dm0.A(bv3Var));
                try {
                    Object objP2 = zyVar2.P(a40Var, i, andIncrement, o20VarJ);
                    if (objP2 == sg0Var) {
                        o20VarJ.a(a40Var, i);
                    } else {
                        if (objP2 == sg0Var2) {
                            if (andIncrement < zyVar2.v()) {
                                a40Var.a();
                            }
                            a40 a40Var4 = (a40) atomicReferenceFieldUpdater.get(zyVar2);
                            while (true) {
                                if (zyVar2.B()) {
                                    o20VarJ.g(new f83(zyVar2.t()));
                                    break;
                                }
                                o20 o20Var = o20VarJ;
                                try {
                                    long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(zyVar2);
                                    long j3 = bz.b;
                                    long j4 = andIncrement2 / j3;
                                    int i2 = (int) (andIncrement2 % j3);
                                    if (a40Var4.e != j4) {
                                        try {
                                            a40 a40VarQ2 = zyVar2.q(j4, a40Var4);
                                            if (a40VarQ2 == null) {
                                                o20VarJ = o20Var;
                                            } else {
                                                a40Var2 = a40VarQ2;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            o20VarJ = o20Var;
                                            o20VarJ.E();
                                            throw th;
                                        }
                                    } else {
                                        a40Var2 = a40Var4;
                                    }
                                    zy zyVar3 = zyVar2;
                                    objP2 = zyVar3.P(a40Var2, i2, andIncrement2, o20Var);
                                    zyVar2 = zyVar3;
                                    a40 a40Var5 = a40Var2;
                                    o20VarJ = o20Var;
                                    if (objP2 == bz.m) {
                                        o20VarJ.a(a40Var5, i2);
                                        break;
                                    }
                                    if (objP2 == bz.o) {
                                        if (andIncrement2 < zyVar2.v()) {
                                            a40Var5.a();
                                        }
                                        a40Var4 = a40Var5;
                                    } else {
                                        if (objP2 == bz.n) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        a40Var5.a();
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    o20VarJ = o20Var;
                                    th = th;
                                    o20VarJ.E();
                                    throw th;
                                }
                            }
                        } else {
                            a40Var.a();
                        }
                        o20VarJ.h(objP2, null);
                    }
                    return o20VarJ.v();
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }
        Throwable thT = zyVar.t();
        int i3 = gr3.a;
        throw thT;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object I(defpackage.zy r13, defpackage.fh0 r14) {
        /*
            boolean r0 = r14 instanceof defpackage.xy
            if (r0 == 0) goto L14
            r0 = r14
            xy r0 = (defpackage.xy) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.s = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            xy r0 = new xy
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.q
            int r0 = r6.s
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L32
            if (r0 != r2) goto L2c
            defpackage.gg4.T(r14)
            z30 r14 = (defpackage.z30) r14
            java.lang.Object r13 = r14.a
            return r13
        L2c:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r13)
            return r1
        L32:
            defpackage.gg4.T(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = defpackage.zy.t
            r14.getClass()
            sun.misc.Unsafe r14 = defpackage.sa5.a
            long r3 = defpackage.zy.A
            java.lang.Object r14 = r14.getObjectVolatile(r13, r3)
            a40 r14 = (defpackage.a40) r14
        L44:
            boolean r0 = r13.B()
            if (r0 == 0) goto L54
            java.lang.Throwable r13 = r13.s()
            x30 r14 = new x30
            r14.<init>(r13)
            return r14
        L54:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.zy.p
            long r4 = r0.getAndIncrement(r13)
            int r0 = defpackage.bz.b
            long r7 = (long) r0
            long r9 = r4 / r7
            long r7 = r4 % r7
            int r3 = (int) r7
            long r7 = r14.e
            int r0 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r0 == 0) goto L71
            a40 r0 = r13.q(r9, r14)
            if (r0 != 0) goto L6f
            goto L44
        L6f:
            r8 = r0
            goto L72
        L71:
            r8 = r14
        L72:
            r12 = 0
            r7 = r13
            r9 = r3
            r10 = r4
            java.lang.Object r13 = r7.P(r8, r9, r10, r12)
            sg0 r14 = defpackage.bz.m
            if (r13 == r14) goto La6
            sg0 r14 = defpackage.bz.o
            if (r13 != r14) goto L90
            long r13 = r7.v()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L8d
            r8.a()
        L8d:
            r13 = r7
            r14 = r8
            goto L44
        L90:
            sg0 r14 = defpackage.bz.n
            if (r13 != r14) goto La2
            r6.s = r2
            r1 = r7
            r2 = r8
            java.lang.Object r13 = r1.J(r2, r3, r4, r6)
            ri0 r14 = defpackage.ri0.n
            if (r13 != r14) goto La1
            return r14
        La1:
            return r13
        La2:
            r8.a()
            return r13
        La6:
            java.lang.String r13 = "unexpected"
            defpackage.k21.n(r13)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.I(zy, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0158 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object L(defpackage.zy r26, java.lang.Object r27, defpackage.dh0 r28) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.L(zy, java.lang.Object, dh0):java.lang.Object");
    }

    public static boolean N(Object obj) {
        if (obj instanceof n20) {
            return bz.a((n20) obj, t64.a, null);
        }
        mk0.k(obj, "Unexpected waiter: ");
        return false;
    }

    public static final void b(zy zyVar, Object obj, o20 o20Var) {
        o20Var.g(new f83(zyVar.u()));
    }

    public static final int c(zy zyVar, a40 a40Var, int i, Object obj, long j, Object obj2, boolean z2) {
        a40Var.r(i, obj);
        if (z2) {
            return zyVar.Q(a40Var, i, obj, j, obj2, z2);
        }
        Object objP = a40Var.p(i);
        if (objP == null) {
            if (zyVar.d(j)) {
                if (a40Var.o(i, null, bz.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (a40Var.o(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (objP instanceof jc4) {
            a40Var.r(i, null);
            if (zyVar.M(objP, obj)) {
                a40Var.s(i, bz.i);
                return 0;
            }
            sg0 sg0Var = bz.k;
            if (a40Var.h.getAndSet((i * 2) + 1, sg0Var) == sg0Var) {
                return 5;
            }
            a40Var.q(i, true);
            return 5;
        }
        return zyVar.Q(a40Var, i, obj, j, obj2, z2);
    }

    public static void x(zy zyVar) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = r;
        if ((atomicLongFieldUpdater.addAndGet(zyVar, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(zyVar) & 4611686018427387904L) != 0) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a4, code lost:
    
        r10 = (defpackage.a40) r10.e();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A(boolean r10, long r11) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.A(boolean, long):boolean");
    }

    public final boolean B() {
        return A(true, o.get(this));
    }

    public final boolean C() {
        return A(false, o.get(this));
    }

    public boolean D() {
        return false;
    }

    public final boolean E() {
        long j = q.get(this);
        return j == 0 || j == Long.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
    
        if (r5.j() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
    
        r5.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F(long r7, defpackage.a40 r9) {
        /*
            r6 = this;
        L0:
            long r0 = r9.e
            int r0 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r0 >= 0) goto L11
            rc0 r0 = r9.c()
            a40 r0 = (defpackage.a40) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r9 = r0
            goto L0
        L11:
            r5 = r9
        L12:
            boolean r7 = r5.f()
            if (r7 == 0) goto L23
            rc0 r7 = r5.c()
            a40 r7 = (defpackage.a40) r7
            if (r7 != 0) goto L21
            goto L23
        L21:
            r5 = r7
            goto L12
        L23:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = defpackage.zy.f448u
            r7.getClass()
            sun.misc.Unsafe r7 = defpackage.sa5.a
            long r8 = defpackage.zy.y
            java.lang.Object r7 = r7.getObjectVolatile(r6, r8)
            r4 = r7
            rg3 r4 = (defpackage.rg3) r4
            long r0 = r4.e
            long r2 = r5.e
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 < 0) goto L3c
            goto L58
        L3c:
            boolean r7 = r5.n()
            if (r7 != 0) goto L44
            r9 = r5
            goto L11
        L44:
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r2 = defpackage.zy.y
            r1 = r6
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L59
            boolean r6 = r4.j()
            if (r6 == 0) goto L58
            r4.h()
        L58:
            return
        L59:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r8)
            if (r6 == r4) goto L6a
            boolean r6 = r5.j()
            if (r6 == 0) goto L68
            r5.h()
        L68:
            r6 = r1
            goto L23
        L6a:
            r6 = r1
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.F(long, a40):void");
    }

    public final Object G(dh0 dh0Var, Object obj) {
        o20 o20Var = new o20(1, dm0.A(dh0Var));
        o20Var.x();
        o20Var.g(new f83(u()));
        Object objV = o20Var.v();
        return objV == ri0.n ? objV : t64.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(defpackage.a40 r10, int r11, long r12, defpackage.fh0 r14) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.J(a40, int, long, fh0):java.lang.Object");
    }

    public final void K(jc4 jc4Var, boolean z2) {
        if (jc4Var instanceof n20) {
            ((dh0) jc4Var).g(new f83(z2 ? t() : u()));
            return;
        }
        if (jc4Var instanceof a33) {
            ((a33) jc4Var).n.g(new z30(new x30(s())));
            return;
        }
        if (!(jc4Var instanceof wy)) {
            mk0.k(jc4Var, "Unexpected waiter: ");
            return;
        }
        wy wyVar = (wy) jc4Var;
        o20 o20Var = wyVar.o;
        o20Var.getClass();
        wyVar.o = null;
        wyVar.n = bz.l;
        Throwable thS = wyVar.p.s();
        if (thS == null) {
            o20Var.g(Boolean.FALSE);
        } else {
            o20Var.g(new f83(thS));
        }
    }

    public final boolean M(Object obj, Object obj2) {
        if (obj instanceof a33) {
            return bz.a(((a33) obj).n, new z30(obj2), null);
        }
        if (!(obj instanceof wy)) {
            if (obj instanceof n20) {
                return bz.a((n20) obj, obj2, null);
            }
            mk0.k(obj, "Unexpected receiver type: ");
            return false;
        }
        wy wyVar = (wy) obj;
        o20 o20Var = wyVar.o;
        o20Var.getClass();
        wyVar.o = null;
        wyVar.n = obj2;
        return bz.a(o20Var, Boolean.TRUE, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ae, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object O(java.lang.Object r14) {
        /*
            r13 = this;
            sg0 r6 = defpackage.bz.d
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.zy.s
            r0.getClass()
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r1 = defpackage.zy.B
            java.lang.Object r0 = r0.getObjectVolatile(r13, r1)
            a40 r0 = (defpackage.a40) r0
        L11:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = defpackage.zy.o
            long r1 = r1.getAndIncrement(r13)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r4 = r1 & r3
            r3 = 0
            boolean r7 = r13.A(r3, r1)
            int r8 = defpackage.bz.b
            long r9 = (long) r8
            long r1 = r4 / r9
            long r11 = r4 % r9
            int r3 = (int) r11
            long r11 = r0.e
            int r11 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r11 == 0) goto L47
            a40 r1 = r13.r(r1, r0)
            if (r1 != 0) goto L43
            if (r7 == 0) goto L11
            java.lang.Throwable r13 = r13.u()
            x30 r14 = new x30
            r14.<init>(r13)
            return r14
        L43:
            r0 = r13
            r2 = r3
        L45:
            r3 = r14
            goto L4b
        L47:
            r1 = r0
            r2 = r3
            r0 = r13
            goto L45
        L4b:
            int r13 = c(r0, r1, r2, r3, r4, r6, r7)
            r14 = r0
            r0 = r1
            t64 r1 = defpackage.t64.a
            if (r13 == 0) goto Laf
            r11 = 1
            if (r13 == r11) goto Lae
            r11 = 2
            r12 = 0
            if (r13 == r11) goto L89
            r1 = 3
            if (r13 == r1) goto L83
            r1 = 4
            if (r13 == r1) goto L6c
            r1 = 5
            if (r13 == r1) goto L66
            goto L69
        L66:
            r0.a()
        L69:
            r13 = r14
            r14 = r3
            goto L11
        L6c:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r13 = defpackage.zy.p
            long r1 = r13.get(r14)
            int r13 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r13 >= 0) goto L79
            r0.a()
        L79:
            java.lang.Throwable r13 = r14.u()
            x30 r14 = new x30
            r14.<init>(r13)
            return r14
        L83:
            java.lang.String r13 = "unexpected"
            defpackage.k21.n(r13)
            return r12
        L89:
            if (r7 == 0) goto L98
            r0.m()
            java.lang.Throwable r13 = r14.u()
            x30 r14 = new x30
            r14.<init>(r13)
            return r14
        L98:
            boolean r13 = r6 instanceof defpackage.jc4
            if (r13 == 0) goto L9f
            r12 = r6
            jc4 r12 = (defpackage.jc4) r12
        L9f:
            if (r12 == 0) goto La6
            int r3 = r2 + r8
            r12.a(r0, r3)
        La6:
            long r3 = r0.e
            long r3 = r3 * r9
            long r5 = (long) r2
            long r3 = r3 + r5
            r14.i(r3)
        Lae:
            return r1
        Laf:
            r0.a()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.O(java.lang.Object):java.lang.Object");
    }

    public final Object P(a40 a40Var, int i, long j, Object obj) {
        Object objP = a40Var.p(i);
        AtomicReferenceArray atomicReferenceArray = a40Var.h;
        AtomicLongFieldUpdater atomicLongFieldUpdater = o;
        if (objP == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return bz.n;
                }
                if (a40Var.o(i, objP, obj)) {
                    l();
                    return bz.m;
                }
            }
        } else if (objP == bz.d && a40Var.o(i, objP, bz.i)) {
            l();
            Object obj2 = atomicReferenceArray.get(i * 2);
            a40Var.r(i, null);
            return obj2;
        }
        while (true) {
            Object objP2 = a40Var.p(i);
            if (objP2 == null || objP2 == bz.e) {
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (a40Var.o(i, objP2, bz.h)) {
                        l();
                        return bz.o;
                    }
                } else {
                    if (obj == null) {
                        return bz.n;
                    }
                    if (a40Var.o(i, objP2, obj)) {
                        l();
                        return bz.m;
                    }
                }
            } else if (objP2 != bz.d) {
                sg0 sg0Var = bz.j;
                if (objP2 == sg0Var) {
                    return bz.o;
                }
                if (objP2 == bz.h) {
                    return bz.o;
                }
                if (objP2 == bz.l) {
                    l();
                    return bz.o;
                }
                if (objP2 != bz.g && a40Var.o(i, objP2, bz.f)) {
                    boolean z2 = objP2 instanceof kc4;
                    if (z2) {
                        objP2 = ((kc4) objP2).a;
                    }
                    if (N(objP2)) {
                        a40Var.s(i, bz.i);
                        l();
                        Object obj3 = atomicReferenceArray.get(i * 2);
                        a40Var.r(i, null);
                        return obj3;
                    }
                    a40Var.s(i, sg0Var);
                    a40Var.m();
                    if (z2) {
                        l();
                    }
                    return bz.o;
                }
            } else if (a40Var.o(i, objP2, bz.i)) {
                l();
                Object obj4 = atomicReferenceArray.get(i * 2);
                a40Var.r(i, null);
                return obj4;
            }
        }
    }

    public final int Q(a40 a40Var, int i, Object obj, long j, Object obj2, boolean z2) {
        while (true) {
            Object objP = a40Var.p(i);
            if (objP == null) {
                if (!d(j) || z2) {
                    if (z2) {
                        if (a40Var.o(i, null, bz.j)) {
                            a40Var.m();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (a40Var.o(i, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (a40Var.o(i, null, bz.d)) {
                    break;
                }
            } else {
                if (objP != bz.e) {
                    sg0 sg0Var = bz.k;
                    if (objP == sg0Var) {
                        a40Var.r(i, null);
                        return 5;
                    }
                    if (objP == bz.h) {
                        a40Var.r(i, null);
                        return 5;
                    }
                    if (objP == bz.l) {
                        a40Var.r(i, null);
                        C();
                        return 4;
                    }
                    a40Var.r(i, null);
                    if (objP instanceof kc4) {
                        objP = ((kc4) objP).a;
                    }
                    if (M(objP, obj)) {
                        a40Var.s(i, bz.i);
                        return 0;
                    }
                    if (a40Var.h.getAndSet((i * 2) + 1, sg0Var) != sg0Var) {
                        a40Var.q(i, true);
                    }
                    return 5;
                }
                if (a40Var.o(i, objP, bz.d)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final void R(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        zy zyVar = this;
        if (zyVar.E()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = q;
            if (atomicLongFieldUpdater.get(zyVar) > j) {
                break;
            } else {
                zyVar = this;
            }
        }
        int i = bz.c;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = r;
            if (i2 < i) {
                long j2 = atomicLongFieldUpdater.get(zyVar);
                if (j2 == (4611686018427387903L & atomicLongFieldUpdater2.get(zyVar)) && j2 == atomicLongFieldUpdater.get(zyVar)) {
                    return;
                } else {
                    i2++;
                }
            } else {
                while (true) {
                    long j3 = atomicLongFieldUpdater2.get(zyVar);
                    if (atomicLongFieldUpdater2.compareAndSet(zyVar, j3, (j3 & 4611686018427387903L) + 4611686018427387904L)) {
                        break;
                    } else {
                        zyVar = this;
                    }
                }
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(zyVar);
                    long j5 = atomicLongFieldUpdater2.get(zyVar);
                    long j6 = j5 & 4611686018427387903L;
                    boolean z2 = (j5 & 4611686018427387904L) != 0;
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(zyVar)) {
                        break;
                    }
                    if (z2) {
                        zyVar = this;
                    } else {
                        zyVar = this;
                        atomicLongFieldUpdater2.compareAndSet(zyVar, j5, 4611686018427387904L + j6);
                    }
                }
                while (true) {
                    long j7 = atomicLongFieldUpdater2.get(zyVar);
                    if (atomicLongFieldUpdater2.compareAndSet(zyVar, j7, j7 & 4611686018427387903L)) {
                        return;
                    } else {
                        zyVar = this;
                    }
                }
            }
        }
    }

    @Override // defpackage.yh3
    public final boolean a(Throwable th) {
        return g(th, false);
    }

    public final boolean d(long j) {
        return j < q.get(this) || j < p.get(this) + ((long) this.n);
    }

    public final a40 e() {
        f448u.getClass();
        Unsafe unsafe = sa5.a;
        Object objectVolatile = unsafe.getObjectVolatile(this, y);
        s.getClass();
        a40 a40Var = (a40) unsafe.getObjectVolatile(this, B);
        if (a40Var.e > ((a40) objectVolatile).e) {
            objectVolatile = a40Var;
        }
        t.getClass();
        a40 a40Var2 = (a40) unsafe.getObjectVolatile(this, A);
        if (a40Var2.e > ((a40) objectVolatile).e) {
            objectVolatile = a40Var2;
        }
        rc0 rc0Var = (rc0) objectVolatile;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = rc0.a;
            Object objD = rc0Var.d();
            if (objD == qc0.a) {
                break;
            }
            rc0 rc0Var2 = (rc0) objD;
            if (rc0Var2 != null) {
                rc0Var = rc0Var2;
            } else if (rc0Var.g()) {
                break;
            }
        }
        return (a40) rc0Var;
    }

    @Override // defpackage.yh3
    public Object f(dh0 dh0Var, Object obj) {
        return L(this, obj, dh0Var);
    }

    public final boolean g(Throwable th, boolean z2) {
        zy zyVar;
        boolean z3;
        long j;
        long j2;
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = o;
        if (z2) {
            while (true) {
                long j4 = atomicLongFieldUpdater.get(this);
                if (((int) (j4 >> 60)) != 0) {
                    break;
                }
                a40 a40Var = bz.a;
                zyVar = this;
                if (atomicLongFieldUpdater.compareAndSet(zyVar, j4, (j4 & 1152921504606846975L) + 1152921504606846976L)) {
                    break;
                }
                this = zyVar;
            }
        } else {
            zyVar = this;
        }
        sg0 sg0Var = bz.s;
        while (true) {
            v.getClass();
            zy zyVar2 = zyVar;
            Unsafe unsafe = sa5.a;
            long j5 = x;
            Throwable th2 = th;
            boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(zyVar2, j5, sg0Var, th2);
            zyVar = zyVar2;
            if (zCompareAndSwapObject) {
                z3 = true;
                break;
            }
            if (unsafe.getObjectVolatile(zyVar, j5) != sg0Var) {
                z3 = false;
                break;
            }
            th = th2;
        }
        if (z2) {
            do {
                j3 = atomicLongFieldUpdater.get(zyVar);
            } while (!atomicLongFieldUpdater.compareAndSet(zyVar, j3, 3458764513820540928L + (j3 & 1152921504606846975L)));
        } else {
            do {
                j = atomicLongFieldUpdater.get(zyVar);
                int i = (int) (j >> 60);
                if (i == 0) {
                    j2 = (j & 1152921504606846975L) + 2305843009213693952L;
                } else {
                    if (i != 1) {
                        break;
                    }
                    j2 = (j & 1152921504606846975L) + 3458764513820540928L;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(zyVar, j, j2));
        }
        zyVar.C();
        if (z3) {
            zyVar.y();
        }
        return z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        r1 = (defpackage.a40) r1.e();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.a40 h(long r12) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.h(long):a40");
    }

    public final void i(long j) {
        t.getClass();
        a40 a40Var = (a40) sa5.a.getObjectVolatile(this, A);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = p;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(((long) this.n) + j2, q.get(this))) {
                return;
            }
            zy zyVar = this;
            if (atomicLongFieldUpdater.compareAndSet(zyVar, j2, 1 + j2)) {
                long j3 = bz.b;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (a40Var.e != j4) {
                    a40 a40VarQ = zyVar.q(j4, a40Var);
                    if (a40VarQ != null) {
                        a40Var = a40VarQ;
                    }
                }
                a40 a40Var2 = a40Var;
                if (zyVar.P(a40Var2, i, j2, null) != bz.o || j2 < zyVar.v()) {
                    a40Var2.a();
                }
                this = zyVar;
                a40Var = a40Var2;
            }
            this = zyVar;
        }
    }

    @Override // defpackage.n30
    public final wy iterator() {
        return new wy(this);
    }

    @Override // defpackage.n30
    public final void j(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        g(cancellationException, true);
    }

    @Override // defpackage.n30
    public final Object k(bv3 bv3Var) {
        return H(this, bv3Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f1, code lost:
    
        x(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f4, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l() {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.l():void");
    }

    @Override // defpackage.n30
    public final Object m() {
        a40 a40Var;
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        long j = atomicLongFieldUpdater.get(this);
        long j2 = o.get(this);
        if (A(true, j2)) {
            return new x30(s());
        }
        long j3 = j2 & 1152921504606846975L;
        y30 y30Var = z30.b;
        if (j >= j3) {
            return y30Var;
        }
        Object obj = bz.k;
        t.getClass();
        a40 a40Var2 = (a40) sa5.a.getObjectVolatile(this, A);
        while (!this.B()) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = bz.b;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (a40Var2.e != j5) {
                a40 a40VarQ = this.q(j5, a40Var2);
                if (a40VarQ == null) {
                    continue;
                } else {
                    a40Var = a40VarQ;
                }
            } else {
                a40Var = a40Var2;
            }
            zy zyVar = this;
            Object objP = zyVar.P(a40Var, i, andIncrement, obj);
            a40Var2 = a40Var;
            if (objP == bz.m) {
                jc4 jc4Var = obj instanceof jc4 ? (jc4) obj : null;
                if (jc4Var != null) {
                    jc4Var.a(a40Var2, i);
                }
                zyVar.R(andIncrement);
                a40Var2.m();
                return y30Var;
            }
            if (objP != bz.o) {
                if (objP != bz.n) {
                    a40Var2.a();
                    return objP;
                }
                k21.n("unexpected");
                return null;
            }
            if (andIncrement < zyVar.v()) {
                a40Var2.a();
            }
            this = zyVar;
        }
        return new x30(this.s());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c3 A[SYNTHETIC] */
    @Override // defpackage.yh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object n(java.lang.Object r16) {
        /*
            r15 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = defpackage.zy.o
            long r1 = r8.get(r15)
            r9 = 0
            boolean r3 = r15.A(r9, r1)
            r10 = 1
            r11 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            if (r3 == 0) goto L15
            r1 = r9
            goto L1b
        L15:
            long r1 = r1 & r11
            boolean r1 = r15.d(r1)
            r1 = r1 ^ r10
        L1b:
            y30 r13 = defpackage.z30.b
            if (r1 == 0) goto L20
            return r13
        L20:
            sg0 r6 = defpackage.bz.j
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.zy.s
            r1.getClass()
            sun.misc.Unsafe r1 = defpackage.sa5.a
            long r2 = defpackage.zy.B
            java.lang.Object r1 = r1.getObjectVolatile(r15, r2)
            a40 r1 = (defpackage.a40) r1
        L31:
            long r2 = r8.getAndIncrement(r15)
            long r4 = r2 & r11
            boolean r7 = r15.A(r9, r2)
            int r14 = defpackage.bz.b
            long r2 = (long) r14
            long r11 = r4 / r2
            long r2 = r4 % r2
            int r2 = (int) r2
            long r9 = r1.e
            int r3 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r3 == 0) goto L64
            a40 r3 = r15.r(r11, r1)
            if (r3 != 0) goto L63
            if (r7 == 0) goto L5b
            java.lang.Throwable r0 = r15.u()
            x30 r1 = new x30
            r1.<init>(r0)
            return r1
        L5b:
            r9 = 0
            r10 = 1
        L5d:
            r11 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            goto L31
        L63:
            r1 = r3
        L64:
            r0 = r15
            r3 = r16
            int r9 = c(r0, r1, r2, r3, r4, r6, r7)
            t64 r3 = defpackage.t64.a
            if (r9 == 0) goto Lc3
            r10 = 1
            if (r9 == r10) goto Lc2
            r3 = 2
            r11 = 0
            if (r9 == r3) goto La2
            r2 = 3
            if (r9 == r2) goto L9c
            r2 = 4
            if (r9 == r2) goto L85
            r2 = 5
            if (r9 == r2) goto L80
            goto L83
        L80:
            r1.a()
        L83:
            r9 = 0
            goto L5d
        L85:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = defpackage.zy.p
            long r2 = r2.get(r15)
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 >= 0) goto L92
            r1.a()
        L92:
            java.lang.Throwable r0 = r15.u()
            x30 r1 = new x30
            r1.<init>(r0)
            return r1
        L9c:
            java.lang.String r0 = "unexpected"
            defpackage.k21.n(r0)
            return r11
        La2:
            if (r7 == 0) goto Lb1
            r1.m()
            java.lang.Throwable r0 = r15.u()
            x30 r1 = new x30
            r1.<init>(r0)
            return r1
        Lb1:
            boolean r0 = r6 instanceof defpackage.jc4
            if (r0 == 0) goto Lb8
            r11 = r6
            jc4 r11 = (defpackage.jc4) r11
        Lb8:
            if (r11 == 0) goto Lbe
            int r2 = r2 + r14
            r11.a(r1, r2)
        Lbe:
            r1.m()
            return r13
        Lc2:
            return r3
        Lc3:
            r1.a()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.n(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.n30
    public final Object o(p80 p80Var) {
        return I(this, p80Var);
    }

    public final a40 p(long j, a40 a40Var, long j2) {
        Object objA;
        Unsafe unsafe;
        a40 a40Var2 = bz.a;
        az azVar = az.f21u;
        loop0: while (true) {
            objA = qc0.a(a40Var, j, azVar);
            if (!c75.J(objA)) {
                rg3 rg3VarF = c75.F(objA);
                while (true) {
                    f448u.getClass();
                    Unsafe unsafe2 = sa5.a;
                    long j3 = y;
                    rg3 rg3Var = (rg3) unsafe2.getObjectVolatile(this, j3);
                    if (rg3Var.e >= rg3VarF.e) {
                        break loop0;
                    }
                    if (!rg3VarF.n()) {
                        break;
                    }
                    do {
                        unsafe = sa5.a;
                        if (unsafe.compareAndSwapObject(this, y, rg3Var, rg3VarF)) {
                            if (rg3Var.j()) {
                                rg3Var.h();
                            }
                        }
                    } while (unsafe.getObjectVolatile(this, j3) == rg3Var);
                    if (rg3VarF.j()) {
                        rg3VarF.h();
                    }
                }
            } else {
                break;
            }
        }
        if (c75.J(objA)) {
            C();
            F(j, a40Var);
            x(this);
            return null;
        }
        a40 a40Var3 = (a40) c75.F(objA);
        long j4 = a40Var3.e;
        if (j4 <= j) {
            return a40Var3;
        }
        long j5 = j4 * ((long) bz.b);
        if (!q.compareAndSet(this, j2 + 1, j5)) {
            x(this);
            return null;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = r;
        if ((atomicLongFieldUpdater.addAndGet(this, j5 - j2) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d0, code lost:
    
        if (r8.j() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d2, code lost:
    
        r8.h();
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0107 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.a40 q(long r16, defpackage.a40 r18) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.q(long, a40):a40");
    }

    public final a40 r(long j, a40 a40Var) {
        Object objA;
        long j2;
        long j3;
        Unsafe unsafe;
        a40 a40Var2 = bz.a;
        az azVar = az.f21u;
        loop0: while (true) {
            objA = qc0.a(a40Var, j, azVar);
            if (!c75.J(objA)) {
                rg3 rg3VarF = c75.F(objA);
                while (true) {
                    s.getClass();
                    Unsafe unsafe2 = sa5.a;
                    long j4 = B;
                    rg3 rg3Var = (rg3) unsafe2.getObjectVolatile(this, j4);
                    if (rg3Var.e >= rg3VarF.e) {
                        break loop0;
                    }
                    if (!rg3VarF.n()) {
                        break;
                    }
                    do {
                        unsafe = sa5.a;
                        if (unsafe.compareAndSwapObject(this, B, rg3Var, rg3VarF)) {
                            if (rg3Var.j()) {
                                rg3Var.h();
                            }
                        }
                    } while (unsafe.getObjectVolatile(this, j4) == rg3Var);
                    if (rg3VarF.j()) {
                        rg3VarF.h();
                    }
                }
            } else {
                break;
            }
        }
        boolean zJ = c75.J(objA);
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        if (zJ) {
            C();
            if (a40Var.e * ((long) bz.b) < atomicLongFieldUpdater.get(this)) {
                a40Var.a();
                return null;
            }
        } else {
            a40 a40Var3 = (a40) c75.F(objA);
            long j5 = a40Var3.e;
            if (j5 <= j) {
                return a40Var3;
            }
            long j6 = j5 * ((long) bz.b);
            do {
                j2 = o.get(this);
                j3 = 1152921504606846975L & j2;
                if (j3 >= j6) {
                    break;
                }
            } while (!o.compareAndSet(this, j2, j3 + (((long) ((int) (j2 >> 60))) << 60)));
            if (j5 * ((long) bz.b) < atomicLongFieldUpdater.get(this)) {
                a40Var3.a();
            }
        }
        return null;
    }

    public final Throwable s() {
        v.getClass();
        return (Throwable) sa5.a.getObjectVolatile(this, x);
    }

    public final Throwable t() {
        Throwable thS = s();
        return thS == null ? new w60("Channel was closed") : thS;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ae, code lost:
    
        r15 = r8;
        r16 = null;
        r3 = (defpackage.a40) r3.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b8, code lost:
    
        if (r3 != null) goto L86;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zy.toString():java.lang.String");
    }

    public final Throwable u() {
        Throwable thS = s();
        return thS == null ? new x60("Channel was closed") : thS;
    }

    public final long v() {
        return o.get(this) & 1152921504606846975L;
    }

    public final boolean w() {
        while (true) {
            t.getClass();
            Unsafe unsafe = sa5.a;
            long j = A;
            a40 a40VarQ = (a40) unsafe.getObjectVolatile(this, j);
            AtomicLongFieldUpdater atomicLongFieldUpdater = p;
            long j2 = atomicLongFieldUpdater.get(this);
            if (v() <= j2) {
                return false;
            }
            long j3 = bz.b;
            long j4 = j2 / j3;
            if (a40VarQ.e == j4 || (a40VarQ = q(j4, a40VarQ)) != null) {
                a40VarQ.a();
                int i = (int) (j2 % j3);
                while (true) {
                    Object objP = a40VarQ.p(i);
                    if (objP == null || objP == bz.e) {
                        if (a40VarQ.o(i, objP, bz.h)) {
                            l();
                            break;
                        }
                    } else {
                        if (objP == bz.d) {
                            return true;
                        }
                        if (objP != bz.j && objP != bz.l && objP != bz.i && objP != bz.h) {
                            if (objP == bz.g) {
                                return true;
                            }
                            if (objP != bz.f && j2 == atomicLongFieldUpdater.get(this)) {
                                return true;
                            }
                        }
                    }
                }
                p.compareAndSet(this, j2, j2 + 1);
            } else if (((a40) unsafe.getObjectVolatile(this, j)).e < j4) {
                return false;
            }
        }
    }

    public final void y() {
        Object objectVolatile;
        zy zyVar;
        loop0: while (true) {
            w.getClass();
            Unsafe unsafe = sa5.a;
            long j = z;
            objectVolatile = unsafe.getObjectVolatile(this, j);
            sg0 sg0Var = objectVolatile == null ? bz.q : bz.r;
            while (true) {
                Unsafe unsafe2 = sa5.a;
                zyVar = this;
                if (unsafe2.compareAndSwapObject(zyVar, z, objectVolatile, sg0Var)) {
                    break loop0;
                } else if (unsafe2.getObjectVolatile(zyVar, j) != objectVolatile) {
                    break;
                } else {
                    this = zyVar;
                }
            }
            this = zyVar;
        }
        if (objectVolatile == null) {
            return;
        }
        n44.R(1, objectVolatile);
        ((pe1) objectVolatile).k(zyVar.s());
    }

    public final void z(ly lyVar) {
        Unsafe unsafe;
        while (true) {
            w.getClass();
            Unsafe unsafe2 = sa5.a;
            zy zyVar = this;
            if (unsafe2.compareAndSwapObject(zyVar, z, (Object) null, lyVar)) {
                return;
            }
            long j = z;
            if (unsafe2.getObjectVolatile(zyVar, j) != null) {
                while (true) {
                    Object objectVolatile = sa5.a.getObjectVolatile(zyVar, j);
                    sg0 sg0Var = bz.q;
                    if (objectVolatile != sg0Var) {
                        if (objectVolatile == bz.r) {
                            k21.n("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            mk0.k(objectVolatile, "Another handler is already registered: ");
                            return;
                        }
                    }
                    sg0 sg0Var2 = bz.r;
                    do {
                        zy zyVar2 = zyVar;
                        unsafe = sa5.a;
                        boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(zyVar2, z, sg0Var, sg0Var2);
                        zyVar = zyVar2;
                        if (zCompareAndSwapObject) {
                            lyVar.k(zyVar.s());
                            return;
                        }
                    } while (unsafe.getObjectVolatile(zyVar, j) == sg0Var);
                }
            } else {
                this = zyVar;
            }
        }
    }
}
