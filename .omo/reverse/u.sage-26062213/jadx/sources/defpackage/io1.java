package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class io1 {
    public final hi0 a;
    public final hi0 b;
    public final hi0 c;
    public final pe1 d;
    public final pe1 e;
    public final pe1 f;
    public final qn3 g;
    public final rd3 h;
    public final cx2 i;

    public io1(hi0 hi0Var, hi0 hi0Var2, hi0 hi0Var3, pe1 pe1Var, pe1 pe1Var2, pe1 pe1Var3, qn3 qn3Var, rd3 rd3Var, cx2 cx2Var) {
        this.a = hi0Var;
        this.b = hi0Var2;
        this.c = hi0Var3;
        this.d = pe1Var;
        this.e = pe1Var2;
        this.f = pe1Var3;
        this.g = qn3Var;
        this.h = rd3Var;
        this.i = cx2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof io1)) {
            return false;
        }
        io1 io1Var = (io1) obj;
        return nt1.g(this.a, io1Var.a) && nt1.g(this.b, io1Var.b) && nt1.g(this.c, io1Var.c) && nt1.g(this.d, io1Var.d) && nt1.g(this.e, io1Var.e) && nt1.g(this.f, io1Var.f) && nt1.g(this.g, io1Var.g) && this.h == io1Var.h && this.i == io1Var.i;
    }

    public final int hashCode() {
        hi0 hi0Var = this.a;
        int iHashCode = (hi0Var == null ? 0 : hi0Var.hashCode()) * 31;
        hi0 hi0Var2 = this.b;
        int iHashCode2 = (iHashCode + (hi0Var2 == null ? 0 : hi0Var2.hashCode())) * 31;
        hi0 hi0Var3 = this.c;
        int iHashCode3 = (iHashCode2 + (hi0Var3 == null ? 0 : hi0Var3.hashCode())) * 923521;
        pe1 pe1Var = this.d;
        int iHashCode4 = (iHashCode3 + (pe1Var == null ? 0 : pe1Var.hashCode())) * 31;
        pe1 pe1Var2 = this.e;
        int iHashCode5 = (iHashCode4 + (pe1Var2 == null ? 0 : pe1Var2.hashCode())) * 31;
        pe1 pe1Var3 = this.f;
        int iHashCode6 = (iHashCode5 + (pe1Var3 == null ? 0 : pe1Var3.hashCode())) * 31;
        qn3 qn3Var = this.g;
        int iHashCode7 = (iHashCode6 + (qn3Var == null ? 0 : qn3Var.hashCode())) * 31;
        rd3 rd3Var = this.h;
        int iHashCode8 = (iHashCode7 + (rd3Var == null ? 0 : rd3Var.hashCode())) * 31;
        cx2 cx2Var = this.i;
        return iHashCode8 + (cx2Var != null ? cx2Var.hashCode() : 0);
    }

    public final String toString() {
        return "Defined(fileSystem=null, interceptorCoroutineContext=" + this.a + ", fetcherCoroutineContext=" + this.b + ", decoderCoroutineContext=" + this.c + ", memoryCachePolicy=null, diskCachePolicy=null, networkCachePolicy=null, placeholderFactory=" + this.d + ", errorFactory=" + this.e + ", fallbackFactory=" + this.f + ", sizeResolver=" + this.g + ", scale=" + this.h + ", precision=" + this.i + ")";
    }
}
