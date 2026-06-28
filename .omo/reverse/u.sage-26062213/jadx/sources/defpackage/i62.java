package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.ReferenceQueue;
import java.util.AbstractQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i62 extends ReentrantLock {
    public final m00 A;
    public final v62 n;
    public volatile int o;
    public long p;
    public int q;
    public int r;
    public volatile AtomicReferenceArray s;
    public final long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ReferenceQueue f132u;
    public final ReferenceQueue v;
    public final AbstractQueue w;
    public final AtomicInteger x = new AtomicInteger();
    public final AbstractQueue y;
    public final AbstractQueue z;

    public i62(v62 v62Var, int i, long j, m00 m00Var) {
        this.n = v62Var;
        this.t = j;
        this.A = m00Var;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i);
        int length = (atomicReferenceArray.length() * 3) / 4;
        this.r = length;
        if (v62Var.w == 1 && length == j) {
            this.r = length + 1;
        }
        this.s = atomicReferenceArray;
        this.f132u = v62Var.t != 1 ? new ReferenceQueue() : null;
        this.v = v62Var.f369u != 1 ? new ReferenceQueue() : null;
        this.w = v62Var.a() ? new ConcurrentLinkedQueue() : v62.G;
        this.y = v62Var.b() ? new b62(1) : v62.G;
        this.z = v62Var.a() ? new b62(0) : v62.G;
    }

    public final x33 a(x33 x33Var, x33 x33Var2) {
        Object key = x33Var.getKey();
        if (key == null) {
            return null;
        }
        o62 o62VarD = x33Var.d();
        Object obj = o62VarD.get();
        if (obj == null && o62VarD.b()) {
            return null;
        }
        x33 x33VarA = di0.a(this.n.A, this, key, x33Var.n(), x33Var2);
        x33VarA.c(o62VarD.d(this.v, obj, x33VarA));
        return x33VarA;
    }

    public final void b() {
        while (true) {
            x33 x33Var = (x33) this.w.poll();
            if (x33Var == null) {
                return;
            }
            AbstractQueue abstractQueue = this.z;
            if (abstractQueue.contains(x33Var)) {
                abstractQueue.add(x33Var);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003c, code lost:
    
        r2.q++;
        r3 = r2.s(r4, r4, r4.getKey(), r4.d().get(), r4.d(), 3);
        r4 = r2.o - 1;
        r11.set(r12, r3);
        r2.o = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f3, code lost:
    
        r2.u();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i62.c():void");
    }

    public final void d(int i, int i2, Object obj, Object obj2) {
        this.p -= (long) i;
        boolean z = false;
        if (i2 != 1 && i2 != 2) {
            z = true;
        }
        if (z) {
            this.A.getClass();
        }
        v62 v62Var = this.n;
        if (v62Var.y != v62.G) {
            new z53(obj, obj2);
            v62Var.y.getClass();
        }
    }

    public final void e(x33 x33Var) {
        if (this.n.a()) {
            b();
            long jG = x33Var.d().g();
            long j = this.t;
            if (jG > j && !q(x33Var, x33Var.n(), 5)) {
                throw new AssertionError();
            }
            while (this.p > j) {
                for (x33 x33Var2 : this.z) {
                    if (x33Var2.d().g() > 0) {
                        if (!q(x33Var2, x33Var2.n(), 5)) {
                            throw new AssertionError();
                        }
                    }
                }
                throw new AssertionError();
            }
        }
    }

    public final void f() {
        AtomicReferenceArray atomicReferenceArray = this.s;
        int length = atomicReferenceArray.length();
        if (length >= 1073741824) {
            return;
        }
        int i = this.o;
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
        this.r = (atomicReferenceArray2.length() * 3) / 4;
        int length2 = atomicReferenceArray2.length() - 1;
        for (int i2 = 0; i2 < length; i2++) {
            x33 x33VarM = (x33) atomicReferenceArray.get(i2);
            if (x33VarM != null) {
                x33 x33VarM2 = x33VarM.m();
                int iN = x33VarM.n() & length2;
                if (x33VarM2 == null) {
                    atomicReferenceArray2.set(iN, x33VarM);
                } else {
                    x33 x33Var = x33VarM;
                    while (x33VarM2 != null) {
                        int iN2 = x33VarM2.n() & length2;
                        if (iN2 != iN) {
                            x33Var = x33VarM2;
                            iN = iN2;
                        }
                        x33VarM2 = x33VarM2.m();
                    }
                    atomicReferenceArray2.set(iN, x33Var);
                    while (x33VarM != x33Var) {
                        int iN3 = x33VarM.n() & length2;
                        x33 x33VarA = a(x33VarM, (x33) atomicReferenceArray2.get(iN3));
                        if (x33VarA != null) {
                            atomicReferenceArray2.set(iN3, x33VarA);
                        } else {
                            p(x33VarM);
                            i--;
                        }
                        x33VarM = x33VarM.m();
                    }
                }
            }
        }
        this.s = atomicReferenceArray2;
        this.o = i;
    }

    public final void g(long j) {
        x33 x33Var;
        x33 x33Var2;
        b();
        do {
            x33Var = (x33) this.y.peek();
            v62 v62Var = this.n;
            if (x33Var == null || !v62Var.e(x33Var, j)) {
                do {
                    x33Var2 = (x33) this.z.peek();
                    if (x33Var2 == null || !v62Var.e(x33Var2, j)) {
                        return;
                    }
                } while (q(x33Var2, x33Var2.n(), 4));
                throw new AssertionError();
            }
        } while (q(x33Var, x33Var.n(), 4));
        throw new AssertionError();
    }

    public final Object h(Object obj, int i, f62 f62Var, ListenableFuture listenableFuture) throws Throwable {
        Object objY;
        m00 m00Var = this.A;
        try {
            objY = bi4.y(listenableFuture);
        } catch (Throwable th) {
            th = th;
            objY = null;
        }
        try {
            if (objY != null) {
                f62Var.c.a();
                m00Var.getClass();
                w(obj, i, f62Var, objY);
                return objY;
            }
            throw new v00("CacheLoader returned null for key " + obj + ".", 0);
        } catch (Throwable th2) {
            th = th2;
            if (objY == null) {
                f62Var.c.a();
                m00Var.getClass();
                lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = this.s;
                    int length = (atomicReferenceArray.length() - 1) & i;
                    x33 x33Var = (x33) atomicReferenceArray.get(length);
                    x33 x33VarM = x33Var;
                    while (true) {
                        if (x33VarM == null) {
                            break;
                        }
                        Object key = x33VarM.getKey();
                        if (x33VarM.n() != i || key == null || !this.n.r.n(obj, key)) {
                            x33VarM = x33VarM.m();
                        } else if (x33VarM.d() == f62Var) {
                            if (f62Var.a.b()) {
                                x33VarM.c(f62Var.a);
                            } else {
                                atomicReferenceArray.set(length, r(x33Var, x33VarM));
                            }
                        }
                    }
                    unlock();
                    u();
                } catch (Throwable th3) {
                    unlock();
                    u();
                    throw th3;
                }
            }
            throw th;
        }
    }

    public final x33 i(int i, Object obj) {
        for (x33 x33VarM = (x33) this.s.get((r0.length() - 1) & i); x33VarM != null; x33VarM = x33VarM.m()) {
            if (x33VarM.n() == i) {
                Object key = x33VarM.getKey();
                if (key == null) {
                    x();
                } else if (this.n.r.n(obj, key)) {
                    return x33VarM;
                }
            }
        }
        return null;
    }

    public final Object j(x33 x33Var, long j) {
        if (x33Var.getKey() == null) {
            x();
            return null;
        }
        Object obj = x33Var.d().get();
        if (obj == null) {
            x();
            return null;
        }
        if (!this.n.e(x33Var, j)) {
            return obj;
        }
        if (!tryLock()) {
            return null;
        }
        try {
            g(j);
            return null;
        } finally {
            unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
    
        if (r6 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0092, code lost:
    
        r11 = new defpackage.f62();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0097, code lost:
    
        if (r10 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0099, code lost:
    
        r3 = r16.n.A;
        r17.getClass();
        r10 = defpackage.di0.a(r3, r16, r17, r18, r9);
        r10.c(r11);
        r7.set(r8, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ab, code lost:
    
        r10.c(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ae, code lost:
    
        unlock();
        u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b4, code lost:
    
        if (r6 == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b6, code lost:
    
        monitor-enter(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b9, code lost:
    
        r0 = h(r17, r18, r11, r11.h(r17, r19));
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c1, code lost:
    
        monitor-exit(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cb, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cc, code lost:
    
        r16.A.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d6, code lost:
    
        return y(r10, r17, r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(java.lang.Object r17, int r18, defpackage.x00 r19) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i62.k(java.lang.Object, int, x00):java.lang.Object");
    }

    public final void l() {
        if ((this.x.incrementAndGet() & 63) == 0) {
            t(this.n.z.a());
            u();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        unlock();
        u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(int r10, java.lang.Object r11, java.lang.Object r12, boolean r13) {
        /*
            r9 = this;
            r9.lock()
            v62 r0 = r9.n     // Catch: java.lang.Throwable -> L1a
            dz3 r0 = r0.z     // Catch: java.lang.Throwable -> L1a
            long r0 = r0.a()     // Catch: java.lang.Throwable -> L1a
            r9.t(r0)     // Catch: java.lang.Throwable -> L1a
            int r2 = r9.o     // Catch: java.lang.Throwable -> L1a
            int r2 = r2 + 1
            int r3 = r9.r     // Catch: java.lang.Throwable -> L1a
            if (r2 <= r3) goto L1d
            r9.f()     // Catch: java.lang.Throwable -> L1a
            goto L1d
        L1a:
            r10 = move-exception
            goto Lc1
        L1d:
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r9.s     // Catch: java.lang.Throwable -> L1a
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L1a
            int r3 = r3 + (-1)
            r3 = r3 & r10
            java.lang.Object r4 = r2.get(r3)     // Catch: java.lang.Throwable -> L1a
            x33 r4 = (defpackage.x33) r4     // Catch: java.lang.Throwable -> L1a
            r5 = r4
        L2d:
            r6 = 0
            if (r5 == 0) goto La3
            java.lang.Object r7 = r5.getKey()     // Catch: java.lang.Throwable -> L1a
            int r8 = r5.n()     // Catch: java.lang.Throwable -> L1a
            if (r8 != r10) goto L9e
            if (r7 == 0) goto L9e
            v62 r8 = r9.n     // Catch: java.lang.Throwable -> L1a
            a21 r8 = r8.r     // Catch: java.lang.Throwable -> L1a
            boolean r7 = r8.n(r11, r7)     // Catch: java.lang.Throwable -> L1a
            if (r7 == 0) goto L9e
            o62 r10 = r5.d()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r2 = r10.get()     // Catch: java.lang.Throwable -> L1a
            if (r2 != 0) goto L7d
            int r13 = r9.q     // Catch: java.lang.Throwable -> L1a
            int r13 = r13 + 1
            r9.q = r13     // Catch: java.lang.Throwable -> L1a
            boolean r13 = r10.b()     // Catch: java.lang.Throwable -> L1a
            if (r13 == 0) goto L6a
            int r10 = r10.g()     // Catch: java.lang.Throwable -> L1a
            r13 = 3
            r9.d(r10, r13, r11, r2)     // Catch: java.lang.Throwable -> L1a
            r9.v(r5, r12, r0)     // Catch: java.lang.Throwable -> L1a
            int r10 = r9.o     // Catch: java.lang.Throwable -> L1a
            goto L71
        L6a:
            r9.v(r5, r12, r0)     // Catch: java.lang.Throwable -> L1a
            int r10 = r9.o     // Catch: java.lang.Throwable -> L1a
            int r10 = r10 + 1
        L71:
            r9.o = r10     // Catch: java.lang.Throwable -> L1a
            r9.e(r5)     // Catch: java.lang.Throwable -> L1a
        L76:
            r9.unlock()
            r9.u()
            return r6
        L7d:
            if (r13 == 0) goto L89
            r9.n(r5, r0)     // Catch: java.lang.Throwable -> L1a
        L82:
            r9.unlock()
            r9.u()
            return r2
        L89:
            int r13 = r9.q     // Catch: java.lang.Throwable -> L1a
            int r13 = r13 + 1
            r9.q = r13     // Catch: java.lang.Throwable -> L1a
            int r10 = r10.g()     // Catch: java.lang.Throwable -> L1a
            r13 = 2
            r9.d(r10, r13, r11, r2)     // Catch: java.lang.Throwable -> L1a
            r9.v(r5, r12, r0)     // Catch: java.lang.Throwable -> L1a
            r9.e(r5)     // Catch: java.lang.Throwable -> L1a
            goto L82
        L9e:
            x33 r5 = r5.m()     // Catch: java.lang.Throwable -> L1a
            goto L2d
        La3:
            int r13 = r9.q     // Catch: java.lang.Throwable -> L1a
            int r13 = r13 + 1
            r9.q = r13     // Catch: java.lang.Throwable -> L1a
            v62 r13 = r9.n     // Catch: java.lang.Throwable -> L1a
            int r13 = r13.A     // Catch: java.lang.Throwable -> L1a
            x33 r10 = defpackage.di0.a(r13, r9, r11, r10, r4)     // Catch: java.lang.Throwable -> L1a
            r9.v(r10, r12, r0)     // Catch: java.lang.Throwable -> L1a
            r2.set(r3, r10)     // Catch: java.lang.Throwable -> L1a
            int r11 = r9.o     // Catch: java.lang.Throwable -> L1a
            int r11 = r11 + 1
            r9.o = r11     // Catch: java.lang.Throwable -> L1a
            r9.e(r10)     // Catch: java.lang.Throwable -> L1a
            goto L76
        Lc1:
            r9.unlock()
            r9.u()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i62.m(int, java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    public final void n(x33 x33Var, long j) {
        this.n.getClass();
        this.z.add(x33Var);
    }

    public final void o(x33 x33Var, long j) {
        this.n.getClass();
        this.w.add(x33Var);
    }

    public final void p(x33 x33Var) {
        Object key = x33Var.getKey();
        x33Var.n();
        d(x33Var.d().g(), 3, key, x33Var.d().get());
        this.y.remove(x33Var);
        this.z.remove(x33Var);
    }

    public final boolean q(x33 x33Var, int i, int i2) {
        AtomicReferenceArray atomicReferenceArray = this.s;
        int length = i & (atomicReferenceArray.length() - 1);
        x33 x33Var2 = (x33) atomicReferenceArray.get(length);
        for (x33 x33VarM = x33Var2; x33VarM != null; x33VarM = x33VarM.m()) {
            if (x33VarM == x33Var) {
                this.q++;
                x33 x33VarS = s(x33Var2, x33VarM, x33VarM.getKey(), x33VarM.d().get(), x33VarM.d(), i2);
                int i3 = this.o - 1;
                atomicReferenceArray.set(length, x33VarS);
                this.o = i3;
                return true;
            }
        }
        return false;
    }

    public final x33 r(x33 x33Var, x33 x33Var2) {
        int i = this.o;
        x33 x33VarM = x33Var2.m();
        while (x33Var != x33Var2) {
            x33 x33VarA = a(x33Var, x33VarM);
            if (x33VarA != null) {
                x33VarM = x33VarA;
            } else {
                p(x33Var);
                i--;
            }
            x33Var = x33Var.m();
        }
        this.o = i;
        return x33VarM;
    }

    public final x33 s(x33 x33Var, x33 x33Var2, Object obj, Object obj2, o62 o62Var, int i) {
        d(o62Var.g(), i, obj, obj2);
        this.y.remove(x33Var2);
        this.z.remove(x33Var2);
        if (!o62Var.a()) {
            return r(x33Var, x33Var2);
        }
        o62Var.e(null);
        return x33Var;
    }

    public final void t(long j) {
        if (tryLock()) {
            try {
                c();
                g(j);
                this.x.set(0);
            } finally {
                unlock();
            }
        }
    }

    public final void u() {
        if (isHeldByCurrentThread()) {
            return;
        }
        this.n.y.getClass();
    }

    public final void v(x33 x33Var, Object obj, long j) {
        o62 o62VarD = x33Var.d();
        v62 v62Var = this.n;
        if (v62Var.w == 0 || v62Var.f369u == 0) {
            throw null;
        }
        x33Var.c(new m62(obj));
        b();
        this.p++;
        if (v62Var.b()) {
            x33Var.a(j);
        }
        this.z.add(x33Var);
        this.y.add(x33Var);
        o62VarD.e(obj);
    }

    public final void w(Object obj, int i, f62 f62Var, Object obj2) {
        lock();
        try {
            long jA = this.n.z.a();
            t(jA);
            int i2 = this.o + 1;
            if (i2 > this.r) {
                f();
                i2 = this.o + 1;
            }
            AtomicReferenceArray atomicReferenceArray = this.s;
            int length = (atomicReferenceArray.length() - 1) & i;
            x33 x33Var = (x33) atomicReferenceArray.get(length);
            x33 x33VarM = x33Var;
            while (true) {
                if (x33VarM == null) {
                    this.q++;
                    int i3 = this.n.A;
                    obj.getClass();
                    x33 x33VarA = di0.a(i3, this, obj, i, x33Var);
                    v(x33VarA, obj2, jA);
                    atomicReferenceArray.set(length, x33VarA);
                    this.o = i2;
                    e(x33VarA);
                    break;
                }
                Object key = x33VarM.getKey();
                if (x33VarM.n() == i && key != null && this.n.r.n(obj, key)) {
                    o62 o62VarD = x33VarM.d();
                    Object obj3 = o62VarD.get();
                    if (f62Var == o62VarD || (obj3 == null && o62VarD != v62.F)) {
                        this.q++;
                        if (f62Var.a.b()) {
                            d(f62Var.a.g(), obj3 == null ? 3 : 2, obj, obj3);
                            i2--;
                        }
                        v(x33VarM, obj2, jA);
                        this.o = i2;
                        e(x33VarM);
                    } else {
                        d(0, 2, obj, obj2);
                    }
                } else {
                    x33VarM = x33VarM.m();
                }
            }
            unlock();
            u();
        } catch (Throwable th) {
            unlock();
            u();
            throw th;
        }
    }

    public final void x() {
        if (tryLock()) {
            try {
                c();
            } finally {
                unlock();
            }
        }
    }

    public final Object y(x33 x33Var, Object obj, o62 o62Var) {
        m00 m00Var = this.A;
        if (!o62Var.a()) {
            throw new AssertionError();
        }
        if (Thread.holdsLock(x33Var)) {
            k21.n(ht4.w("Recursive load of: %s", obj));
            return null;
        }
        try {
            Object objC = o62Var.c();
            if (objC != null) {
                o(x33Var, this.n.z.a());
                return objC;
            }
            throw new v00("CacheLoader returned null for key " + obj + ".", 0);
        } finally {
            m00Var.e();
        }
    }
}
