package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lm extends f90 {
    public final ho a;

    public lm(ho hoVar) {
        e90 e90Var = e90.n;
        this.a = hoVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f90)) {
            return false;
        }
        if (!this.a.equals(((lm) ((f90) obj)).a)) {
            return false;
        }
        Object obj2 = e90.n;
        return obj2.equals(obj2);
    }

    public final int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ e90.n.hashCode();
    }

    public final String toString() {
        return "ComplianceData{privacyContext=" + this.a + ", productIdOrigin=" + e90.n + "}";
    }
}
