package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cb implements ov2 {
    public final int n;

    public cb(int i) {
        this.n = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof cb) && this.n == ((cb) obj).n;
    }

    public final int hashCode() {
        return Integer.hashCode(this.n);
    }

    public final String toString() {
        return xw1.q("AndroidFontResolveInterceptor(fontWeightAdjustment=", this.n, ")");
    }
}
