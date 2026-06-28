package defpackage;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i31 extends AtomicReference implements Executor, Runnable {
    public static final /* synthetic */ int r = 0;
    public gw4 n;
    public Executor o;
    public Runnable p;
    public Thread q;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (get() == h31.o) {
            this.o = null;
            this.n = null;
            return;
        }
        this.q = Thread.currentThread();
        try {
            gw4 gw4Var = this.n;
            Objects.requireNonNull(gw4Var);
            eh ehVar = (eh) gw4Var.p;
            if (((Thread) ehVar.o) == this.q) {
                this.n = null;
                n44.a0(((Runnable) ehVar.p) == null);
                ehVar.p = runnable;
                Executor executor = this.o;
                Objects.requireNonNull(executor);
                ehVar.q = executor;
                this.o = null;
            } else {
                Executor executor2 = this.o;
                Objects.requireNonNull(executor2);
                this.o = null;
                this.p = runnable;
                executor2.execute(this);
            }
            this.q = null;
        } catch (Throwable th) {
            this.q = null;
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Executor executor;
        Thread threadCurrentThread = Thread.currentThread();
        if (threadCurrentThread != this.q) {
            Runnable runnable = this.p;
            Objects.requireNonNull(runnable);
            this.p = null;
            runnable.run();
            return;
        }
        eh ehVar = new eh(14, false);
        ehVar.o = threadCurrentThread;
        gw4 gw4Var = this.n;
        Objects.requireNonNull(gw4Var);
        gw4Var.p = ehVar;
        this.n = null;
        try {
            Runnable runnable2 = this.p;
            Objects.requireNonNull(runnable2);
            this.p = null;
            runnable2.run();
            while (true) {
                Runnable runnable3 = (Runnable) ehVar.p;
                if (runnable3 == null || (executor = (Executor) ehVar.q) == null) {
                    break;
                }
                ehVar.p = null;
                ehVar.q = null;
                executor.execute(runnable3);
            }
        } finally {
            ehVar.o = null;
        }
    }
}
