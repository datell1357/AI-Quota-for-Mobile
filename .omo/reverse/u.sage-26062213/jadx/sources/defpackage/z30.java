package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z30 {
    public static final y30 b = new y30();
    public final Object a;

    public static final Object a(Object obj) {
        if (obj instanceof y30) {
            return null;
        }
        return obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z30) {
            return nt1.g(this.a, ((z30) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.a;
        if (obj instanceof x30) {
            return ((x30) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
