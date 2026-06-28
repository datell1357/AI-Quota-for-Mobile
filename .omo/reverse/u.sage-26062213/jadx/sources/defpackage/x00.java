package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class x00 {
    public static <K, V> x00 asyncReloading(x00 x00Var, Executor executor) {
        x00Var.getClass();
        executor.getClass();
        return new t00(x00Var, executor);
    }

    public static <K, V> x00 from(ze1 ze1Var) {
        return new u00(ze1Var);
    }

    public abstract Object load(Object obj);

    public Map<Object, Object> loadAll(Iterable<Object> iterable) {
        throw new w00();
    }

    public ListenableFuture reload(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        return tf1.c(load(obj));
    }

    public static <V> x00 from(cu3 cu3Var) {
        return new u00(cu3Var);
    }
}
