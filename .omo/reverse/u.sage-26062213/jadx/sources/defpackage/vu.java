package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vu implements ul1 {
    public final ConcurrentHashMap n = new ConcurrentHashMap();

    @Override // defpackage.ul1
    public final Object b(String str) {
        return this.n.get(str);
    }

    public final String toString() {
        return this.n.toString();
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        ConcurrentHashMap concurrentHashMap = this.n;
        if (obj != null) {
            concurrentHashMap.put(str, obj);
        } else {
            concurrentHashMap.remove(str);
        }
    }
}
