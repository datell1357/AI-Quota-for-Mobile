package defpackage;

import android.content.Context;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jo1 {
    public final Context a;
    public final Object b;
    public final jw3 c;
    public final Map d;
    public final r51 e;
    public final hi0 f;
    public final hi0 g;
    public final hi0 h;
    public final y00 i;
    public final y00 j;
    public final y00 k;
    public final pe1 l;
    public final pe1 m;
    public final pe1 n;
    public final qn3 o;
    public final rd3 p;
    public final cx2 q;
    public final h41 r;
    public final io1 s;
    public final ho1 t;

    public jo1(Context context, Object obj, jw3 jw3Var, Map map, r51 r51Var, hi0 hi0Var, hi0 hi0Var2, hi0 hi0Var3, y00 y00Var, y00 y00Var2, y00 y00Var3, pe1 pe1Var, pe1 pe1Var2, pe1 pe1Var3, qn3 qn3Var, rd3 rd3Var, cx2 cx2Var, h41 h41Var, io1 io1Var, ho1 ho1Var) {
        this.a = context;
        this.b = obj;
        this.c = jw3Var;
        this.d = map;
        this.e = r51Var;
        this.f = hi0Var;
        this.g = hi0Var2;
        this.h = hi0Var3;
        this.i = y00Var;
        this.j = y00Var2;
        this.k = y00Var3;
        this.l = pe1Var;
        this.m = pe1Var2;
        this.n = pe1Var3;
        this.o = qn3Var;
        this.p = rd3Var;
        this.q = cx2Var;
        this.r = h41Var;
        this.s = io1Var;
        this.t = ho1Var;
    }

    public static go1 a(jo1 jo1Var) {
        Context context = jo1Var.a;
        jo1Var.getClass();
        return new go1(jo1Var, context);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jo1)) {
            return false;
        }
        jo1 jo1Var = (jo1) obj;
        return nt1.g(this.a, jo1Var.a) && this.b.equals(jo1Var.b) && nt1.g(this.c, jo1Var.c) && this.d.equals(jo1Var.d) && nt1.g(this.e, jo1Var.e) && nt1.g(this.f, jo1Var.f) && nt1.g(this.g, jo1Var.g) && nt1.g(this.h, jo1Var.h) && this.i == jo1Var.i && this.j == jo1Var.j && this.k == jo1Var.k && nt1.g(this.l, jo1Var.l) && nt1.g(this.m, jo1Var.m) && nt1.g(this.n, jo1Var.n) && nt1.g(this.o, jo1Var.o) && this.p == jo1Var.p && this.q == jo1Var.q && this.r.equals(jo1Var.r) && this.s.equals(jo1Var.s) && nt1.g(this.t, jo1Var.t);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        jw3 jw3Var = this.c;
        return this.t.hashCode() + ((this.s.hashCode() + ((this.r.a.hashCode() + ((this.q.hashCode() + ((this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((iHashCode + (jw3Var == null ? 0 : jw3Var.hashCode())) * 29791)) * 961)) * 29791)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImageRequest(context=" + this.a + ", data=" + this.b + ", target=" + this.c + ", listener=null, memoryCacheKey=null, memoryCacheKeyExtras=" + this.d + ", diskCacheKey=null, fileSystem=" + this.e + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.f + ", fetcherCoroutineContext=" + this.g + ", decoderCoroutineContext=" + this.h + ", memoryCachePolicy=" + this.i + ", diskCachePolicy=" + this.j + ", networkCachePolicy=" + this.k + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.l + ", errorFactory=" + this.m + ", fallbackFactory=" + this.n + ", sizeResolver=" + this.o + ", scale=" + this.p + ", precision=" + this.q + ", extras=" + this.r + ", defined=" + this.s + ", defaults=" + this.t + ")";
    }
}
