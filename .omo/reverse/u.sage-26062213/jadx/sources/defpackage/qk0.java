package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qk0 implements Executor {
    public final ExecutorService n;
    public final Object o = new Object();
    public ef5 p = mt1.t(null);

    public qk0(ExecutorService executorService) {
        this.n = executorService;
    }

    public final ef5 a(Runnable runnable) {
        ef5 ef5VarE;
        synchronized (this.o) {
            ef5VarE = this.p.e(this.n, new r6(9, runnable));
            this.p = ef5VarE;
        }
        return ef5VarE;
    }

    public final ef5 b(Callable callable) {
        ef5 ef5VarE;
        synchronized (this.o) {
            ef5VarE = this.p.e(this.n, new r6(8, callable));
            this.p = ef5VarE;
        }
        return ef5VarE;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.n.execute(runnable);
    }
}
