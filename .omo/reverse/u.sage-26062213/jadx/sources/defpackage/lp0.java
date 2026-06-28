package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lp0 extends j31 implements Executor {
    public static final lp0 p = new lp0();
    public static final ji0 q;

    static {
        x64 x64Var = x64.p;
        int i = bw3.a;
        if (64 >= i) {
            i = 64;
        }
        q = x64Var.q0(ca.N(i, "kotlinx.coroutines.io.parallelism", 12));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        n0(d01.n, runnable);
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        q.n0(hi0Var, runnable);
    }

    @Override // defpackage.ji0
    public final void o0(hi0 hi0Var, Runnable runnable) throws ru0 {
        q.o0(hi0Var, runnable);
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        return x64.p.q0(i);
    }

    @Override // defpackage.ji0
    public final String toString() {
        return "Dispatchers.IO";
    }
}
