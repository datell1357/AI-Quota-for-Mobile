package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u62 implements Map.Entry {
    public final Object n;
    public Object o;
    public final /* synthetic */ v62 p;

    public u62(v62 v62Var, Object obj, Object obj2) {
        this.p = v62Var;
        this.n = obj;
        this.o = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.n.equals(entry.getKey()) && this.o.equals(entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.n;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.o;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.o.hashCode() ^ this.n.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object objPut = this.p.put(this.n, obj);
        this.o = obj;
        return objPut;
    }

    public final String toString() {
        return this.n + "=" + this.o;
    }
}
