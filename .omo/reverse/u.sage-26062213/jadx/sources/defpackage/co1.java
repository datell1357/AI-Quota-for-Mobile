package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class co1 implements x41 {
    public final ao1 a;
    public final boolean b;
    public final km0 c;

    public co1(ao1 ao1Var, boolean z, km0 km0Var) {
        this.a = ao1Var;
        this.b = z;
        this.c = km0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof co1)) {
            return false;
        }
        co1 co1Var = (co1) obj;
        return this.a.equals(co1Var.a) && this.b == co1Var.b && this.c == co1Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + xw1.n(this.a.hashCode() * 31, this.b, 31);
    }

    public final String toString() {
        return "ImageFetchResult(image=" + this.a + ", isSampled=" + this.b + ", dataSource=" + this.c + ")";
    }
}
