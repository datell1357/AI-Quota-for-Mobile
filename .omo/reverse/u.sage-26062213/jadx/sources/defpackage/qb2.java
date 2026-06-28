package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qb2 {
    public final String a;
    public final Map b;

    public qb2(String str, Map map) {
        this.a = str;
        this.b = k30.G(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qb2)) {
            return false;
        }
        qb2 qb2Var = (qb2) obj;
        return nt1.g(this.a, qb2Var.a) && nt1.g(this.b, qb2Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Key(key=" + this.a + ", extras=" + this.b + ")";
    }
}
