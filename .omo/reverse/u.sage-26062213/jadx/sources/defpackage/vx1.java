package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vx1 implements Comparable {
    public static final vx1 o = new vx1();
    public final int n = 131861;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        vx1 vx1Var = (vx1) obj;
        vx1Var.getClass();
        return this.n - vx1Var.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        vx1 vx1Var = obj instanceof vx1 ? (vx1) obj : null;
        return vx1Var != null && this.n == vx1Var.n;
    }

    public final int hashCode() {
        return this.n;
    }

    public final String toString() {
        return "2.3.21";
    }
}
