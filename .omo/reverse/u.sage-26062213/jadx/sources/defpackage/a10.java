package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a10 {
    public static final a10 b = new a10();
    public final vl2 a;

    public a10() {
        this.a = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a10) {
            return nt1.g(this.a, ((a10) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        vl2 vl2Var = this.a;
        if (vl2Var != null) {
            return vl2Var.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "WriteResult(response=" + this.a + ")";
    }

    public a10(vl2 vl2Var) {
        this.a = vl2Var;
    }
}
