package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vt0 {
    public final boolean a = true;
    public final boolean b = true;
    public final gg3 c = gg3.n;
    public final boolean d = true;
    public final boolean e = true;
    public final String f = "";
    public final int g = 2;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vt0)) {
            return false;
        }
        vt0 vt0Var = (vt0) obj;
        return this.a == vt0Var.a && this.b == vt0Var.b && this.c == vt0Var.c && this.d == vt0Var.d && this.e == vt0Var.e && this.g == vt0Var.g;
    }

    public final int hashCode() {
        return (xw1.n(xw1.n((this.c.hashCode() + xw1.n(Boolean.hashCode(this.a) * 31, this.b, 31)) * 31, this.d, 31), this.e, 31) + this.g) * 31;
    }
}
