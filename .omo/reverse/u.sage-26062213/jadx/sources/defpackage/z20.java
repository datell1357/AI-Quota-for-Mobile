package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z20 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;

    public z20(long j, long j2, long j3, long j4) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof z20)) {
            return false;
        }
        z20 z20Var = (z20) obj;
        return t70.c(this.a, z20Var.a) && t70.c(this.b, z20Var.b) && t70.c(this.c, z20Var.c) && t70.c(this.d, z20Var.d);
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.d) + xw1.l(xw1.l(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }
}
