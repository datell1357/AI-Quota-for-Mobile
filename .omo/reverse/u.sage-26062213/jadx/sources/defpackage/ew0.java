package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ew0 {
    public final long a;

    public final boolean equals(Object obj) {
        if (obj instanceof ew0) {
            return this.a == ((ew0) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        long j = this.a;
        return j != 9205357640488583168L ? xw1.r("(", cw0.c(Float.intBitsToFloat((int) (j >> 32))), ", ", cw0.c(Float.intBitsToFloat((int) (4294967295L & j))), ")") : "DpOffset.Unspecified";
    }
}
