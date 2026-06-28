package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x83 {
    public final long a = t70.f;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x83) {
            return t70.c(this.a, ((x83) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.a) * 961;
    }

    public final String toString() {
        return di0.v("RippleConfiguration(color=", t70.i(this.a), ", focus=null, rippleAlpha=null)");
    }
}
