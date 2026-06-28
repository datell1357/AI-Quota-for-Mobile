package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class by1 {
    public static final by1 a;

    static {
        by1 by1Var = new by1();
        if (cw0.a(0.0f, 0.0f) < 0 || cw0.a(0.0f, 0.0f) < 0 || cw0.a(0.0f, 0.0f) < 0 || cw0.a(0.0f, 0.0f) < 0) {
            zq1.a("Layer outsets must be non-negative");
        }
        a = by1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof by1) && cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f) && cw0.b(0.0f, 0.0f);
    }

    public final int hashCode() {
        return Float.hashCode(0.0f) + di0.l(0.0f, di0.l(0.0f, Float.hashCode(0.0f) * 31, 31), 31);
    }

    public final String toString() {
        String strC = cw0.c(0.0f);
        String strC2 = cw0.c(0.0f);
        return xw1.t(di0.B("LayerOutsets(left=", strC, ", top=", strC2, ", right="), cw0.c(0.0f), ", bottom=", cw0.c(0.0f), ")");
    }
}
