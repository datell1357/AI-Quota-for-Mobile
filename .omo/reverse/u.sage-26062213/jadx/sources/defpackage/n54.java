package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n54 implements Comparable {
    public final int n;

    public /* synthetic */ n54(int i) {
        this.n = i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return nt1.l(this.n ^ Integer.MIN_VALUE, ((n54) obj).n ^ Integer.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n54) {
            return this.n == ((n54) obj).n;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.n);
    }

    public final String toString() {
        return String.valueOf(((long) this.n) & 4294967295L);
    }
}
