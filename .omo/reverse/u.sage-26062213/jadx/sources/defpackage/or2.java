package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class or2 {
    public final long a;
    public final ds2 b;

    public or2() {
        long jC = c75.c(4284900966L);
        ds2 ds2VarD = is0.d(3);
        this.a = jC;
        this.b = ds2VarD;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!or2.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        or2 or2Var = (or2) obj;
        return t70.c(this.a, or2Var.a) && nt1.g(this.b, or2Var.b);
    }

    public final int hashCode() {
        int i = t70.g;
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "OverscrollConfiguration(glowColor=" + t70.i(this.a) + ", drawPadding=" + this.b + ")";
    }
}
