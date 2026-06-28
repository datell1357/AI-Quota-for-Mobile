package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class go3 {
    public final String a;
    public final co3 b;

    public go3(String str, co3 co3Var) {
        this.a = str;
        this.b = co3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || go3.class != obj.getClass()) {
            return false;
        }
        go3 go3Var = (go3) obj;
        return this.a.equals(go3Var.a) && this.b == go3Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + xw1.n(this.a.hashCode() * 961, false, 31);
    }
}
