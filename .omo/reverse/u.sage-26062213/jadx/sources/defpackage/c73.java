package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c73 implements Executor {
    public final /* synthetic */ int n;
    public final Object o;

    public c73() {
        this.n = 4;
        rk4 rk4Var = new rk4(Looper.getMainLooper());
        Looper.getMainLooper();
        this.o = rk4Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                Handler handler = (Handler) obj;
                runnable.getClass();
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            case 1:
                ((Executor) obj).execute(new bc3(runnable, 0));
                return;
            case 2:
                ((Handler) ((qd1) obj).q).post(runnable);
                return;
            case 3:
                j45 j45Var = ((r45) ((m75) obj).a).g;
                r45.l(j45Var);
                j45Var.E(runnable);
                return;
            default:
                ((rk4) obj).post(runnable);
                return;
        }
    }

    public /* synthetic */ c73(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }
}
