package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class uh3 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(uh3.class, Object.class, "head$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater q;
    public static final /* synthetic */ AtomicReferenceFieldUpdater r;
    public static final /* synthetic */ AtomicLongFieldUpdater s;
    public static final /* synthetic */ AtomicIntegerFieldUpdater t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ long f360u;
    public static final /* synthetic */ long v;
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    public final int n;
    public final mn0 o;
    private volatile /* synthetic */ Object tail$volatile;

    static {
        Unsafe unsafe = sa5.a;
        f360u = unsafe.objectFieldOffset(uh3.class.getDeclaredField("head$volatile"));
        q = AtomicLongFieldUpdater.newUpdater(uh3.class, "deqIdx$volatile");
        r = AtomicReferenceFieldUpdater.newUpdater(uh3.class, Object.class, "tail$volatile");
        v = unsafe.objectFieldOffset(uh3.class.getDeclaredField("tail$volatile"));
        s = AtomicLongFieldUpdater.newUpdater(uh3.class, "enqIdx$volatile");
        t = AtomicIntegerFieldUpdater.newUpdater(uh3.class, "_availablePermits$volatile");
    }

    public uh3(int i) {
        this.n = i;
        if (i <= 0) {
            k21.l(di0.q(i, "Semaphore should have at least 1 permit, but had "));
            throw null;
        }
        if (i < 0) {
            k21.l(di0.q(i, "The number of acquired permits should be in 0.."));
            throw null;
        }
        xh3 xh3Var = new xh3(0L, null, 2);
        this.head$volatile = xh3Var;
        this.tail$volatile = xh3Var;
        this._availablePermits$volatile = i;
        this.o = new mn0(7, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r5.h(r3, r4.o);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.fh0 r5) {
        /*
            r4 = this;
        L0:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.uh3.t
            int r1 = r0.getAndDecrement(r4)
            int r2 = r4.n
            if (r1 > r2) goto L0
            t64 r3 = defpackage.t64.a
            if (r1 <= 0) goto Lf
            goto L3e
        Lf:
            dh0 r5 = defpackage.dm0.A(r5)
            o20 r5 = defpackage.kt4.J(r5)
            boolean r1 = r4.c(r5)     // Catch: java.lang.Throwable -> L3f
            if (r1 != 0) goto L31
        L1d:
            int r1 = r0.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3f
            if (r1 > r2) goto L1d
            if (r1 <= 0) goto L2b
            mn0 r4 = r4.o     // Catch: java.lang.Throwable -> L3f
            r5.h(r3, r4)     // Catch: java.lang.Throwable -> L3f
            goto L31
        L2b:
            boolean r1 = r4.c(r5)     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L1d
        L31:
            java.lang.Object r4 = r5.v()
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L3a
            goto L3b
        L3a:
            r4 = r3
        L3b:
            if (r4 != r5) goto L3e
            return r4
        L3e:
            return r3
        L3f:
            r4 = move-exception
            r5.E()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uh3.a(fh0):java.lang.Object");
    }

    public final boolean c(jc4 jc4Var) {
        Object objA;
        Unsafe unsafe;
        uh3 uh3Var = this;
        r.getClass();
        Unsafe unsafe2 = sa5.a;
        long j = v;
        xh3 xh3Var = (xh3) unsafe2.getObjectVolatile(uh3Var, j);
        long andIncrement = s.getAndIncrement(uh3Var);
        sh3 sh3Var = sh3.f318u;
        long j2 = andIncrement / ((long) wh3.f);
        loop0: while (true) {
            objA = qc0.a(xh3Var, j2, sh3Var);
            if (c75.J(objA)) {
                break;
            }
            rg3 rg3VarF = c75.F(objA);
            while (true) {
                rg3 rg3Var = (rg3) sa5.a.getObjectVolatile(uh3Var, j);
                if (rg3Var.e >= rg3VarF.e) {
                    uh3Var = this;
                    break loop0;
                }
                if (!rg3VarF.n()) {
                    break;
                }
                do {
                    unsafe = sa5.a;
                    uh3Var = this;
                    if (unsafe.compareAndSwapObject(uh3Var, v, rg3Var, rg3VarF)) {
                        if (rg3Var.j()) {
                            rg3Var.h();
                        }
                    }
                } while (unsafe.getObjectVolatile(uh3Var, j) == rg3Var);
                if (rg3VarF.j()) {
                    rg3VarF.h();
                }
            }
            uh3Var = this;
        }
        xh3 xh3Var2 = (xh3) c75.F(objA);
        AtomicReferenceArray atomicReferenceArray = xh3Var2.g;
        int i = (int) (andIncrement % ((long) wh3.f));
        while (!atomicReferenceArray.compareAndSet(i, null, jc4Var)) {
            if (atomicReferenceArray.get(i) != null) {
                sg0 sg0Var = wh3.b;
                sg0 sg0Var2 = wh3.c;
                while (!atomicReferenceArray.compareAndSet(i, sg0Var, sg0Var2)) {
                    if (atomicReferenceArray.get(i) != sg0Var) {
                        return false;
                    }
                }
                ((n20) jc4Var).h(t64.a, uh3Var.o);
                return true;
            }
        }
        jc4Var.a(xh3Var2, i);
        return true;
    }

    public final void d() {
        int i;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = t;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.n;
            if (andIncrement >= i2) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i2).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!e());
    }

    public final boolean e() {
        Object objA;
        Unsafe unsafe;
        p.getClass();
        Unsafe unsafe2 = sa5.a;
        long j = f360u;
        xh3 xh3Var = (xh3) unsafe2.getObjectVolatile(this, j);
        long andIncrement = q.getAndIncrement(this);
        long j2 = andIncrement / ((long) wh3.f);
        th3 th3Var = th3.f339u;
        loop0: while (true) {
            objA = qc0.a(xh3Var, j2, th3Var);
            if (c75.J(objA)) {
                break;
            }
            rg3 rg3VarF = c75.F(objA);
            while (true) {
                rg3 rg3Var = (rg3) sa5.a.getObjectVolatile(this, j);
                if (rg3Var.e >= rg3VarF.e) {
                    break loop0;
                }
                if (!rg3VarF.n()) {
                    break;
                }
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(this, f360u, rg3Var, rg3VarF)) {
                        if (rg3Var.j()) {
                            rg3Var.h();
                        }
                    }
                } while (unsafe.getObjectVolatile(this, j) == rg3Var);
                if (rg3VarF.j()) {
                    rg3VarF.h();
                }
            }
        }
        xh3 xh3Var2 = (xh3) c75.F(objA);
        AtomicReferenceArray atomicReferenceArray = xh3Var2.g;
        xh3Var2.a();
        boolean z = false;
        if (xh3Var2.e <= j2) {
            int i = (int) (andIncrement % ((long) wh3.f));
            Object andSet = atomicReferenceArray.getAndSet(i, wh3.b);
            if (andSet == null) {
                int i2 = wh3.a;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (atomicReferenceArray.get(i) == wh3.c) {
                        return true;
                    }
                }
                sg0 sg0Var = wh3.b;
                sg0 sg0Var2 = wh3.d;
                while (true) {
                    if (atomicReferenceArray.compareAndSet(i, sg0Var, sg0Var2)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceArray.get(i) != sg0Var) {
                        break;
                    }
                }
                return !z;
            }
            if (andSet != wh3.e) {
                if (!(andSet instanceof n20)) {
                    mk0.k(andSet, "unexpected: ");
                    return false;
                }
                n20 n20Var = (n20) andSet;
                sg0 sg0VarI = n20Var.i(t64.a, this.o);
                if (sg0VarI != null) {
                    n20Var.r(sg0VarI);
                    return true;
                }
            }
        }
        return false;
    }
}
