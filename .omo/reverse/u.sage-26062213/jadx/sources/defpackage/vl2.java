package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vl2 {
    public final int a;
    public final long b;
    public final long c;
    public final pl2 d;
    public final dq3 e;
    public final Object f;

    public vl2(int i, long j, long j2, pl2 pl2Var, dq3 dq3Var, Object obj) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = pl2Var;
        this.e = dq3Var;
        this.f = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vl2)) {
            return false;
        }
        vl2 vl2Var = (vl2) obj;
        return this.a == vl2Var.a && this.b == vl2Var.b && this.c == vl2Var.c && nt1.g(this.d, vl2Var.d) && nt1.g(this.e, vl2Var.e) && nt1.g(this.f, vl2Var.f);
    }

    public final int hashCode() {
        int iHashCode = (this.d.a.hashCode() + xw1.l(xw1.l(this.a * 31, 31, this.b), 31, this.c)) * 31;
        dq3 dq3Var = this.e;
        int iHashCode2 = (iHashCode + (dq3Var == null ? 0 : dq3Var.n.hashCode())) * 31;
        Object obj = this.f;
        return iHashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkResponse(code=" + this.a + ", requestMillis=" + this.b + ", responseMillis=" + this.c + ", headers=" + this.d + ", body=" + this.e + ", delegate=" + this.f + ")";
    }
}
