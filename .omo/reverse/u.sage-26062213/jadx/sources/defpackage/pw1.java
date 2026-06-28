package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pw1 extends yv1 {
    public final x32 n;

    public pw1() {
        lh0 lh0Var = x32.v;
        this.n = new x32(false);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof pw1) && ((pw1) obj).n.equals(this.n);
        }
        return true;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }
}
