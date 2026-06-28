package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ei3 implements Executor {
    public static final Logger s = Logger.getLogger(ei3.class.getName());
    public final Executor n;
    public final ArrayDeque o = new ArrayDeque();
    public int p = 1;
    public long q = 0;
    public final rf1 r = new rf1(this, 11);

    public ei3(Executor executor) {
        this.n = (Executor) Preconditions.checkNotNull(executor);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        synchronized (this.o) {
            int i = this.p;
            if (i != 4 && i != 3) {
                long j = this.q;
                boolean z = true;
                bc3 bc3Var = new bc3(runnable, 1);
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
                } catch (Error | RuntimeException e) {
                    synchronized (this.o) {
                        try {
                            int i2 = this.p;
                            if ((i2 != 1 && i2 != 2) || !this.o.removeLastOccurrence(bc3Var)) {
                                z = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.o.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.n + "}";
    }
}
