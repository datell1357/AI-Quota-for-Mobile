package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q42 extends FutureTask implements ListenableFuture {
    public final e31 n;

    public q42(s00 s00Var) {
        super(s00Var);
        this.n = new e31();
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void a(Runnable runnable, Executor executor) {
        e31 e31Var = this.n;
        e31Var.getClass();
        synchronized (e31Var) {
            try {
                if (e31Var.b) {
                    e31.a(runnable, executor);
                } else {
                    e31Var.a = new eh(runnable, executor, e31Var.a, 13, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        e31 e31Var = this.n;
        synchronized (e31Var) {
            try {
                if (e31Var.b) {
                    return;
                }
                e31Var.b = true;
                eh ehVar = e31Var.a;
                eh ehVar2 = null;
                e31Var.a = null;
                while (ehVar != null) {
                    eh ehVar3 = (eh) ehVar.q;
                    ehVar.q = ehVar2;
                    ehVar2 = ehVar;
                    ehVar = ehVar3;
                }
                while (ehVar2 != null) {
                    e31.a((Runnable) ehVar2.o, (Executor) ehVar2.p);
                    ehVar2 = (eh) ehVar2.q;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        return nanos <= 2147483647999999999L ? super.get(j, timeUnit) : super.get(Math.min(nanos, 2147483647999999999L), TimeUnit.NANOSECONDS);
    }
}
