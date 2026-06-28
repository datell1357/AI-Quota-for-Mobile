package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ug3 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;
    public final long l;
    public final long m;

    public ug3(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
        this.i = j9;
        this.j = j10;
        this.k = j11;
        this.l = j12;
        this.m = j13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ug3)) {
            return false;
        }
        ug3 ug3Var = (ug3) obj;
        return t70.c(this.a, ug3Var.a) && t70.c(this.b, ug3Var.b) && t70.c(this.c, ug3Var.c) && t70.c(this.d, ug3Var.d) && t70.c(this.e, ug3Var.e) && t70.c(this.f, ug3Var.f) && t70.c(this.g, ug3Var.g) && t70.c(this.h, ug3Var.h) && t70.c(this.i, ug3Var.i) && t70.c(this.j, ug3Var.j) && t70.c(this.k, ug3Var.k) && t70.c(this.l, ug3Var.l) && t70.c(this.m, ug3Var.m);
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.m) + xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31, this.i), 31, this.j), 31, this.k), 31, this.l);
    }
}
