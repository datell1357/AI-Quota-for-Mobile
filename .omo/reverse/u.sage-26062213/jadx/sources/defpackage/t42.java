package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t42 extends u42 {
    public final zl0 a = zl0.b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t42.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((t42) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() + (t42.class.getName().hashCode() * 31);
    }

    public final String toString() {
        return "Success {mOutputData=" + this.a + '}';
    }
}
