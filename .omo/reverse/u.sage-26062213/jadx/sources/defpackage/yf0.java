package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yf0 {
    public final int a;
    public final long b;
    public final zf0 c;
    public final dd1 d;

    public yf0(int i, long j, zf0 zf0Var, dd1 dd1Var) {
        this.a = i;
        this.b = j;
        this.c = zf0Var;
        this.d = dd1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yf0)) {
            return false;
        }
        yf0 yf0Var = (yf0) obj;
        return this.a == yf0Var.a && this.b == yf0Var.b && this.c == yf0Var.c && nt1.g(this.d, yf0Var.d);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + xw1.l(Integer.hashCode(this.a) * 31, 31, this.b)) * 31;
        dd1 dd1Var = this.d;
        return iHashCode + (dd1Var == null ? 0 : dd1Var.hashCode());
    }

    public final String toString() {
        return "ContentCaptureEvent(id=" + this.a + ", timestamp=" + this.b + ", type=" + this.c + ", structureCompat=" + this.d + ")";
    }
}
