package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w32 implements Map.Entry {
    public w32 n;
    public w32 o;
    public w32 p;
    public w32 q;
    public w32 r;
    public final Object s;
    public final boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f390u;
    public int v;

    public w32(boolean z, w32 w32Var, Object obj, w32 w32Var2, w32 w32Var3) {
        this.n = w32Var;
        this.s = obj;
        this.t = z;
        this.v = 1;
        this.q = w32Var2;
        this.r = w32Var3;
        w32Var3.q = this;
        w32Var2.r = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.s;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f390u;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.s;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f390u;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.s;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f390u;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.t) {
            q73.r("value == null");
            return null;
        }
        Object obj2 = this.f390u;
        this.f390u = obj;
        return obj2;
    }

    public final String toString() {
        return this.s + "=" + this.f390u;
    }

    public w32(boolean z) {
        this.s = null;
        this.t = z;
        this.r = this;
        this.q = this;
    }
}
