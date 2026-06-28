package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xt3 implements oo1 {
    public final ao1 a;
    public final jo1 b;
    public final km0 c;
    public final qb2 d;
    public final String e;
    public final boolean f;
    public final boolean g;

    public xt3(ao1 ao1Var, jo1 jo1Var, km0 km0Var, qb2 qb2Var, String str, boolean z, boolean z2) {
        this.a = ao1Var;
        this.b = jo1Var;
        this.c = km0Var;
        this.d = qb2Var;
        this.e = str;
        this.f = z;
        this.g = z2;
    }

    @Override // defpackage.oo1
    public final jo1 a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xt3)) {
            return false;
        }
        xt3 xt3Var = (xt3) obj;
        return nt1.g(this.a, xt3Var.a) && nt1.g(this.b, xt3Var.b) && this.c == xt3Var.c && nt1.g(this.d, xt3Var.d) && nt1.g(this.e, xt3Var.e) && this.f == xt3Var.f && this.g == xt3Var.g;
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        qb2 qb2Var = this.d;
        int iHashCode2 = (iHashCode + (qb2Var == null ? 0 : qb2Var.hashCode())) * 31;
        String str = this.e;
        return Boolean.hashCode(this.g) + xw1.n((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31, this.f, 31);
    }

    public final String toString() {
        return "SuccessResult(image=" + this.a + ", request=" + this.b + ", dataSource=" + this.c + ", memoryCacheKey=" + this.d + ", diskCacheKey=" + this.e + ", isSampled=" + this.f + ", isPlaceholderCached=" + this.g + ")";
    }
}
