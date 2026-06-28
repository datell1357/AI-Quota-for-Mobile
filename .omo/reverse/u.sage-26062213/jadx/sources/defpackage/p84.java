package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p84 {

    @ni3("l")
    private final String a;

    @ni3("u")
    private final double b;

    @ni3("s")
    private final Long c;

    @ni3("r")
    private final Long d;

    @ni3("t")
    private final String e = null;

    public p84(String str, double d, Long l, Long l2) {
        this.a = str;
        this.b = d;
        this.c = l;
        this.d = l2;
    }

    public final String a() {
        return this.e;
    }

    public final Long b() {
        return this.d;
    }

    public final Long c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final double e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p84)) {
            return false;
        }
        p84 p84Var = (p84) obj;
        return nt1.g(this.a, p84Var.a) && Double.compare(this.b, p84Var.b) == 0 && nt1.g(this.c, p84Var.c) && nt1.g(this.d, p84Var.d) && nt1.g(this.e, p84Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (Double.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31)) * 31;
        Long l = this.c;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.d;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str2 = this.e;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        double d = this.b;
        Long l = this.c;
        Long l2 = this.d;
        String str2 = this.e;
        StringBuilder sb = new StringBuilder("UsageLimit(title=");
        sb.append(str);
        sb.append(", utilization=");
        sb.append(d);
        sb.append(", startsAtEpochMillis=");
        sb.append(l);
        sb.append(", resetsAtEpochMillis=");
        sb.append(l2);
        return di0.y(sb, ", resetText=", str2, ")");
    }
}
