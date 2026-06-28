package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ao {
    public final Object a;
    public final ry2 b;

    public ao(Object obj, ry2 ry2Var) {
        this.a = obj;
        this.b = ry2Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ao)) {
            return false;
        }
        ao aoVar = (ao) obj;
        return this.a.equals(aoVar.a) && this.b.equals(aoVar.b);
    }

    public final int hashCode() {
        return (this.b.hashCode() ^ (((1000003 * 1000003) ^ this.a.hashCode()) * 1000003)) * (-721379959);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.a + ", priority=" + this.b + ", productData=null, eventContext=null}";
    }
}
