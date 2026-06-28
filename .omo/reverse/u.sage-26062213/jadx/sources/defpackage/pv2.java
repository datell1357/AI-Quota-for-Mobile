package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pv2 {
    public final mv2 a;

    public pv2(mv2 mv2Var) {
        this.a = mv2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof pv2) {
            return nt1.g(this.a, ((pv2) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        mv2 mv2Var = this.a;
        if (mv2Var != null) {
            return mv2Var.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "PlatformTextStyle(spanStyle=null, paragraphSyle=" + this.a + ")";
    }
}
