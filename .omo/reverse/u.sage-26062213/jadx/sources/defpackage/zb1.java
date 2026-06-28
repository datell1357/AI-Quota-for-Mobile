package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zb1 extends o91 {
    public final ListenableFuture v;

    public zb1(ListenableFuture listenableFuture) {
        this.v = listenableFuture;
    }

    @Override // defpackage.s0, com.google.common.util.concurrent.ListenableFuture
    public final void a(Runnable runnable, Executor executor) {
        this.v.a(runnable, executor);
    }

    @Override // defpackage.s0, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.v.cancel(z);
    }

    @Override // defpackage.s0, java.util.concurrent.Future
    public final Object get() {
        return this.v.get();
    }

    @Override // defpackage.s0, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.v.isCancelled();
    }

    @Override // defpackage.s0, java.util.concurrent.Future
    public final boolean isDone() {
        return this.v.isDone();
    }

    @Override // defpackage.s0
    public final String toString() {
        return this.v.toString();
    }

    @Override // defpackage.s0, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.v.get(j, timeUnit);
    }
}
