package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class tf1 {
    public static i a(ListenableFuture listenableFuture, Class cls, qi qiVar, Executor executor) {
        int i = k.y;
        i iVar = new i(listenableFuture, cls, qiVar);
        listenableFuture.a(iVar, k75.I(executor, iVar));
        return iVar;
    }

    public static Object b(Future future) {
        if (future.isDone()) {
            return bi4.y(future);
        }
        k21.n(ht4.w("Future was expected to be done: %s", future));
        return null;
    }

    public static ap1 c(Object obj) {
        return obj == null ? ap1.o : new ap1(obj);
    }

    public static ListenableFuture d(ListenableFuture listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        sf1 sf1Var = new sf1();
        sf1Var.f316u = listenableFuture;
        listenableFuture.a(sf1Var, fu0.n);
        return sf1Var;
    }

    public static i2 e(ListenableFuture listenableFuture, ze1 ze1Var, Executor executor) {
        int i = j2.x;
        i2 i2Var = new i2(listenableFuture, ze1Var);
        listenableFuture.a(i2Var, k75.I(executor, i2Var));
        return i2Var;
    }

    public static h2 f(ListenableFuture listenableFuture, qi qiVar, Executor executor) {
        int i = j2.x;
        h2 h2Var = new h2(listenableFuture, qiVar);
        listenableFuture.a(h2Var, k75.I(executor, h2Var));
        return h2Var;
    }
}
