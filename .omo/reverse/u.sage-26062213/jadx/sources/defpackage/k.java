package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class k extends n91 implements Runnable {
    public static final /* synthetic */ int y = 0;
    public ListenableFuture v;
    public Class w;
    public Object x;

    public k(ListenableFuture listenableFuture, Class cls, Object obj) {
        this.v = listenableFuture;
        this.w = cls;
        this.x = obj;
    }

    @Override // defpackage.s0
    public final void e() {
        ListenableFuture listenableFuture = this.v;
        if ((listenableFuture != null) & (this.n instanceof l0)) {
            listenableFuture.cancel(p());
        }
        this.v = null;
        this.w = null;
        this.x = null;
    }

    @Override // defpackage.s0
    public final String l() {
        String str;
        ListenableFuture listenableFuture = this.v;
        Class cls = this.w;
        Object obj = this.x;
        String strL = super.l();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (cls == null || obj == null) {
            if (strL != null) {
                return str.concat(strL);
            }
            return null;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + obj + "]";
    }

    public abstract Object q(Object obj, Throwable th);

    public abstract void r(Object obj);

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.v;
        Class cls = this.w;
        Object obj = this.x;
        if (((obj == null) || ((listenableFuture == null) | (cls == null))) || (this.n instanceof l0)) {
            return;
        }
        this.v = null;
        try {
            th = listenableFuture instanceof b1 ? ((b1) listenableFuture).c() : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + listenableFuture.getClass() + " threw " + e.getClass() + " without a cause");
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        Object objB = th == null ? tf1.b(listenableFuture) : null;
        if (th == null) {
            m(objB);
            return;
        }
        if (!cls.isInstance(th)) {
            o(listenableFuture);
            return;
        }
        try {
            Object objQ = q(obj, th);
            this.w = null;
            this.x = null;
            r(objQ);
        } catch (Throwable th2) {
            try {
                if (th2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                n(th2);
            } finally {
                this.w = null;
                this.x = null;
            }
        }
    }
}
