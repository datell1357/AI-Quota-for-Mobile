package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ur1 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public ur1(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ur1)) {
            return false;
        }
        ur1 ur1Var = (ur1) obj;
        return this.a == ur1Var.a && this.b == ur1Var.b && this.c == ur1Var.c && this.d == ur1Var.d;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sbV = xw1.v("InsetsValues(left=", this.a, ", top=", this.b, ", right=");
        sbV.append(this.c);
        sbV.append(", bottom=");
        sbV.append(this.d);
        sbV.append(")");
        return sbV.toString();
    }
}
