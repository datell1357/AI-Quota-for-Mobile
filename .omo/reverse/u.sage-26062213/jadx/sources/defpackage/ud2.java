package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ud2 extends kt4 implements ScheduledFuture, ListenableFuture, Future {
    public final ScheduledFuture A;
    public final s0 z;

    public ud2(s0 s0Var, ScheduledFuture scheduledFuture) {
        super(15);
        this.z = s0Var;
        this.A = scheduledFuture;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void a(Runnable runnable, Executor executor) {
        this.z.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean zN0 = n0(z);
        if (zN0) {
            this.A.cancel(z);
        }
        return zN0;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.A.compareTo(delayed);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.z.get();
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.A.getDelay(timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.z.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.z.isDone();
    }

    public final boolean n0(boolean z) {
        return this.z.cancel(z);
    }

    @Override // defpackage.kt4
    public final Object v() {
        return this.z;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.z.get(j, timeUnit);
    }
}
