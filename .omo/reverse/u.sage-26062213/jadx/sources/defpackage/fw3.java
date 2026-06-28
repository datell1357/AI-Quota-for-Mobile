package defpackage;

import java.util.AbstractSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fw3 {
    public final String a;
    public final Map b;
    public final Set c;
    public final Set d;

    public fw3(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        abstractSet.getClass();
        this.a = str;
        this.b = map;
        this.c = abstractSet;
        this.d = abstractSet2;
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fw3)) {
            return false;
        }
        fw3 fw3Var = (fw3) obj;
        if (!this.a.equals(fw3Var.a) || !this.b.equals(fw3Var.b) || !nt1.g(this.c, fw3Var.c)) {
            return false;
        }
        Set set2 = this.d;
        if (set2 == null || (set = fw3Var.d) == null) {
            return true;
        }
        return set2.equals(set);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(this.a);
        sb.append("',\n            |    columns = {");
        sb.append(se0.l(o70.y0(this.b.values(), new lh0(17))));
        sb.append("\n            |    foreignKeys = {");
        sb.append(se0.l(this.c));
        sb.append("\n            |    indices = {");
        Set set = this.d;
        sb.append(se0.l(set != null ? o70.y0(set, new lh0(18)) : g01.n));
        sb.append("\n            |}\n        ");
        return at3.p0(sb.toString());
    }
}
