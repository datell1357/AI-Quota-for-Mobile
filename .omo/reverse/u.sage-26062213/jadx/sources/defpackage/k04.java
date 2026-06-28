package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k04 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public k04(long j, long j2, long j3, long j4, long j5, long j6) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k04)) {
            return false;
        }
        k04 k04Var = (k04) obj;
        return t70.c(this.a, k04Var.a) && t70.c(this.b, k04Var.b) && t70.c(this.c, k04Var.c) && t70.c(this.d, k04Var.d) && t70.c(this.e, k04Var.e) && t70.c(this.f, k04Var.f);
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.f) + xw1.l(xw1.l(xw1.l(xw1.l(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }
}
