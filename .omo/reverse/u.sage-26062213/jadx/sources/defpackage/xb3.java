package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xb3 implements Map.Entry {
    public final Object n;
    public final Object o;
    public xb3 p;
    public xb3 q;

    public xb3(Object obj, Object obj2) {
        this.n = obj;
        this.o = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xb3)) {
            return false;
        }
        xb3 xb3Var = (xb3) obj;
        return this.n.equals(xb3Var.n) && this.o.equals(xb3Var.o);
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
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.n + "=" + this.o;
    }
}
