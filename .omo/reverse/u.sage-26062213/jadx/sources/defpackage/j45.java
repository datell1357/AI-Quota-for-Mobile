package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j45 extends q55 {
    public static final AtomicLong k = new AtomicLong(Long.MIN_VALUE);
    public g45 c;
    public g45 d;
    public final PriorityBlockingQueue e;
    public final LinkedBlockingQueue f;
    public final d45 g;
    public final d45 h;
    public final Object i;
    public final Semaphore j;

    public j45(r45 r45Var) {
        super(r45Var);
        this.i = new Object();
        this.j = new Semaphore(2);
        this.e = new PriorityBlockingQueue();
        this.f = new LinkedBlockingQueue();
        this.g = new d45(this, "Thread death: Uncaught exception on worker thread");
        this.h = new d45(this, "Thread death: Uncaught exception on network thread");
    }

    public final void A() {
        if (Thread.currentThread() != this.c) {
            return;
        }
        k21.n("Call not expected from worker thread");
    }

    public final boolean B() {
        return Thread.currentThread() == this.c;
    }

    public final f45 C(Callable callable) {
        x();
        Preconditions.checkNotNull(callable);
        f45 f45Var = new f45(this, callable, false);
        if (Thread.currentThread() != this.c) {
            I(f45Var);
            return f45Var;
        }
        if (!this.e.isEmpty()) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.a("Callable skipped the worker queue.");
        }
        f45Var.run();
        return f45Var;
    }

    public final f45 D(Callable callable) {
        x();
        Preconditions.checkNotNull(callable);
        f45 f45Var = new f45(this, callable, true);
        if (Thread.currentThread() == this.c) {
            f45Var.run();
            return f45Var;
        }
        I(f45Var);
        return f45Var;
    }

    public final void E(Runnable runnable) {
        x();
        Preconditions.checkNotNull(runnable);
        I(new f45(this, runnable, false, "Task exception on worker thread"));
    }

    public final Object F(AtomicReference atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            j45 j45Var = ((r45) this.a).g;
            r45.l(j45Var);
            j45Var.E(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                a25 a25Var = ((r45) this.a).f;
                r45.l(a25Var);
                x15 x15Var = a25Var.i;
                StringBuilder sb = new StringBuilder(str.length() + 24);
                sb.append("Interrupted waiting for ");
                sb.append(str);
                x15Var.a(sb.toString());
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            a25 a25Var2 = ((r45) this.a).f;
            r45.l(a25Var2);
            a25Var2.i.a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void G(Runnable runnable) {
        x();
        Preconditions.checkNotNull(runnable);
        I(new f45(this, runnable, true, "Task exception on worker thread"));
    }

    public final void H(Runnable runnable) {
        x();
        Preconditions.checkNotNull(runnable);
        f45 f45Var = new f45(this, runnable, false, "Task exception on network thread");
        synchronized (this.i) {
            try {
                LinkedBlockingQueue linkedBlockingQueue = this.f;
                linkedBlockingQueue.add(f45Var);
                g45 g45Var = this.d;
                if (g45Var == null) {
                    g45 g45Var2 = new g45(this, "Measurement Network", linkedBlockingQueue);
                    this.d = g45Var2;
                    g45Var2.setUncaughtExceptionHandler(this.h);
                    this.d.start();
                } else {
                    Object obj = g45Var.n;
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void I(f45 f45Var) {
        synchronized (this.i) {
            try {
                PriorityBlockingQueue priorityBlockingQueue = this.e;
                priorityBlockingQueue.add(f45Var);
                g45 g45Var = this.c;
                if (g45Var == null) {
                    g45 g45Var2 = new g45(this, "Measurement Worker", priorityBlockingQueue);
                    this.c = g45Var2;
                    g45Var2.setUncaughtExceptionHandler(this.g);
                    this.c.start();
                } else {
                    Object obj = g45Var.n;
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ib0
    public final void v() {
        if (Thread.currentThread() == this.c) {
            return;
        }
        k21.n("Call expected from worker thread");
    }

    @Override // defpackage.q55
    public final boolean w() {
        return false;
    }

    public final void z() {
        if (Thread.currentThread() == this.d) {
            return;
        }
        k21.n("Call expected from network thread");
    }
}
