package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e52 extends ra1 {
    public final dh1 e;

    public e52(dh1 dh1Var) {
        this.e = dh1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e52) {
            return this.e == ((e52) obj).e;
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode();
    }

    public final String toString() {
        return "LoadedFontFamily(typeface=" + this.e + ")";
    }
}
