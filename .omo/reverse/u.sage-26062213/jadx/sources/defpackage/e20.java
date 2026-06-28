package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e20 implements ListenableFuture {
    public final WeakReference n;
    public final d20 o = new d20(this);

    public e20(b20 b20Var) {
        this.n = new WeakReference(b20Var);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void a(Runnable runnable, Executor executor) {
        this.o.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        b20 b20Var = (b20) this.n.get();
        boolean zCancel = this.o.cancel(z);
        if (zCancel && b20Var != null) {
            b20Var.a = null;
            b20Var.b = null;
            b20Var.c.j(null);
        }
        return zCancel;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.o.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.o.n instanceof u1;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.o.isDone();
    }

    public final String toString() {
        return this.o.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.o.get(j, timeUnit);
    }
}
