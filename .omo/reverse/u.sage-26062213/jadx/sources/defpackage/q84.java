package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q84 {

    @ni3("s")
    private final String a;

    @ni3("d")
    private final d84 b;

    @ni3("m")
    private final String c;

    public final d84 a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q84)) {
            return false;
        }
        q84 q84Var = (q84) obj;
        return nt1.g(this.a, q84Var.a) && nt1.g(this.b, q84Var.b) && nt1.g(this.c, q84Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        d84 d84Var = this.b;
        int iHashCode2 = (iHashCode + (d84Var == null ? 0 : d84Var.hashCode())) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        d84 d84Var = this.b;
        String str2 = this.c;
        StringBuilder sb = new StringBuilder("UsageResponse(status=");
        sb.append(str);
        sb.append(", data=");
        sb.append(d84Var);
        sb.append(", errorMessage=");
        return xw1.s(sb, str2, ")");
    }
}
