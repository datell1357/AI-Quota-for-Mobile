package defpackage;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e23 implements Runnable {
    public final dh1 n;
    public volatile AtomicInteger o = new AtomicInteger(0);
    public final /* synthetic */ h23 p;

    public e23(h23 h23Var, dh1 dh1Var) {
        this.p = h23Var;
        this.n = dh1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        qd1 qd1Var;
        String strConcat = "OkHttp ".concat(this.p.o.a.f());
        h23 h23Var = this.p;
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(strConcat);
        try {
            h23Var.q.h();
            boolean z = false;
            try {
                try {
                } catch (Throwable th) {
                    qd1 qd1Var2 = h23Var.n.a;
                    qd1Var2.getClass();
                    qd1.F(qd1Var2, null, this, 3);
                    throw th;
                }
            } catch (IOException e) {
                e = e;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                ((o20) this.n.n).h(h23Var.f(), g20.o);
                qd1Var = h23Var.n.a;
            } catch (IOException e2) {
                e = e2;
                z = true;
                if (z) {
                    iv2 iv2Var = iv2.a;
                    iv2.a.i(4, "Callback failure for ".concat(h23.a(h23Var)), e);
                } else {
                    ((o20) this.n.n).g(new f83(e));
                }
                qd1Var = h23Var.n.a;
            } catch (Throwable th3) {
                th = th3;
                z = true;
                h23Var.d();
                if (!z) {
                    IOException iOException = new IOException("canceled due to " + th);
                    iOException.initCause(th);
                    ((o20) this.n.n).g(new f83(iOException));
                }
                if (!(th instanceof InterruptedException)) {
                    throw th;
                }
                Thread.currentThread().interrupt();
                qd1Var = h23Var.n.a;
            }
            qd1Var.getClass();
            qd1.F(qd1Var, null, this, 3);
        } finally {
            threadCurrentThread.setName(name);
        }
    }
}
