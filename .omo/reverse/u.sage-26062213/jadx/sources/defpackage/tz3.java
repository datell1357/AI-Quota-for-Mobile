package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tz3 implements Runnable {
    public final /* synthetic */ int n;
    public final ListenableFuture o;
    public final o20 p;

    public /* synthetic */ tz3(ListenableFuture listenableFuture, o20 o20Var, int i) {
        this.n = i;
        this.o = listenableFuture;
        this.p = o20Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        o20 o20Var = this.p;
        ListenableFuture listenableFuture = this.o;
        switch (i) {
            case 0:
                if (listenableFuture.isCancelled()) {
                    o20Var.l(null);
                    return;
                }
                boolean z = false;
                while (true) {
                    try {
                        try {
                            Object obj = listenableFuture.get();
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            o20Var.g(obj);
                            return;
                        } catch (ExecutionException e) {
                            Throwable cause = e.getCause();
                            cause.getClass();
                            o20Var.g(new f83(cause));
                            return;
                        }
                    } catch (InterruptedException unused) {
                        z = true;
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
                break;
            default:
                if (listenableFuture.isCancelled()) {
                    o20Var.l(null);
                    return;
                }
                try {
                    o20Var.g(b2.g(listenableFuture));
                    return;
                } catch (ExecutionException e2) {
                    Throwable cause2 = e2.getCause();
                    if (cause2 != null) {
                        o20Var.g(new f83(cause2));
                        return;
                    } else {
                        ux1 ux1Var = new ux1();
                        nt1.R(ux1Var, nt1.class.getName());
                        throw ux1Var;
                    }
                }
        }
    }
}
