package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r01 {
    public final ao1 a;
    public final boolean b;
    public final km0 c;
    public final String d;

    public r01(ao1 ao1Var, boolean z, km0 km0Var, String str) {
        this.a = ao1Var;
        this.b = z;
        this.c = km0Var;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r01)) {
            return false;
        }
        r01 r01Var = (r01) obj;
        return nt1.g(this.a, r01Var.a) && this.b == r01Var.b && this.c == r01Var.c && nt1.g(this.d, r01Var.d);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + xw1.n(this.a.hashCode() * 31, this.b, 31)) * 31;
        String str = this.d;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ExecuteResult(image=" + this.a + ", isSampled=" + this.b + ", dataSource=" + this.c + ", diskCacheKey=" + this.d + ")";
    }
}
