package defpackage;

import java.util.concurrent.locks.AbstractOwnableSynchronizer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gt1 extends AbstractOwnableSynchronizer implements Runnable {
    public final ht1 n;

    public gt1(ht1 ht1Var) {
        this.n = ht1Var;
    }

    public static void a(gt1 gt1Var, Thread thread) {
        gt1Var.setExclusiveOwnerThread(thread);
    }

    public final String toString() {
        return this.n.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
