package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class el4 {
    public final em4 a = em4.b;
    public final String b;

    public el4(String str) {
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof el4)) {
            return false;
        }
        el4 el4Var = (el4) obj;
        return this.a.equals(el4Var.a) && this.b.equals(el4Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }
}
