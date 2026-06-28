package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mn1 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;

    public mn1(long j, long j2, long j3, long j4) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof mn1)) {
            return false;
        }
        mn1 mn1Var = (mn1) obj;
        return t70.c(this.a, mn1Var.a) && t70.c(this.b, mn1Var.b) && t70.c(this.c, mn1Var.c) && t70.c(this.d, mn1Var.d);
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.d) + xw1.l(xw1.l(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }
}
