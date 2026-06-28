package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class il0 {
    public final z03 a;
    public final boolean b;

    public il0(z03 z03Var, boolean z) {
        this.a = z03Var;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof il0) {
            il0 il0Var = (il0) obj;
            if (il0Var.a.equals(this.a) && il0Var.b == this.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.b).hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }
}
