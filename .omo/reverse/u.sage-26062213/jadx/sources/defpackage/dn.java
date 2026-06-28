package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dn extends gk0 {
    public final long a;
    public final String b;
    public final ak0 c;
    public final bk0 d;
    public final ck0 e;
    public final fk0 f;

    public dn(long j, String str, ak0 ak0Var, bk0 bk0Var, ck0 ck0Var, fk0 fk0Var) {
        this.a = j;
        this.b = str;
        this.c = ak0Var;
        this.d = bk0Var;
        this.e = ck0Var;
        this.f = fk0Var;
    }

    public final cn a() {
        cn cnVar = new cn();
        cnVar.a = this.a;
        cnVar.b = this.b;
        cnVar.c = this.c;
        cnVar.d = this.d;
        cnVar.e = this.e;
        cnVar.f = this.f;
        cnVar.g = (byte) 1;
        return cnVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gk0) {
            dn dnVar = (dn) ((gk0) obj);
            if (this.a == dnVar.a && this.b.equals(dnVar.b) && this.c.equals(dnVar.c) && this.d.equals(dnVar.d)) {
                ck0 ck0Var = dnVar.e;
                ck0 ck0Var2 = this.e;
                if (ck0Var2 != null ? ck0Var2.equals(ck0Var) : ck0Var == null) {
                    fk0 fk0Var = dnVar.f;
                    fk0 fk0Var2 = this.f;
                    if (fk0Var2 != null ? fk0Var2.equals(fk0Var) : fk0Var == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int iHashCode = (((((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        ck0 ck0Var = this.e;
        int iHashCode2 = (iHashCode ^ (ck0Var == null ? 0 : ck0Var.hashCode())) * 1000003;
        fk0 fk0Var = this.f;
        return iHashCode2 ^ (fk0Var != null ? fk0Var.hashCode() : 0);
    }

    public final String toString() {
        return "Event{timestamp=" + this.a + ", type=" + this.b + ", app=" + this.c + ", device=" + this.d + ", log=" + this.e + ", rollouts=" + this.f + "}";
    }
}
