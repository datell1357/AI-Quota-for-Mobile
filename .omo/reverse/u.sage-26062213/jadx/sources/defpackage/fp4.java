package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fp4 implements Map.Entry, Comparable {
    public final Comparable n;
    public Object o;
    public final /* synthetic */ ep4 p;

    public fp4(ep4 ep4Var, Comparable comparable, Object obj) {
        this.p = ep4Var;
        this.n = comparable;
        this.o = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.n.compareTo(((fp4) obj).n);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.n;
                if (comparable == null ? key == null : comparable.equals(key)) {
                    Object obj2 = this.o;
                    Object value = entry.getValue();
                    if (obj2 == null ? value == null : obj2.equals(value)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.n;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.o;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.n;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.o;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.p.g();
        Object obj2 = this.o;
        this.o = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.n);
        String strValueOf2 = String.valueOf(this.o);
        return di0.y(new StringBuilder(strValueOf.length() + 1 + strValueOf2.length()), strValueOf, "=", strValueOf2);
    }
}
