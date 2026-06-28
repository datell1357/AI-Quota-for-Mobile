package defpackage;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qo0 extends q21 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final qo0 y;
    public static final long z;

    static {
        Long l;
        qo0 qo0Var = new qo0();
        y = qo0Var;
        qo0Var.t0(false);
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        z = TimeUnit.MILLISECONDS.toNanos(l.longValue());
    }

    @Override // defpackage.q21
    public final Thread C0() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setContextClassLoader(y.getClass().getClassLoader());
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // defpackage.q21
    public final void E0(long j, o21 o21Var) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    public final synchronized void K0() {
        int i = debugStatus;
        if (i == 2 || i == 3) {
            debugStatus = 3;
            G0();
            notifyAll();
        }
    }

    @Override // defpackage.q21, defpackage.hr0
    public final jv0 r(long j, oz3 oz3Var, hi0 hi0Var) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 >= 4611686018427387903L) {
            return tm2.n;
        }
        long jNanoTime = System.nanoTime();
        n21 n21Var = new n21(j2 + jNanoTime, oz3Var);
        H0(jNanoTime, n21Var);
        return n21Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zD0;
        my3.a.set(this);
        try {
            synchronized (this) {
                int i = debugStatus;
                if (i == 2 || i == 3) {
                    if (zD0) {
                        return;
                    } else {
                        return;
                    }
                }
                debugStatus = 1;
                notifyAll();
                long j = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jU0 = u0();
                    if (jU0 == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j == Long.MAX_VALUE) {
                            j = z + jNanoTime;
                        }
                        long j2 = j - jNanoTime;
                        if (j2 <= 0) {
                            _thread = null;
                            K0();
                            if (D0()) {
                                return;
                            }
                            C0();
                            return;
                        }
                        if (jU0 > j2) {
                            jU0 = j2;
                        }
                    } else {
                        j = Long.MAX_VALUE;
                    }
                    if (jU0 > 0) {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            K0();
                            if (D0()) {
                                return;
                            }
                            C0();
                            return;
                        }
                        LockSupport.parkNanos(this, jU0);
                    }
                }
            }
        } finally {
            _thread = null;
            K0();
            if (!D0()) {
                C0();
            }
        }
    }

    @Override // defpackage.q21, defpackage.l21
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // defpackage.ji0
    public final String toString() {
        return "DefaultExecutor";
    }

    @Override // defpackage.q21
    public final void y0(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.y0(runnable);
    }
}
