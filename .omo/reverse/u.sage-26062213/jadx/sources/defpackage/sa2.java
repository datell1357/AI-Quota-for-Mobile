package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sa2 {
    public final long a;
    public final bi0 b;

    public sa2(long j, bi0 bi0Var) {
        this.a = j;
        this.b = bi0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sa2)) {
            return false;
        }
        sa2 sa2Var = (sa2) obj;
        return go2.b(this.a, sa2Var.a) && nt1.g(this.b, sa2Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "PointNRound(o=" + go2.g(this.a) + ", r=" + this.b + ")";
    }
}
