package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lr3 implements ve {
    public final ve a;
    public final long b;

    public lr3(z51 z51Var, long j) {
        this.a = z51Var;
        this.b = j;
    }

    @Override // defpackage.ve
    public final ia4 a(e34 e34Var) {
        return new mr3(this.a.a(e34Var), this.b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lr3)) {
            return false;
        }
        lr3 lr3Var = (lr3) obj;
        return lr3Var.b == this.b && nt1.g(lr3Var.a, this.a);
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }
}
