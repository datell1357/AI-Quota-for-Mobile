package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lg4 {
    public final AtomicReferenceArray a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(lg4.class, Object.class, "lastScheduledTask$volatile");
    public static final /* synthetic */ long f = sa5.a.objectFieldOffset(lg4.class.getDeclaredField("lastScheduledTask$volatile"));
    public static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(lg4.class, "producerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(lg4.class, "consumerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(lg4.class, "blockingTasksInBuffer$volatile");

    public final mw3 a(mw3 mw3Var, boolean z) {
        if (z) {
            return b(mw3Var);
        }
        b.getClass();
        mw3 mw3Var2 = (mw3) sa5.a.getAndSetObject(this, f, mw3Var);
        if (mw3Var2 == null) {
            return null;
        }
        return b(mw3Var2);
    }

    public final mw3 b(mw3 mw3Var) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = c;
        if (atomicIntegerFieldUpdater.get(this) - d.get(this) == 127) {
            return mw3Var;
        }
        if (mw3Var.o) {
            e.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.a;
            if (atomicReferenceArray.get(i) == null) {
                atomicReferenceArray.lazySet(i, mw3Var);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final int c() {
        b.getClass();
        Object objectVolatile = sa5.a.getObjectVolatile(this, f);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = c;
        return objectVolatile != null ? (atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this)) + 1 : atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this);
    }

    public final void d(gh1 gh1Var) {
        b.getClass();
        mw3 mw3Var = (mw3) sa5.a.getAndSetObject(this, f, (Object) null);
        if (mw3Var != null) {
            gh1Var.a(mw3Var);
        }
        while (true) {
            mw3 mw3VarF = f();
            if (mw3VarF == null) {
                return;
            } else {
                gh1Var.a(mw3VarF);
            }
        }
    }

    public final mw3 e() {
        b.getClass();
        mw3 mw3Var = (mw3) sa5.a.getAndSetObject(this, f, (Object) null);
        return mw3Var == null ? f() : mw3Var;
    }

    public final mw3 f() {
        mw3 mw3Var;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - c.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (mw3Var = (mw3) this.a.getAndSet(i2, null)) != null) {
                if (mw3Var.o) {
                    e.decrementAndGet(this);
                }
                return mw3Var;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        r9 = defpackage.lg4.d.get(r4);
        r1 = defpackage.lg4.c.get(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
    
        if (r9 == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        if (defpackage.lg4.e.get(r4) != 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        r1 = r1 - 1;
        r2 = r4.h(r1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (r2 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        r4 = r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.mw3 g() {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.lg4.b
            r0.getClass()
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r1 = defpackage.lg4.f
            java.lang.Object r0 = r0.getObjectVolatile(r9, r1)
            r7 = r0
            mw3 r7 = (defpackage.mw3) r7
            r0 = 1
            if (r7 != 0) goto L15
        L13:
            r4 = r9
            goto L30
        L15:
            boolean r3 = r7.o
            if (r3 != r0) goto L13
        L19:
            sun.misc.Unsafe r3 = defpackage.sa5.a
            long r5 = defpackage.lg4.f
            r8 = 0
            r4 = r9
            boolean r9 = r3.compareAndSwapObject(r4, r5, r7, r8)
            if (r9 == 0) goto L26
            return r7
        L26:
            java.lang.Object r9 = r3.getObjectVolatile(r4, r1)
            if (r9 == r7) goto L2e
            r9 = r4
            goto L0
        L2e:
            r9 = r4
            goto L19
        L30:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r9 = defpackage.lg4.d
            int r9 = r9.get(r4)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = defpackage.lg4.c
            int r1 = r1.get(r4)
        L3c:
            if (r9 == r1) goto L50
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = defpackage.lg4.e
            int r2 = r2.get(r4)
            if (r2 != 0) goto L47
            goto L50
        L47:
            int r1 = r1 + (-1)
            mw3 r2 = r4.h(r1, r0)
            if (r2 == 0) goto L3c
            return r2
        L50:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lg4.g():mw3");
    }

    public final mw3 h(int i, boolean z) {
        int i2 = i & 127;
        AtomicReferenceArray atomicReferenceArray = this.a;
        mw3 mw3Var = (mw3) atomicReferenceArray.get(i2);
        if (mw3Var != null && mw3Var.o == z) {
            while (!atomicReferenceArray.compareAndSet(i2, mw3Var, null)) {
                if (atomicReferenceArray.get(i2) != mw3Var) {
                }
            }
            if (z) {
                e.decrementAndGet(this);
            }
            return mw3Var;
        }
        return null;
    }

    public final long i(int i, w33 w33Var) {
        lg4 lg4Var;
        while (true) {
            b.getClass();
            Unsafe unsafe = sa5.a;
            long j = f;
            mw3 mw3Var = (mw3) unsafe.getObjectVolatile(this, j);
            if (mw3Var == null) {
                return -2L;
            }
            if (((mw3Var.o ? 1 : 2) & i) == 0) {
                return -2L;
            }
            uw3.f.getClass();
            long jNanoTime = System.nanoTime() - mw3Var.n;
            long j2 = uw3.b;
            if (jNanoTime < j2) {
                return j2 - jNanoTime;
            }
            while (true) {
                Unsafe unsafe2 = sa5.a;
                lg4Var = this;
                if (unsafe2.compareAndSwapObject(lg4Var, f, mw3Var, (Object) null)) {
                    w33Var.n = mw3Var;
                    return -1L;
                }
                if (unsafe2.getObjectVolatile(lg4Var, j) != mw3Var) {
                    break;
                }
                this = lg4Var;
            }
            this = lg4Var;
        }
    }
}
