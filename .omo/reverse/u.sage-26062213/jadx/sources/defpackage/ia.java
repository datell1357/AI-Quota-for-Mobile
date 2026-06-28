package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ia {
    public final int a;

    public final boolean equals(Object obj) {
        if (obj instanceof ia) {
            return this.a == ((ia) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return xw1.q("AndroidContentDataType(androidAutofillType=", this.a, ")");
    }
}
