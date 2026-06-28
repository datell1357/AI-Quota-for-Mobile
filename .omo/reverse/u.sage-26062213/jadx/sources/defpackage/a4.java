package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a4 {
    public final n1 a;
    public final ps b;
    public final xr c;
    public final n8 d;

    public a4(n1 n1Var, ps psVar, xr xrVar, n8 n8Var) {
        xrVar.getClass();
        n8Var.getClass();
        this.a = n1Var;
        this.b = psVar;
        this.c = xrVar;
        this.d = n8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a4)) {
            return false;
        }
        a4 a4Var = (a4) obj;
        return this.a.equals(a4Var.a) && this.b.equals(a4Var.b) && nt1.g(this.c, a4Var.c) && nt1.g(this.d, a4Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AccountScreenDependencies(accountDataStore=" + this.a + ", usageDataStore=" + this.b + ", scriptProvider=" + this.c + ", analyticsManager=" + this.d + ")";
    }
}
