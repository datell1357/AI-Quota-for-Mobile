package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pa2 {
    public final String a;
    public final ms1 b;

    public pa2(String str, ms1 ms1Var) {
        this.a = str;
        this.b = ms1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pa2)) {
            return false;
        }
        pa2 pa2Var = (pa2) obj;
        return this.a.equals(pa2Var.a) && this.b.equals(pa2Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MatchGroup(value=" + this.a + ", range=" + this.b + ')';
    }
}
