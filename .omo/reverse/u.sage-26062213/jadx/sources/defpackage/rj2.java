package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rj2 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;

    public rj2(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof rj2)) {
            return false;
        }
        rj2 rj2Var = (rj2) obj;
        return t70.c(this.a, rj2Var.a) && t70.c(this.d, rj2Var.d) && t70.c(this.b, rj2Var.b) && t70.c(this.e, rj2Var.e) && t70.c(this.c, rj2Var.c) && t70.c(this.f, rj2Var.f) && t70.c(this.g, rj2Var.g);
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.g) + xw1.l(xw1.l(xw1.l(xw1.l(xw1.l(Long.hashCode(this.a) * 31, 31, this.d), 31, this.b), 31, this.e), 31, this.c), 31, this.f);
    }
}
