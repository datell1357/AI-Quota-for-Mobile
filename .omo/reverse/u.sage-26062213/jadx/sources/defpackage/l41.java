package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l41 {
    public final Object a;
    public final ka0 b;

    public l41(fo3 fo3Var, ka0 ka0Var) {
        this.a = fo3Var;
        this.b = ka0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l41) {
            l41 l41Var = (l41) obj;
            return nt1.g(this.a, l41Var.a) && this.b == l41Var.b;
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.a;
        return this.b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "FadeInFadeOutAnimationItem(key=" + this.a + ", transition=" + this.b + ")";
    }
}
