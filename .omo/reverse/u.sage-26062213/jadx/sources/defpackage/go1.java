package defpackage;

import android.content.Context;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class go1 {
    public final Context a;
    public ho1 b;
    public Object c;
    public jw3 d;
    public final Map e;
    public hi0 f;
    public hi0 g;
    public hi0 h;
    public final pe1 i;
    public final pe1 j;
    public final pe1 k;
    public qn3 l;
    public rd3 m;
    public cx2 n;
    public final h41 o;

    public go1(jo1 jo1Var, Context context) {
        this.a = context;
        this.b = jo1Var.t;
        this.c = jo1Var.b;
        this.d = jo1Var.c;
        this.e = jo1Var.d;
        io1 io1Var = jo1Var.s;
        this.f = io1Var.a;
        this.g = io1Var.b;
        this.h = io1Var.c;
        this.i = io1Var.d;
        this.j = io1Var.e;
        this.k = io1Var.f;
        this.l = io1Var.g;
        this.m = io1Var.h;
        this.n = io1Var.i;
        this.o = jo1Var.r;
    }

    public final jo1 a() {
        Map mapG;
        Object obj = this.c;
        if (obj == null) {
            obj = hn2.a;
        }
        Object obj2 = obj;
        jw3 jw3Var = this.d;
        Boolean bool = Boolean.FALSE;
        Map map = this.e;
        if (nt1.g(map, bool)) {
            map.getClass();
            mapG = k30.G(n44.P(map));
        } else {
            if (!(map instanceof Map)) {
                throw new AssertionError();
            }
            mapG = map;
        }
        Map map2 = mapG;
        map2.getClass();
        ho1 ho1Var = this.b;
        r51 r51Var = ho1Var.a;
        y00 y00Var = ho1Var.e;
        y00 y00Var2 = ho1Var.f;
        y00 y00Var3 = ho1Var.g;
        hi0 hi0Var = this.f;
        if (hi0Var == null) {
            hi0Var = ho1Var.b;
        }
        hi0 hi0Var2 = hi0Var;
        hi0 hi0Var3 = this.g;
        if (hi0Var3 == null) {
            hi0Var3 = ho1Var.c;
        }
        hi0 hi0Var4 = hi0Var3;
        hi0 hi0Var5 = this.h;
        if (hi0Var5 == null) {
            hi0Var5 = ho1Var.d;
        }
        hi0 hi0Var6 = hi0Var5;
        pe1 pe1Var = this.i;
        if (pe1Var == null) {
            pe1Var = ho1Var.h;
        }
        pe1 pe1Var2 = pe1Var;
        pe1 pe1Var3 = this.j;
        if (pe1Var3 == null) {
            pe1Var3 = ho1Var.i;
        }
        pe1 pe1Var4 = pe1Var3;
        pe1 pe1Var5 = this.k;
        if (pe1Var5 == null) {
            pe1Var5 = ho1Var.j;
        }
        pe1 pe1Var6 = pe1Var5;
        qn3 qn3Var = this.l;
        if (qn3Var == null) {
            qn3Var = ho1Var.k;
        }
        qn3 qn3Var2 = qn3Var;
        rd3 rd3Var = this.m;
        if (rd3Var == null) {
            rd3Var = ho1Var.l;
        }
        rd3 rd3Var2 = rd3Var;
        cx2 cx2Var = this.n;
        if (cx2Var == null) {
            cx2Var = ho1Var.m;
        }
        cx2 cx2Var2 = cx2Var;
        h41 h41Var = this.o;
        if (h41Var == null) {
            throw new AssertionError();
        }
        return new jo1(this.a, obj2, jw3Var, map2, r51Var, hi0Var2, hi0Var4, hi0Var6, y00Var, y00Var2, y00Var3, pe1Var2, pe1Var4, pe1Var6, qn3Var2, rd3Var2, cx2Var2, h41Var, new io1(this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n), this.b);
    }

    public go1(Context context) {
        this.a = context;
        this.b = ho1.o;
        this.c = null;
        this.d = null;
        this.e = h01.n;
        this.f = null;
        this.g = null;
        this.h = null;
        gd3 gd3Var = gd3.p;
        this.i = gd3Var;
        this.j = gd3Var;
        this.k = gd3Var;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = h41.b;
    }
}
