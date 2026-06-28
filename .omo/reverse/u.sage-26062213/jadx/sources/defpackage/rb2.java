package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rb2 {
    public final ao1 a;
    public final Map b;

    public rb2(ao1 ao1Var, Map map) {
        this.a = ao1Var;
        this.b = k30.G(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rb2)) {
            return false;
        }
        rb2 rb2Var = (rb2) obj;
        return nt1.g(this.a, rb2Var.a) && nt1.g(this.b, rb2Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Value(image=" + this.a + ", extras=" + this.b + ")";
    }
}
