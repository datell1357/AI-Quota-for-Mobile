package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pi0 implements Executor, Closeable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f261u = AtomicLongFieldUpdater.newUpdater(pi0.class, "parkedWorkersStack$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater v = AtomicLongFieldUpdater.newUpdater(pi0.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater w = AtomicIntegerFieldUpdater.newUpdater(pi0.class, "_isTerminated$volatile");
    public static final sg0 x = new sg0("NOT_IN_STACK", 3);
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;
    public final int n;
    public final int o;
    public final long p;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;
    public final String q;
    public final gh1 r;
    public final gh1 s;
    public final i73 t;

    public pi0(int i, int i2, long j, String str) {
        this.n = i;
        this.o = i2;
        this.p = j;
        this.q = str;
        if (i < 1) {
            k21.l(xw1.q("Core pool size ", i, " should be at least 1"));
            throw null;
        }
        if (i2 < i) {
            k21.l(di0.p(i2, i, "Max pool size ", " should be greater than or equals to core pool size "));
            throw null;
        }
        if (i2 > 2097150) {
            k21.l(xw1.q("Max pool size ", i2, " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j <= 0) {
            q73.m("Idle worker keep alive time ", j, " must be positive");
            throw null;
        }
        this.r = new gh1();
        this.s = new gh1();
        this.t = new i73((i + 1) * 2);
        this.controlState$volatile = ((long) i) << 42;
    }

    public static /* synthetic */ void r(pi0 pi0Var, Runnable runnable, int i) {
        pi0Var.j(runnable, false, (i & 4) == 0);
    }

    public final boolean A(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.n;
        if (i < i2) {
            int iB = b();
            if (iB == 1 && i2 > 1) {
                b();
            }
            if (iB > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean B() {
        pi0 pi0Var;
        sg0 sg0Var;
        int iB;
        while (true) {
            long j = f261u.get(this);
            ni0 ni0Var = (ni0) this.t.b((int) (2097151 & j));
            if (ni0Var == null) {
                ni0Var = null;
                pi0Var = this;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object objC = ni0Var.c();
                while (true) {
                    sg0Var = x;
                    if (objC == sg0Var) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    ni0 ni0Var2 = (ni0) objC;
                    iB = ni0Var2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = ni0Var2.c();
                    j = j;
                }
                if (iB >= 0) {
                    pi0 pi0Var2 = this;
                    boolean zCompareAndSet = f261u.compareAndSet(pi0Var2, j, ((long) iB) | j2);
                    pi0Var = pi0Var2;
                    if (zCompareAndSet) {
                        ni0Var.g(sg0Var);
                    }
                    this = pi0Var;
                } else {
                    continue;
                }
            }
            if (ni0Var == null) {
                return false;
            }
            if (ni0.v.compareAndSet(ni0Var, -1, 0)) {
                LockSupport.unpark(ni0Var);
                return true;
            }
            this = pi0Var;
        }
    }

    public final int b() {
        synchronized (this.t) {
            try {
                if (w.get(this) == 1) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = v;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int i2 = i - ((int) ((j & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.n) {
                    return 0;
                }
                if (i >= this.o) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.t.b(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                ni0 ni0Var = new ni0(this, i3);
                this.t.c(i3, ni0Var);
                if (i3 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = i2 + 1;
                ni0Var.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006e  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.pi0.w
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof defpackage.ni0
            r3 = 0
            if (r1 == 0) goto L17
            ni0 r0 = (defpackage.ni0) r0
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 == 0) goto L20
            pi0 r1 = r0.f223u
            if (r1 == r8) goto L1f
            goto L20
        L1f:
            r3 = r0
        L20:
            i73 r0 = r8.t
            monitor-enter(r0)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = defpackage.pi0.v     // Catch: java.lang.Throwable -> La7
            long r4 = r1.get(r8)     // Catch: java.lang.Throwable -> La7
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r1 = (int) r4
            monitor-exit(r0)
            if (r2 > r1) goto L5c
            r0 = r2
        L32:
            i73 r4 = r8.t
            java.lang.Object r4 = r4.b(r0)
            r4.getClass()
            ni0 r4 = (defpackage.ni0) r4
            if (r4 == r3) goto L57
        L3f:
            java.lang.Thread$State r5 = r4.getState()
            java.lang.Thread$State r6 = java.lang.Thread.State.TERMINATED
            if (r5 == r6) goto L50
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r5 = 10000(0x2710, double:4.9407E-320)
            r4.join(r5)
            goto L3f
        L50:
            lg4 r4 = r4.n
            gh1 r5 = r8.s
            r4.d(r5)
        L57:
            if (r0 == r1) goto L5c
            int r0 = r0 + 1
            goto L32
        L5c:
            gh1 r0 = r8.s
            r0.b()
            gh1 r0 = r8.r
            r0.b()
        L66:
            if (r3 == 0) goto L6e
            mw3 r0 = r3.a(r2)
            if (r0 != 0) goto L96
        L6e:
            gh1 r0 = r8.r
            java.lang.Object r0 = r0.d()
            mw3 r0 = (defpackage.mw3) r0
            if (r0 != 0) goto L96
            gh1 r0 = r8.s
            java.lang.Object r0 = r0.d()
            mw3 r0 = (defpackage.mw3) r0
            if (r0 != 0) goto L96
            if (r3 == 0) goto L89
            oi0 r0 = defpackage.oi0.r
            r3.h(r0)
        L89:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.pi0.f261u
            r1 = 0
            r0.set(r8, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.pi0.v
            r0.set(r8, r1)
            return
        L96:
            r0.run()     // Catch: java.lang.Throwable -> L9a
            goto L66
        L9a:
            r0 = move-exception
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r1.getUncaughtExceptionHandler()
            r4.uncaughtException(r1, r0)
            goto L66
        La7:
            r8 = move-exception
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pi0.close():void");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        r(this, runnable, 6);
    }

    public final void j(Runnable runnable, boolean z, boolean z2) {
        mw3 rw3Var;
        oi0 oi0Var;
        uw3.f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof mw3) {
            rw3Var = (mw3) runnable;
            rw3Var.n = jNanoTime;
            rw3Var.o = z;
        } else {
            rw3Var = new rw3(runnable, jNanoTime, z);
        }
        boolean z3 = rw3Var.o;
        AtomicLongFieldUpdater atomicLongFieldUpdater = v;
        long jAddAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        ni0 ni0Var = null;
        ni0 ni0Var2 = threadCurrentThread instanceof ni0 ? (ni0) threadCurrentThread : null;
        if (ni0Var2 != null && ni0Var2.f223u == this) {
            ni0Var = ni0Var2;
        }
        if (ni0Var != null && (oi0Var = ni0Var.p) != oi0.r && (rw3Var.o || oi0Var != oi0.o)) {
            ni0Var.t = true;
            rw3Var = ni0Var.n.a(rw3Var, z2);
        }
        if (rw3Var != null) {
            if (!(rw3Var.o ? this.s.a(rw3Var) : this.r.a(rw3Var))) {
                throw new RejectedExecutionException(xw1.s(new StringBuilder(), this.q, " was terminated"));
            }
        }
        if (z3) {
            if (B() || A(jAddAndGet)) {
                return;
            }
            B();
            return;
        }
        if (B() || A(atomicLongFieldUpdater.get(this))) {
            return;
        }
        B();
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        i73 i73Var = this.t;
        int iA = i73Var.a();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < iA; i6++) {
            ni0 ni0Var = (ni0) i73Var.b(i6);
            if (ni0Var != null) {
                int iC = ni0Var.n.c();
                int iOrdinal = ni0Var.p.ordinal();
                if (iOrdinal == 0) {
                    i++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iC);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iOrdinal == 1) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iC);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iOrdinal == 2) {
                    i3++;
                } else if (iOrdinal == 3) {
                    i4++;
                    if (iC > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iC);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (iOrdinal != 4) {
                        p61.x();
                        return null;
                    }
                    i5++;
                }
            }
        }
        long j = v.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.q);
        sb4.append('@');
        sb4.append(qn0.u(this));
        sb4.append("[Pool Size {core = ");
        int i7 = this.n;
        sb4.append(i7);
        sb4.append(", max = ");
        sb4.append(this.o);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i);
        sb4.append(", blocking = ");
        sb4.append(i2);
        sb4.append(", parked = ");
        sb4.append(i3);
        sb4.append(", dormant = ");
        sb4.append(i4);
        sb4.append(", terminated = ");
        sb4.append(i5);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.r.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.s.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i7 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }

    public final void z(ni0 ni0Var, int i, int i2) {
        while (true) {
            long j = f261u.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object objC = ni0Var.c();
                    while (true) {
                        if (objC == x) {
                            i3 = -1;
                            break;
                        }
                        if (objC == null) {
                            i3 = 0;
                            break;
                        }
                        ni0 ni0Var2 = (ni0) objC;
                        int iB = ni0Var2.b();
                        if (iB != 0) {
                            i3 = iB;
                            break;
                        }
                        objC = ni0Var2.c();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                pi0 pi0Var = this;
                if (f261u.compareAndSet(pi0Var, j, ((long) i3) | j2)) {
                    return;
                } else {
                    this = pi0Var;
                }
            }
        }
    }
}
