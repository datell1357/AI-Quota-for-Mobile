package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vv3 {
    public final String a;
    public final int b;
    public final int c;

    public vv3(int i, String str, int i2) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vv3)) {
            return false;
        }
        vv3 vv3Var = (vv3) obj;
        return nt1.g(this.a, vv3Var.a) && this.b == vv3Var.b && this.c == vv3Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + xw1.j(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "SystemIdInfo(workSpecId=" + this.a + ", generation=" + this.b + ", systemId=" + this.c + ')';
    }
}
