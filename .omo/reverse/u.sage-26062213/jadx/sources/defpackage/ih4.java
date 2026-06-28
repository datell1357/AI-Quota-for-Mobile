package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ih4 {
    public static final String a = t72.i("WorkerWrapper");

    public static final Object a(ListenableFuture listenableFuture, v42 v42Var, bv3 bv3Var) {
        Object obj;
        try {
            int i = 0;
            if (!listenableFuture.isDone()) {
                o20 o20Var = new o20(1, dm0.A(bv3Var));
                o20Var.x();
                listenableFuture.a(new tz3(listenableFuture, o20Var, i), eu0.n);
                o20Var.z(new ih1(3, v42Var, listenableFuture));
                return o20Var.v();
            }
            while (true) {
                try {
                    obj = listenableFuture.get();
                    break;
                } catch (InterruptedException unused) {
                    i = 1;
                } catch (Throwable th) {
                    if (i != 0) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (i != 0) {
                Thread.currentThread().interrupt();
            }
            return obj;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            cause.getClass();
            throw cause;
        }
    }
}
