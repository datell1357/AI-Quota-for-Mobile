package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tx3 {
    public static final long b = bi4.g(0, 0);
    public static final /* synthetic */ int c = 0;
    public final long a;

    public final boolean equals(Object obj) {
        if (obj instanceof tx3) {
            return this.a == ((tx3) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        long j = this.a;
        return "TextRange(" + ((int) (j >> 32)) + ", " + ((int) (j & 4294967295L)) + ")";
    }
}
