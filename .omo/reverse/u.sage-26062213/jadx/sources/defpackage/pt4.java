package defpackage;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pt4 extends Thread {
    public final WeakReference n;
    public final long o;
    public final CountDownLatch p = new CountDownLatch(1);
    public boolean q = false;

    public pt4(g7 g7Var, long j) {
        this.n = new WeakReference(g7Var);
        this.o = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        g7 g7Var;
        WeakReference weakReference = this.n;
        try {
            if (this.p.await(this.o, TimeUnit.MILLISECONDS) || (g7Var = (g7) weakReference.get()) == null) {
                return;
            }
            g7Var.b();
            this.q = true;
        } catch (InterruptedException unused) {
            g7 g7Var2 = (g7) weakReference.get();
            if (g7Var2 != null) {
                g7Var2.b();
                this.q = true;
            }
        }
    }
}
