package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bg1 implements bc0 {
    public final yb0 n;

    public bg1(yb0 yb0Var) {
        this.n = yb0Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bg1) {
            return this.n.equals(((bg1) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode() * 31;
    }
}
