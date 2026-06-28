package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class j2 extends n91 implements Runnable {
    public static final /* synthetic */ int x = 0;
    public ListenableFuture v;
    public Object w;

    public j2(ListenableFuture listenableFuture, Object obj) {
        listenableFuture.getClass();
        this.v = listenableFuture;
        obj.getClass();
        this.w = obj;
    }

    @Override // defpackage.s0
    public final void e() {
        ListenableFuture listenableFuture = this.v;
        if ((listenableFuture != null) & (this.n instanceof l0)) {
            listenableFuture.cancel(p());
        }
        this.v = null;
        this.w = null;
    }

    @Override // defpackage.s0
    public final String l() {
        String str;
        ListenableFuture listenableFuture = this.v;
        Object obj = this.w;
        String strL = super.l();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (obj == null) {
            if (strL != null) {
                return str.concat(strL);
            }
            return null;
        }
        return str + "function=[" + obj + "]";
    }

    public abstract Object q(Object obj, Object obj2);

    public abstract void r(Object obj);

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.v;
        Object obj = this.w;
        if (((this.n instanceof l0) | (listenableFuture == null)) || (obj == null)) {
            return;
        }
        this.v = null;
        if (listenableFuture.isCancelled()) {
            o(listenableFuture);
            return;
        }
        try {
            try {
                Object objQ = q(obj, tf1.b(listenableFuture));
                this.w = null;
                r(objQ);
            } catch (Throwable th) {
                try {
                    if (th instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    n(th);
                } finally {
                    this.w = null;
                }
            }
        } catch (Error e) {
            n(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            n(e2.getCause());
        } catch (Exception e3) {
            n(e3);
        }
    }
}
