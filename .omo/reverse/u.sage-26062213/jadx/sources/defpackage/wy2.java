package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wy2 {
    public static final vy2 Companion = new vy2();
    public final int a;
    public final String b;

    public /* synthetic */ wy2(int i, String str, int i2) {
        if (3 != (i & 3)) {
            w80.X(i, 3, uy2.a.d());
            throw null;
        }
        this.a = i2;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wy2)) {
            return false;
        }
        wy2 wy2Var = (wy2) obj;
        return this.a == wy2Var.a && nt1.g(this.b, wy2Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ProcessData(pid=" + this.a + ", uuid=" + this.b + ')';
    }

    public wy2(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }
}
