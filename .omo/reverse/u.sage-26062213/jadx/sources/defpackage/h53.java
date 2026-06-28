package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h53 extends qn0 {
    public final qn0 k;
    public final int l;

    public h53(qn0 qn0Var, int i) {
        this.k = qn0Var;
        this.l = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h53)) {
            return false;
        }
        h53 h53Var = (h53) obj;
        return h53Var.k.equals(this.k) && h53Var.l == this.l;
    }

    public final int hashCode() {
        return this.k.hashCode() + (this.l * 31);
    }
}
