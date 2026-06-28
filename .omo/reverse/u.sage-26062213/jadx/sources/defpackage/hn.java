package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hn extends uj0 {
    public final String a;
    public final String b;
    public final List c;
    public final uj0 d;
    public final int e;

    public hn(String str, String str2, List list, uj0 uj0Var, int i) {
        this.a = str;
        this.b = str2;
        this.c = list;
        this.d = uj0Var;
        this.e = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof uj0) {
            hn hnVar = (hn) ((uj0) obj);
            if (this.a.equals(hnVar.a)) {
                String str = hnVar.b;
                String str2 = this.b;
                if (str2 != null ? str2.equals(str) : str == null) {
                    if (this.c.equals(hnVar.c)) {
                        uj0 uj0Var = hnVar.d;
                        uj0 uj0Var2 = this.d;
                        if (uj0Var2 != null ? uj0Var2.equals(uj0Var) : uj0Var == null) {
                            if (this.e == hnVar.e) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        String str = this.b;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        uj0 uj0Var = this.d;
        return this.e ^ ((iHashCode2 ^ (uj0Var != null ? uj0Var.hashCode() : 0)) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Exception{type=");
        sb.append(this.a);
        sb.append(", reason=");
        sb.append(this.b);
        sb.append(", frames=");
        sb.append(this.c);
        sb.append(", causedBy=");
        sb.append(this.d);
        sb.append(", overflowCount=");
        return xw1.p(this.e, "}", sb);
    }
}
