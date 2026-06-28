package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ws3 implements df {
    public final String a;

    public final boolean equals(Object obj) {
        if (obj instanceof ws3) {
            return this.a.equals(((ws3) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return di0.v("StringAnnotation(value=", this.a, ")");
    }
}
