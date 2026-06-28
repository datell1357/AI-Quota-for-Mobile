package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d52 {
    public final int a;

    public final boolean equals(Object obj) {
        if (obj instanceof d52) {
            return this.a == ((d52) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        int i = this.a;
        return i == 0 ? "Polite" : i == 1 ? "Assertive" : "Unknown";
    }
}
