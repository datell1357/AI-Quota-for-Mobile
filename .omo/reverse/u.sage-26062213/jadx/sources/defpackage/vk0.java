package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vk0 {
    public final LinkedHashMap a = new LinkedHashMap();

    public abstract Object a(uk0 uk0Var);

    public final boolean equals(Object obj) {
        if (obj instanceof vk0) {
            return nt1.g(this.a, ((vk0) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CreationExtras(extras=" + this.a + ')';
    }
}
