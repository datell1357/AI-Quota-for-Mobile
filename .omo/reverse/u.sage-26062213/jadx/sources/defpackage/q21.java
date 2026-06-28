package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class q21 extends l21 implements hr0 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater t = AtomicReferenceFieldUpdater.newUpdater(q21.class, Object.class, "_queue$volatile");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f270u;
    public static final /* synthetic */ AtomicIntegerFieldUpdater v;
    public static final /* synthetic */ long w;
    public static final /* synthetic */ long x;
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    static {
        Unsafe unsafe = sa5.a;
        x = unsafe.objectFieldOffset(q21.class.getDeclaredField("_queue$volatile"));
        f270u = AtomicReferenceFieldUpdater.newUpdater(q21.class, Object.class, "_delayed$volatile");
        w = unsafe.objectFieldOffset(q21.class.getDeclaredField("_delayed$volatile"));
        v = AtomicIntegerFieldUpdater.newUpdater(q21.class, "_isCompleted$volatile");
    }

    public final boolean A0(Runnable runnable) {
        Unsafe unsafe;
        Unsafe unsafe2;
        Unsafe unsafe3;
        loop0: while (true) {
            t.getClass();
            Unsafe unsafe4 = sa5.a;
            long j = x;
            Object objectVolatile = unsafe4.getObjectVolatile(this, j);
            if (v.get(this) == 1) {
                return false;
            }
            if (objectVolatile == null) {
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(this, x, (Object) null, runnable)) {
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(this, j) == null);
            } else if (objectVolatile instanceof l72) {
                l72 l72Var = (l72) objectVolatile;
                int iA = l72Var.a(runnable);
                if (iA == 0) {
                    break;
                }
                if (iA == 1) {
                    l72 l72VarD = l72Var.d();
                    do {
                        unsafe2 = sa5.a;
                        if (unsafe2.compareAndSwapObject(this, x, objectVolatile, l72VarD)) {
                            break;
                        }
                    } while (unsafe2.getObjectVolatile(this, j) == objectVolatile);
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (objectVolatile == r21.b) {
                    return false;
                }
                l72 l72Var2 = new l72(8, true);
                l72Var2.a((Runnable) objectVolatile);
                l72Var2.a(runnable);
                do {
                    unsafe3 = sa5.a;
                    if (unsafe3.compareAndSwapObject(this, x, objectVolatile, l72Var2)) {
                        break loop0;
                    }
                } while (unsafe3.getObjectVolatile(this, j) == objectVolatile);
            }
        }
        return true;
    }

    public final long B0() {
        o21 o21Var;
        vh vhVar = this.r;
        if (((vhVar == null || vhVar.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
            t.getClass();
            Unsafe unsafe = sa5.a;
            Object objectVolatile = unsafe.getObjectVolatile(this, x);
            if (objectVolatile != null) {
                if (objectVolatile instanceof l72) {
                    long j = l72.f.get((l72) objectVolatile);
                    if (((int) (1073741823 & j)) != ((int) ((j & 1152921503533105152L) >> 30))) {
                        return 0L;
                    }
                } else if (objectVolatile == r21.b) {
                    return Long.MAX_VALUE;
                }
            }
            f270u.getClass();
            p21 p21Var = (p21) unsafe.getObjectVolatile(this, w);
            if (p21Var != null) {
                synchronized (p21Var) {
                    o21[] o21VarArr = p21Var.a;
                    o21Var = o21VarArr != null ? o21VarArr[0] : null;
                }
                if (o21Var != null) {
                    long jNanoTime = o21Var.n - System.nanoTime();
                    if (jNanoTime >= 0) {
                        return jNanoTime;
                    }
                }
            }
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public abstract Thread C0();

    public final boolean D0() {
        vh vhVar = this.r;
        if (vhVar != null ? vhVar.isEmpty() : true) {
            f270u.getClass();
            Unsafe unsafe = sa5.a;
            p21 p21Var = (p21) unsafe.getObjectVolatile(this, w);
            if (p21Var != null && ry3.b.get(p21Var) != 0) {
                return false;
            }
            t.getClass();
            Object objectVolatile = unsafe.getObjectVolatile(this, x);
            if (objectVolatile != null) {
                if (objectVolatile instanceof l72) {
                    long j = l72.f.get((l72) objectVolatile);
                    return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
                }
                if (objectVolatile == r21.b) {
                }
            }
            return true;
        }
        return false;
    }

    public void E0(long j, o21 o21Var) {
        qo0.y.H0(j, o21Var);
    }

    public final void F0() {
        o21 o21VarB;
        long jNanoTime = System.nanoTime();
        while (true) {
            f270u.getClass();
            p21 p21Var = (p21) sa5.a.getObjectVolatile(this, w);
            if (p21Var == null) {
                return;
            }
            synchronized (p21Var) {
                o21VarB = ry3.b.get(p21Var) > 0 ? p21Var.b(0) : null;
            }
            if (o21VarB == null) {
                return;
            } else {
                E0(jNanoTime, o21VarB);
            }
        }
    }

    public final void G0() {
        t.getClass();
        Unsafe unsafe = sa5.a;
        unsafe.putObjectVolatile(this, x, (Object) null);
        f270u.getClass();
        unsafe.putObjectVolatile(this, w, (Object) null);
    }

    public final void H0(long j, o21 o21Var) {
        Thread threadC0;
        int iI0 = I0(j, o21Var);
        if (iI0 == 0) {
            if (!J0(o21Var) || Thread.currentThread() == (threadC0 = C0())) {
                return;
            }
            LockSupport.unpark(threadC0);
            return;
        }
        if (iI0 == 1) {
            E0(j, o21Var);
        } else {
            if (iI0 == 2) {
                return;
            }
            k21.n("unexpected result");
        }
    }

    public final int I0(long j, o21 o21Var) {
        q21 q21Var;
        Unsafe unsafe;
        if (v.get(this) == 1) {
            return 1;
        }
        f270u.getClass();
        Unsafe unsafe2 = sa5.a;
        long j2 = w;
        p21 p21Var = (p21) unsafe2.getObjectVolatile(this, j2);
        if (p21Var == null) {
            p21 p21Var2 = new p21();
            p21Var2.c = j;
            while (true) {
                unsafe = sa5.a;
                q21Var = this;
                if (unsafe.compareAndSwapObject(q21Var, w, (Object) null, p21Var2) || unsafe.getObjectVolatile(q21Var, j2) != null) {
                    break;
                }
                this = q21Var;
            }
            Object objectVolatile = unsafe.getObjectVolatile(q21Var, j2);
            objectVolatile.getClass();
            p21Var = (p21) objectVolatile;
        } else {
            q21Var = this;
        }
        return o21Var.b(j, p21Var, q21Var);
    }

    public final boolean J0(o21 o21Var) {
        f270u.getClass();
        p21 p21Var = (p21) sa5.a.getObjectVolatile(this, w);
        if (p21Var != null) {
            synchronized (p21Var) {
                o21[] o21VarArr = p21Var.a;
                o21Var = o21VarArr != null ? o21VarArr[0] : null;
            }
        }
        return o21Var == o21Var;
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        y0(runnable);
    }

    @Override // defpackage.hr0
    public jv0 r(long j, oz3 oz3Var, hi0 hi0Var) {
        return ro0.a.r(j, oz3Var, hi0Var);
    }

    @Override // defpackage.l21
    public void shutdown() {
        my3.a.set(null);
        v.set(this, 1);
        w0();
        while (u0() <= 0) {
        }
        F0();
    }

    @Override // defpackage.l21
    public final long u0() {
        if (v0()) {
            return 0L;
        }
        z0();
        Runnable runnableX0 = x0();
        if (runnableX0 == null) {
            return B0();
        }
        runnableX0.run();
        return 0L;
    }

    public final void w0() {
        q21 q21Var;
        Unsafe unsafe;
        while (true) {
            t.getClass();
            Unsafe unsafe2 = sa5.a;
            long j = x;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            sg0 sg0Var = r21.b;
            if (objectVolatile == null) {
                while (true) {
                    Unsafe unsafe3 = sa5.a;
                    q21 q21Var2 = this;
                    q21Var = q21Var2;
                    if (unsafe3.compareAndSwapObject(q21Var2, x, (Object) null, sg0Var)) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(q21Var, j) != null) {
                        break;
                    } else {
                        this = q21Var;
                    }
                }
            } else {
                q21Var = this;
                if (objectVolatile instanceof l72) {
                    ((l72) objectVolatile).c();
                    return;
                }
                if (objectVolatile == sg0Var) {
                    return;
                }
                l72 l72Var = new l72(8, true);
                l72Var.a((Runnable) objectVolatile);
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(q21Var, x, objectVolatile, l72Var)) {
                        return;
                    }
                } while (unsafe.getObjectVolatile(q21Var, j) == objectVolatile);
            }
            this = q21Var;
        }
    }

    public final Runnable x0() {
        q21 q21Var;
        Unsafe unsafe;
        while (true) {
            t.getClass();
            Unsafe unsafe2 = sa5.a;
            long j = x;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                return null;
            }
            if (objectVolatile instanceof l72) {
                l72 l72Var = (l72) objectVolatile;
                Object objE = l72Var.e();
                if (objE != l72.g) {
                    return (Runnable) objE;
                }
                l72 l72VarD = l72Var.d();
                while (true) {
                    Unsafe unsafe3 = sa5.a;
                    q21Var = this;
                    if (!unsafe3.compareAndSwapObject(q21Var, x, objectVolatile, l72VarD) && unsafe3.getObjectVolatile(q21Var, j) == objectVolatile) {
                        this = q21Var;
                    }
                }
            } else {
                q21Var = this;
                if (objectVolatile == r21.b) {
                    return null;
                }
                do {
                    unsafe = sa5.a;
                    if (unsafe.compareAndSwapObject(q21Var, x, objectVolatile, (Object) null)) {
                        return (Runnable) objectVolatile;
                    }
                } while (unsafe.getObjectVolatile(q21Var, j) == objectVolatile);
            }
            this = q21Var;
        }
    }

    public void y0(Runnable runnable) {
        z0();
        if (!A0(runnable)) {
            qo0.y.y0(runnable);
            return;
        }
        Thread threadC0 = C0();
        if (Thread.currentThread() != threadC0) {
            LockSupport.unpark(threadC0);
        }
    }

    @Override // defpackage.hr0
    public final void z(long j, o20 o20Var) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 < 4611686018427387903L) {
            long jNanoTime = System.nanoTime();
            m21 m21Var = new m21(this, j2 + jNanoTime, o20Var);
            H0(jNanoTime, m21Var);
            o20Var.A(new j20(2, m21Var));
        }
    }

    public final void z0() {
        o21 o21VarB;
        f270u.getClass();
        p21 p21Var = (p21) sa5.a.getObjectVolatile(this, w);
        if (p21Var == null || ry3.b.get(p21Var) == 0) {
            return;
        }
        long jNanoTime = System.nanoTime();
        do {
            synchronized (p21Var) {
                try {
                    o21[] o21VarArr = p21Var.a;
                    o21 o21Var = o21VarArr != null ? o21VarArr[0] : null;
                    if (o21Var != null) {
                        o21VarB = ((jNanoTime - o21Var.n) > 0L ? 1 : ((jNanoTime - o21Var.n) == 0L ? 0 : -1)) >= 0 ? A0(o21Var) : false ? p21Var.b(0) : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (o21VarB != null);
    }
}
