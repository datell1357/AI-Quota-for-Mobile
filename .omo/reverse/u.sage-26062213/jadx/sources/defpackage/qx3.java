package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qx3 {
    public final iq3 a;
    public final iq3 b;
    public final iq3 c;
    public final iq3 d;

    public qx3(iq3 iq3Var, iq3 iq3Var2, iq3 iq3Var3, iq3 iq3Var4) {
        this.a = iq3Var;
        this.b = iq3Var2;
        this.c = iq3Var3;
        this.d = iq3Var4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof qx3)) {
            return false;
        }
        qx3 qx3Var = (qx3) obj;
        return nt1.g(this.a, qx3Var.a) && nt1.g(this.b, qx3Var.b) && nt1.g(this.c, qx3Var.c) && nt1.g(this.d, qx3Var.d);
    }

    public final int hashCode() {
        iq3 iq3Var = this.a;
        int iHashCode = (iq3Var != null ? iq3Var.hashCode() : 0) * 31;
        iq3 iq3Var2 = this.b;
        int iHashCode2 = (iHashCode + (iq3Var2 != null ? iq3Var2.hashCode() : 0)) * 31;
        iq3 iq3Var3 = this.c;
        int iHashCode3 = (iHashCode2 + (iq3Var3 != null ? iq3Var3.hashCode() : 0)) * 31;
        iq3 iq3Var4 = this.d;
        return iHashCode3 + (iq3Var4 != null ? iq3Var4.hashCode() : 0);
    }
}
