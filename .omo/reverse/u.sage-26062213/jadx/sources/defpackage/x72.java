package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x72 {
    public final String a;
    public final String b;

    public x72(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x72)) {
            return false;
        }
        x72 x72Var = (x72) obj;
        return nt1.g(this.a, x72Var.a) && nt1.g(this.b, x72Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return xw1.r("LoginStatus(type=", this.a, ", message=", this.b, ")");
    }
}
