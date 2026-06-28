package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tt {

    @ni3("c")
    private final String a;

    @ni3("accountInfo")
    private final w3 b;

    @ni3("locale")
    private final String c;

    @ni3("simulateLoggedOut")
    private final Boolean d;

    public tt(String str, w3 w3Var, String str2, Boolean bool) {
        this.a = str;
        this.b = w3Var;
        this.c = str2;
        this.d = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tt)) {
            return false;
        }
        tt ttVar = (tt) obj;
        return nt1.g(this.a, ttVar.a) && nt1.g(this.b, ttVar.b) && nt1.g(this.c, ttVar.c) && nt1.g(this.d, ttVar.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        w3 w3Var = this.b;
        int iHashCode2 = (iHashCode + (w3Var == null ? 0 : w3Var.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.d;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "ScriptConfig(context=" + this.a + ", accountInfo=" + this.b + ", locale=" + this.c + ", simulateLoggedOut=" + this.d + ")";
    }
}
