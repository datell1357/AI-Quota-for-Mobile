package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class or implements x63 {
    public final tu1 n;

    public /* synthetic */ or(tu1 tu1Var) {
        this.n = tu1Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof or) {
            return this.n.equals(((or) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "BaseRequestDelegate(job=" + this.n + ")";
    }
}
