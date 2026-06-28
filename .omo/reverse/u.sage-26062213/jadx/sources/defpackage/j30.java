package defpackage;

import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j30 {
    public static final j30 c = new j30(o70.F0(new ArrayList()), null);
    public final Set a;
    public final zf5 b;

    public j30(Set set, zf5 zf5Var) {
        this.a = set;
        this.b = zf5Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j30)) {
            return false;
        }
        j30 j30Var = (j30) obj;
        return j30Var.a.equals(this.a) && nt1.g(j30Var.b, this.b);
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() + 1517) * 41;
        zf5 zf5Var = this.b;
        return iHashCode + (zf5Var != null ? zf5Var.hashCode() : 0);
    }
}
