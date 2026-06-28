package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ba5 {
    public final i95 a;
    public final a13 b;

    public ba5(i95 i95Var, a13 a13Var) {
        this.a = i95Var;
        this.b = a13Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ba5) {
            ba5 ba5Var = (ba5) obj;
            i95 i95Var = ba5Var.a;
            i95 i95Var2 = this.a;
            if (i95Var2 != null ? i95Var2 == i95Var : i95Var == null) {
                return this.b == ba5Var.b;
            }
        }
        return false;
    }

    public final int hashCode() {
        i95 i95Var = this.a;
        return this.b.hashCode() ^ (((i95Var == null ? 0 : i95Var.hashCode()) ^ 1000003) * 1000003);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String string = this.b.toString();
        StringBuilder sb = new StringBuilder(strValueOf.length() + 52 + string.length() + 1);
        di0.E(sb, "SnapshotBlobAndResult{snapshotBlob=", strValueOf, ", snapshotResult=", string);
        sb.append("}");
        return sb.toString();
    }
}
