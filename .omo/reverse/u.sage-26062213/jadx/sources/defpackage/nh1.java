package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nh1 {
    public final boolean a;
    public final int b;
    public final String c;

    public nh1(int i, int i2, String str, boolean z) {
        i = (i2 & 2) != 0 ? 0 : i;
        str = (i2 & 4) != 0 ? null : str;
        this.a = z;
        this.b = i;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nh1)) {
            return false;
        }
        nh1 nh1Var = (nh1) obj;
        return this.a == nh1Var.a && this.b == nh1Var.b && nt1.g(this.c, nh1Var.c);
    }

    public final int hashCode() {
        int iJ = xw1.j(this.b, Boolean.hashCode(this.a) * 31, 31);
        String str = this.c;
        return iJ + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SyncResult(success=");
        sb.append(this.a);
        sb.append(", eventsSynced=");
        sb.append(this.b);
        sb.append(", error=");
        return xw1.s(sb, this.c, ")");
    }
}
