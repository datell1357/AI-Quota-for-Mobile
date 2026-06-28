package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lj3 {
    public static final kj3 Companion = new kj3();
    public final String a;
    public final String b;
    public final int c;
    public final long d;

    public /* synthetic */ lj3(long j, String str, int i, int i2, String str2) {
        if (15 != (i & 15)) {
            w80.X(i, 15, jj3.a.d());
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = i2;
        this.d = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lj3)) {
            return false;
        }
        lj3 lj3Var = (lj3) obj;
        return nt1.g(this.a, lj3Var.a) && nt1.g(this.b, lj3Var.b) && this.c == lj3Var.c && this.d == lj3Var.d;
    }

    public final int hashCode() {
        return Long.hashCode(this.d) + xw1.j(this.c, xw1.m(this.a.hashCode() * 31, this.b, 31), 31);
    }

    public final String toString() {
        return "SessionDetails(sessionId=" + this.a + ", firstSessionId=" + this.b + ", sessionIndex=" + this.c + ", sessionStartTimestampUs=" + this.d + ')';
    }

    public lj3(String str, String str2, int i, long j) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
    }
}
