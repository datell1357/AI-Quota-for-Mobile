package defpackage;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k31 extends j31 implements hr0 {
    public final Executor p;

    public k31(Executor executor) {
        Method method;
        this.p = executor;
        Method method2 = pc0.a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = pc0.a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.p;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof k31) && ((k31) obj).p == this.p;
    }

    public final int hashCode() {
        return System.identityHashCode(this.p);
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        try {
            this.p.execute(runnable);
        } catch (RejectedExecutionException e) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e);
            n44.S(hi0Var, cancellationException);
            zp0 zp0Var = zu0.a;
            lp0.p.n0(hi0Var, runnable);
        }
    }

    @Override // defpackage.hr0
    public final jv0 r(long j, oz3 oz3Var, hi0 hi0Var) {
        Executor executor = this.p;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(oz3Var, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                n44.S(hi0Var, cancellationException);
            }
        }
        return scheduledFutureSchedule != null ? new iv0(scheduledFutureSchedule) : qo0.y.r(j, oz3Var, hi0Var);
    }

    @Override // defpackage.ji0
    public final String toString() {
        return this.p.toString();
    }

    @Override // defpackage.hr0
    public final void z(long j, o20 o20Var) {
        Executor executor = this.p;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            rf1 rf1Var = new rf1(10, this, o20Var);
            hi0 hi0Var = o20Var.r;
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(rf1Var, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                n44.S(hi0Var, cancellationException);
            }
        }
        if (scheduledFutureSchedule != null) {
            o20Var.A(new j20(0, scheduledFutureSchedule));
        } else {
            qo0.y.z(j, o20Var);
        }
    }
}
