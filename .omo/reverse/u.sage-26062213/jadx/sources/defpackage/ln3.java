package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ln3 {
    public static final ln3 c;
    public final cu0 a;
    public final cu0 b;

    static {
        bu0 bu0Var = bu0.a;
        c = new ln3(bu0Var, bu0Var);
    }

    public ln3(cu0 cu0Var, cu0 cu0Var2) {
        this.a = cu0Var;
        this.b = cu0Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ln3)) {
            return false;
        }
        ln3 ln3Var = (ln3) obj;
        return this.a.equals(ln3Var.a) && this.b.equals(ln3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Size(width=" + this.a + ", height=" + this.b + ")";
    }
}
