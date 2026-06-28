package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class jf2 {
    public abstract int a();

    public abstract Object b();

    public final boolean equals(Object obj) {
        if (obj instanceof jf2) {
            jf2 jf2Var = (jf2) obj;
            if (a() == jf2Var.a() && ca.o(b(), jf2Var.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object objB = b();
        return a() ^ (objB == null ? 0 : objB.hashCode());
    }

    public final String toString() {
        String strValueOf = String.valueOf(b());
        int iA = a();
        if (iA == 1) {
            return strValueOf;
        }
        return strValueOf + " x " + iA;
    }
}
