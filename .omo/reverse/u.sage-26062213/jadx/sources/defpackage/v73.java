package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v73 {
    public k63 a;
    public d03 b;
    public String d;
    public aj1 e;
    public jp3 h;
    public w73 i;
    public w73 j;
    public w73 k;
    public long l;
    public long m;
    public mu0 n;
    public int c = -1;
    public y73 g = y73.n;
    public a14 o = a14.e;
    public dh1 f = new dh1(19, false);

    public static void b(String str, w73 w73Var) {
        if (w73Var != null) {
            if (w73Var.v != null) {
                k21.l(str.concat(".networkResponse != null"));
            } else if (w73Var.w != null) {
                k21.l(str.concat(".cacheResponse != null"));
            } else {
                if (w73Var.x == null) {
                    return;
                }
                k21.l(str.concat(".priorResponse != null"));
            }
        }
    }

    public final w73 a() {
        int i = this.c;
        if (i < 0) {
            q73.h(this.c, "code < 0: ");
            return null;
        }
        k63 k63Var = this.a;
        if (k63Var == null) {
            k21.n("request == null");
            return null;
        }
        d03 d03Var = this.b;
        if (d03Var == null) {
            k21.n("protocol == null");
            return null;
        }
        String str = this.d;
        if (str != null) {
            return new w73(k63Var, d03Var, str, i, this.e, this.f.m(), this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
        }
        k21.n("message == null");
        return null;
    }
}
