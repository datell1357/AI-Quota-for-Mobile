package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ux3 {
    public final long a;
    public final long b;

    public ux3(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ux3)) {
            return false;
        }
        ux3 ux3Var = (ux3) obj;
        return t70.c(this.a, ux3Var.a) && t70.c(this.b, ux3Var.b);
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return xw1.r("SelectionColors(selectionHandleColor=", t70.i(this.a), ", selectionBackgroundColor=", t70.i(this.b), ")");
    }
}
