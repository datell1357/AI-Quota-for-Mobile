package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wo extends z93 {
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final long f;

    public wo(long j, String str, String str2, String str3, String str4) {
        if (str == null) {
            q73.r("Null rolloutId");
            throw null;
        }
        this.b = str;
        if (str2 == null) {
            q73.r("Null parameterKey");
            throw null;
        }
        this.c = str2;
        this.d = str3;
        if (str4 == null) {
            q73.r("Null variantId");
            throw null;
        }
        this.e = str4;
        this.f = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z93)) {
            return false;
        }
        wo woVar = (wo) ((z93) obj);
        return this.b.equals(woVar.b) && this.c.equals(woVar.c) && this.d.equals(woVar.d) && this.e.equals(woVar.e) && this.f == woVar.f;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003;
        long j = this.f;
        return ((int) ((j >>> 32) ^ j)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutId=");
        sb.append(this.b);
        sb.append(", parameterKey=");
        sb.append(this.c);
        sb.append(", parameterValue=");
        sb.append(this.d);
        sb.append(", variantId=");
        sb.append(this.e);
        sb.append(", templateVersion=");
        return di0.x(sb, this.f, "}");
    }
}
