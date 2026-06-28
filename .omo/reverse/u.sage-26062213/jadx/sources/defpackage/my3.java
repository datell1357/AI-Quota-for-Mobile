package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class my3 {
    public static final ThreadLocal a = new ThreadLocal();

    public static l21 a() {
        ThreadLocal threadLocal = a;
        l21 l21Var = (l21) threadLocal.get();
        if (l21Var != null) {
            return l21Var;
        }
        tw twVar = new tw(Thread.currentThread());
        threadLocal.set(twVar);
        return twVar;
    }
}
