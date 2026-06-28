package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class js2 implements Serializable {
    public final Object n;
    public final Object o;

    public js2(Object obj, Object obj2) {
        this.n = obj;
        this.o = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof js2)) {
            return false;
        }
        js2 js2Var = (js2) obj;
        return nt1.g(this.n, js2Var.n) && nt1.g(this.o, js2Var.o);
    }

    public final int hashCode() {
        Object obj = this.n;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.o;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.n + ", " + this.o + ')';
    }
}
