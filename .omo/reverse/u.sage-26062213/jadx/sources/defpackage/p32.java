package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p32 extends r32 {
    public final String a;
    public final qx3 b;

    public p32(String str, qx3 qx3Var) {
        this.a = str;
        this.b = qx3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p32)) {
            return false;
        }
        p32 p32Var = (p32) obj;
        return this.a.equals(p32Var.a) && nt1.g(this.b, p32Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        qx3 qx3Var = this.b;
        return (iHashCode + (qx3Var != null ? qx3Var.hashCode() : 0)) * 31;
    }

    public final String toString() {
        return di0.v("LinkAnnotation.Clickable(tag=", this.a, ")");
    }
}
