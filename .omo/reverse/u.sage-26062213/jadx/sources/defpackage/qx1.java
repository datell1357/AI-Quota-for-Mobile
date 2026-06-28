package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qx1 {
    public final Float a;
    public my0 b;

    public qx1(Float f, my0 my0Var) {
        this.a = f;
        this.b = my0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qx1)) {
            return false;
        }
        qx1 qx1Var = (qx1) obj;
        return qx1Var.a.equals(this.a) && nt1.g(qx1Var.b, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + xw1.j(0, this.a.hashCode() * 31, 31);
    }
}
