package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cw0 implements Comparable {
    public final float n;

    public static int a(float f, float f2) {
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return 0;
        }
        return Float.compare(f, f2);
    }

    public static final boolean b(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    public static String c(float f) {
        if (Float.isNaN(f)) {
            return "Dp.Unspecified";
        }
        return f + ".dp";
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return a(this.n, ((cw0) obj).n);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cw0) {
            return Float.compare(this.n, ((cw0) obj).n) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.n);
    }

    public final String toString() {
        return c(this.n);
    }
}
