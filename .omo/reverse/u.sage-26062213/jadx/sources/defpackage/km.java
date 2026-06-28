package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class km extends l60 {
    public final hm a;

    public km(hm hmVar) {
        this.a = hmVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l60)) {
            return false;
        }
        l60 l60Var = (l60) obj;
        Object obj2 = k60.n;
        if (obj2.equals(obj2)) {
            return this.a.equals(((km) l60Var).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ ((k60.n.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ClientInfo{clientType=" + k60.n + ", androidClientInfo=" + this.a + "}";
    }
}
