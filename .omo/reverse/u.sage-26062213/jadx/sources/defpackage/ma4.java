package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ma4 {
    public final bf a;
    public final my0 b;

    public ma4(bf bfVar, my0 my0Var) {
        this.a = bfVar;
        this.b = my0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ma4)) {
            return false;
        }
        ma4 ma4Var = (ma4) obj;
        return nt1.g(this.a, ma4Var.a) && nt1.g(this.b, ma4Var.b);
    }

    public final int hashCode() {
        return Integer.hashCode(0) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "VectorizedKeyframeSpecElementInfo(vectorValue=" + this.a + ", easing=" + this.b + ", arcMode=ArcMode(value=0))";
    }
}
