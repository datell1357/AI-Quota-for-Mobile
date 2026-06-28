package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fi3 implements Executor {
    public static final q12 s = new q12(fi3.class);
    public final Executor n;
    public final ArrayDeque o = new ArrayDeque();
    public int p = 1;
    public long q = 0;
    public final rf1 r = new rf1(this, 12);

    public fi3(Executor executor) {
        executor.getClass();
        this.n = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.o) {
            int i = this.p;
            if (i != 4 && i != 3) {
                long j = this.q;
                bc3 bc3Var = new bc3(runnable, 2);
                this.o.add(bc3Var);
                this.p = 2;
                try {
                    this.n.execute(this.r);
                    if (this.p != 2) {
                        return;
                    }
                    synchronized (this.o) {
                        try {
                            if (this.q == j && this.p == 2) {
                                this.p = 3;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Throwable th) {
                    synchronized (this.o) {
                        try {
                            int i2 = this.p;
                            boolean z = true;
                            if ((i2 != 1 && i2 != 2) || !this.o.removeLastOccurrence(bc3Var)) {
                                z = false;
                            }
                            if (!(th instanceof RejectedExecutionException) || z) {
                                throw th;
                            }
                            return;
                        } finally {
                        }
                    }
                }
            }
            this.o.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.n + "}";
    }
}
