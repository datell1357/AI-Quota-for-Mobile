package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ns1 {
    public static final ns1 e = new ns1(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public ns1(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ns1)) {
            return false;
        }
        ns1 ns1Var = (ns1) obj;
        return this.a == ns1Var.a && this.b == ns1Var.b && this.c == ns1Var.c && this.d == ns1Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + xw1.j(this.c, xw1.j(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbV = xw1.v("IntRect.fromLTRB(", this.a, ", ", this.b, ", ");
        sbV.append(this.c);
        sbV.append(", ");
        sbV.append(this.d);
        sbV.append(")");
        return sbV.toString();
    }
}
