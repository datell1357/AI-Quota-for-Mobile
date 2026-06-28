package defpackage;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g21 implements ut3, v03 {
    public final HashMap a = new HashMap();
    public ArrayDeque b = new ArrayDeque();

    public final synchronized void a() {
        gu0 gu0Var = gu0.p;
        ls3 ls3Var = ls3.q;
        synchronized (this) {
            try {
                if (!this.a.containsKey(dm0.class)) {
                    this.a.put(dm0.class, new ConcurrentHashMap());
                }
                ((ConcurrentHashMap) this.a.get(dm0.class)).put(ls3Var, gu0Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
