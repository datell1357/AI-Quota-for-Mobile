package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ab3 {
    public float a = 0.0f;
    public boolean b = true;
    public al0 c = null;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ab3)) {
            return false;
        }
        ab3 ab3Var = (ab3) obj;
        return Float.compare(this.a, ab3Var.a) == 0 && this.b == ab3Var.b && nt1.g(this.c, ab3Var.c);
    }

    public final int hashCode() {
        int iN = xw1.n(Float.hashCode(this.a) * 31, this.b, 31);
        al0 al0Var = this.c;
        return (iN + (al0Var == null ? 0 : al0Var.hashCode())) * 31;
    }

    public final String toString() {
        return "RowColumnParentData(weight=" + this.a + ", fill=" + this.b + ", crossAxisAlignment=" + this.c + ", flowLayoutData=null)";
    }
}
