package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hq3 implements Comparable {
    public static final hq3 n = new hq3();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((hq3) obj).getClass();
        return 0;
    }

    public final boolean equals(Object obj) {
        return obj == this || (obj instanceof hq3);
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanId{spanId=");
        char[] cArr = new char[16];
        dw.b(cArr, 0);
        sb.append(new String(cArr));
        sb.append("}");
        return sb.toString();
    }
}
