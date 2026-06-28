package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w24 implements Serializable {
    public final Object n;
    public final Object o;
    public final Object p;

    public w24(Object obj, Object obj2, Object obj3) {
        this.n = obj;
        this.o = obj2;
        this.p = obj3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w24)) {
            return false;
        }
        w24 w24Var = (w24) obj;
        return nt1.g(this.n, w24Var.n) && nt1.g(this.o, w24Var.o) && nt1.g(this.p, w24Var.p);
    }

    public final int hashCode() {
        Object obj = this.n;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.o;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.p;
        return iHashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.n + ", " + this.o + ", " + this.p + ')';
    }
}
