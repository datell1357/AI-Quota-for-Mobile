package defpackage;

import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y43 implements r82 {
    public final ConcurrentHashMap a;

    public y43(HashMap map) {
        this.a = new ConcurrentHashMap(map);
    }

    @Override // defpackage.r82
    public final Object a(String str) {
        if (str == null) {
            return null;
        }
        return this.a.get(str.toLowerCase(Locale.ROOT));
    }

    public final String toString() {
        return this.a.toString();
    }
}
