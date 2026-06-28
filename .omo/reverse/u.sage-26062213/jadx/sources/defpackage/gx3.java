package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gx3 {
    public static final gx3 c = new gx3(on4.D(0), on4.D(0));
    public final long a;
    public final long b;

    public gx3(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gx3)) {
            return false;
        }
        gx3 gx3Var = (gx3) obj;
        return cy3.a(this.a, gx3Var.a) && cy3.a(this.b, gx3Var.b);
    }

    public final int hashCode() {
        dy3[] dy3VarArr = cy3.b;
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return xw1.r("TextIndent(firstLine=", cy3.d(this.a), ", restLine=", cy3.d(this.b), ")");
    }
}
