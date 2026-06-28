package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ie2 {
    public final long a;
    public final long b;
    public final boolean c;

    public ie2(long j, long j2, boolean z) {
        this.a = j;
        this.b = j2;
        this.c = z;
    }

    public final ie2 a(ie2 ie2Var) {
        return new ie2(go2.e(this.a, ie2Var.a), Math.max(this.b, ie2Var.b), this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ie2)) {
            return false;
        }
        ie2 ie2Var = (ie2) obj;
        return go2.b(this.a, ie2Var.a) && this.b == ie2Var.b && this.c == ie2Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + xw1.l(Long.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return "MouseWheelScrollDelta(value=" + go2.g(this.a) + ", timeMillis=" + this.b + ", shouldApplyImmediately=" + this.c + ")";
    }
}
