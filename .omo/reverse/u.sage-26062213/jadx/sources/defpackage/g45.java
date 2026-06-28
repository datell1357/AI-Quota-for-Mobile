package defpackage;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g45 extends Thread {
    public final Object n;
    public final BlockingQueue o;
    public boolean p = false;
    public final /* synthetic */ j45 q;

    public g45(j45 j45Var, String str, BlockingQueue blockingQueue) {
        this.q = j45Var;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.n = new Object();
        this.o = blockingQueue;
        setName(str);
    }

    public final void a() {
        j45 j45Var = this.q;
        synchronized (j45Var.i) {
            try {
                if (!this.p) {
                    j45Var.j.release();
                    j45Var.i.notifyAll();
                    if (this == j45Var.c) {
                        j45Var.c = null;
                    } else if (this == j45Var.d) {
                        j45Var.d = null;
                    } else {
                        a25 a25Var = ((r45) j45Var.a).f;
                        r45.l(a25Var);
                        a25Var.f.a("Current scheduler thread is neither worker nor network");
                    }
                    this.p = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.q.j.acquire();
                z = true;
            } catch (InterruptedException e) {
                a25 a25Var = ((r45) this.q.a).f;
                r45.l(a25Var);
                a25Var.i.b(e, String.valueOf(getName()).concat(" was interrupted"));
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.o;
                f45 f45Var = (f45) blockingQueue.poll();
                if (f45Var != null) {
                    Process.setThreadPriority(true != f45Var.o ? 10 : threadPriority);
                    f45Var.run();
                } else {
                    Object obj = this.n;
                    synchronized (obj) {
                        if (blockingQueue.peek() == null) {
                            this.q.getClass();
                            try {
                                obj.wait(30000L);
                            } catch (InterruptedException e2) {
                                a25 a25Var2 = ((r45) this.q.a).f;
                                r45.l(a25Var2);
                                a25Var2.i.b(e2, String.valueOf(getName()).concat(" was interrupted"));
                            }
                        }
                    }
                    synchronized (this.q.i) {
                        if (this.o.peek() == null) {
                            a();
                            a();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            a();
            throw th;
        }
    }
}
