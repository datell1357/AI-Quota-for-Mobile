package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wj3 {
    public final String a;
    public final String b;
    public final int c;
    public final long d;
    public final fm0 e;
    public final String f;
    public final String g;

    public wj3(String str, String str2, int i, long j, fm0 fm0Var, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str4.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = fm0Var;
        this.f = str3;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wj3)) {
            return false;
        }
        wj3 wj3Var = (wj3) obj;
        return nt1.g(this.a, wj3Var.a) && nt1.g(this.b, wj3Var.b) && this.c == wj3Var.c && this.d == wj3Var.d && this.e.equals(wj3Var.e) && this.f.equals(wj3Var.f) && nt1.g(this.g, wj3Var.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + xw1.m((this.e.hashCode() + xw1.l(xw1.j(this.c, xw1.m(this.a.hashCode() * 31, this.b, 31), 31), 31, this.d)) * 31, this.f, 31);
    }

    public final String toString() {
        return "SessionInfo(sessionId=" + this.a + ", firstSessionId=" + this.b + ", sessionIndex=" + this.c + ", eventTimestampUs=" + this.d + ", dataCollectionStatus=" + this.e + ", firebaseInstallationId=" + this.f + ", firebaseAuthenticationToken=" + this.g + ')';
    }
}
