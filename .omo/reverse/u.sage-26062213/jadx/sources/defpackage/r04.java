package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r04 implements Comparable {
    public static final r04 n = new r04();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((r04) obj).getClass();
        return 0;
    }

    public final boolean equals(Object obj) {
        return obj == this || (obj instanceof r04);
    }

    public final int hashCode() {
        return 961;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TraceId{traceId=");
        char[] cArr = new char[32];
        dw.b(cArr, 0);
        dw.b(cArr, 16);
        return xw1.s(sb, new String(cArr), "}");
    }
}
