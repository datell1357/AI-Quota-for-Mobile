package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fo3 {
    public final go3 a;
    public final o20 b;

    public fo3(go3 go3Var, o20 o20Var) {
        this.a = go3Var;
        this.b = o20Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fo3.class == obj.getClass()) {
            fo3 fo3Var = (fo3) obj;
            return nt1.g(this.a, fo3Var.a) && this.b == fo3Var.b;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
