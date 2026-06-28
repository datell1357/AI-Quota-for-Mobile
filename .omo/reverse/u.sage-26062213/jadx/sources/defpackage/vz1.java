package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vz1 {
    public final int a;
    public final int b;

    public vz1(int i, int i2) {
        this.a = i;
        this.b = i2;
        if (!(i >= 0)) {
            dr1.a("negative start index");
        }
        if (i2 >= i) {
            return;
        }
        dr1.a("end index greater than start");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vz1)) {
            return false;
        }
        vz1 vz1Var = (vz1) obj;
        return this.a == vz1Var.a && this.b == vz1Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Interval(start=" + this.a + ", end=" + this.b + ")";
    }
}
