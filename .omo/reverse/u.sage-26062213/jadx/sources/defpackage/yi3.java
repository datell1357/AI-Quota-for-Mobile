package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yi3 {
    public final y84 a;
    public final boolean b;
    public final boolean c;

    public yi3(y84 y84Var, boolean z, boolean z2) {
        this.a = y84Var;
        this.b = z;
        this.c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yi3)) {
            return false;
        }
        yi3 yi3Var = (yi3) obj;
        return this.a == yi3Var.a && this.b == yi3Var.b && this.c == yi3Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + xw1.n(this.a.hashCode() * 31, this.b, 31);
    }

    public final String toString() {
        return "ServiceSortState(serviceType=" + this.a + ", shouldMonitorUsage=" + this.b + ", isLoggedIn=" + this.c + ")";
    }
}
