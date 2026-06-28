package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b64 implements Comparable {
    public final short n;

    public /* synthetic */ b64(short s) {
        this.n = s;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return nt1.l(this.n & 65535, ((b64) obj).n & 65535);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b64) {
            return this.n == ((b64) obj).n;
        }
        return false;
    }

    public final int hashCode() {
        return Short.hashCode(this.n);
    }

    public final String toString() {
        return String.valueOf(this.n & 65535);
    }
}
