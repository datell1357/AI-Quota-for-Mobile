package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s54 implements Comparable {
    public final long n;

    public /* synthetic */ s54(long j) {
        this.n = j;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return nt1.m(this.n ^ Long.MIN_VALUE, ((s54) obj).n ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof s54) {
            return this.n == ((s54) obj).n;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.n);
    }

    public final String toString() {
        return on4.R(10, this.n);
    }
}
