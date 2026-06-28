package defpackage;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sw extends g0 {
    public final Thread s;
    public final l21 t;

    public sw(hi0 hi0Var, Thread thread, l21 l21Var) {
        super(hi0Var, true);
        this.s = thread;
        this.t = l21Var;
    }

    @Override // defpackage.bv1
    public final void p(Object obj) {
        Thread threadCurrentThread = Thread.currentThread();
        Thread thread = this.s;
        if (nt1.g(threadCurrentThread, thread)) {
            return;
        }
        LockSupport.unpark(thread);
    }
}
