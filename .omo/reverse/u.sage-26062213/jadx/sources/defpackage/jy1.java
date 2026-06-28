package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jy1 {
    public final int a;
    public final int b;
    public final boolean c;

    public jy1(int i, boolean z, int i2) {
        this.a = i;
        this.b = i2;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jy1)) {
            return false;
        }
        jy1 jy1Var = (jy1) obj;
        return this.a == jy1Var.a && this.b == jy1Var.b && this.c == jy1Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + xw1.j(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbV = xw1.v("BidiRun(start=", this.a, ", end=", this.b, ", isRtl=");
        sbV.append(this.c);
        sbV.append(")");
        return sbV.toString();
    }
}
