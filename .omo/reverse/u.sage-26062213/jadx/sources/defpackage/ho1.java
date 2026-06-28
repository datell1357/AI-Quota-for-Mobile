package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ho1 {
    public static final ho1 o;
    public final r51 a;
    public final hi0 b;
    public final hi0 c;
    public final hi0 d;
    public final y00 e;
    public final y00 f;
    public final y00 g;
    public final pe1 h;
    public final pe1 i;
    public final pe1 j;
    public final qn3 k;
    public final rd3 l;
    public final cx2 m;
    public final h41 n;

    static {
        gd3 gd3Var = gd3.p;
        dx1 dx1Var = r51.n;
        zp0 zp0Var = zu0.a;
        lp0 lp0Var = lp0.p;
        v23 v23Var = qn3.a;
        cx2 cx2Var = cx2.n;
        h41 h41Var = h41.b;
        d01 d01Var = d01.n;
        y00 y00Var = y00.ENABLED;
        o = new ho1(dx1Var, d01Var, lp0Var, lp0Var, y00Var, y00Var, y00Var, gd3Var, gd3Var, gd3Var, v23Var, rd3.o, cx2Var, h41Var);
    }

    public ho1(r51 r51Var, hi0 hi0Var, hi0 hi0Var2, hi0 hi0Var3, y00 y00Var, y00 y00Var2, y00 y00Var3, pe1 pe1Var, pe1 pe1Var2, pe1 pe1Var3, qn3 qn3Var, rd3 rd3Var, cx2 cx2Var, h41 h41Var) {
        this.a = r51Var;
        this.b = hi0Var;
        this.c = hi0Var2;
        this.d = hi0Var3;
        this.e = y00Var;
        this.f = y00Var2;
        this.g = y00Var3;
        this.h = pe1Var;
        this.i = pe1Var2;
        this.j = pe1Var3;
        this.k = qn3Var;
        this.l = rd3Var;
        this.m = cx2Var;
        this.n = h41Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ho1)) {
            return false;
        }
        ho1 ho1Var = (ho1) obj;
        return nt1.g(this.a, ho1Var.a) && nt1.g(this.b, ho1Var.b) && nt1.g(this.c, ho1Var.c) && nt1.g(this.d, ho1Var.d) && this.e == ho1Var.e && this.f == ho1Var.f && this.g == ho1Var.g && nt1.g(this.h, ho1Var.h) && nt1.g(this.i, ho1Var.i) && nt1.g(this.j, ho1Var.j) && nt1.g(this.k, ho1Var.k) && this.l == ho1Var.l && this.m == ho1Var.m && nt1.g(this.n, ho1Var.n);
    }

    public final int hashCode() {
        return this.n.a.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Defaults(fileSystem=" + this.a + ", interceptorCoroutineContext=" + this.b + ", fetcherCoroutineContext=" + this.c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.e + ", diskCachePolicy=" + this.f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.h + ", errorFactory=" + this.i + ", fallbackFactory=" + this.j + ", sizeResolver=" + this.k + ", scale=" + this.l + ", precision=" + this.m + ", extras=" + this.n + ")";
    }
}
