package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i54 implements Comparable {
    public final byte n;

    public /* synthetic */ i54(byte b) {
        this.n = b;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return nt1.l(this.n & 255, ((i54) obj).n & 255);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i54) {
            return this.n == ((i54) obj).n;
        }
        return false;
    }

    public final int hashCode() {
        return Byte.hashCode(this.n);
    }

    public final String toString() {
        return String.valueOf(this.n & 255);
    }
}
