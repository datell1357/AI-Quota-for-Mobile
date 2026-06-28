package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ew3 {
    public final String a;
    public final boolean b;
    public final List c;
    public final List d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
    public ew3(String str, boolean z, List list, List list2) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = list;
        this.d = list2;
        if (list2.isEmpty()) {
            int size = list.size();
            list2 = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                list2.add("ASC");
            }
        }
        this.d = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ew3) {
            ew3 ew3Var = (ew3) obj;
            String str = ew3Var.a;
            if (this.b == ew3Var.b && this.c.equals(ew3Var.c) && nt1.g(this.d, ew3Var.d)) {
                String str2 = this.a;
                return gt3.y0(str2, "index_", false) ? gt3.y0(str, "index_", false) : str2.equals(str);
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        return this.d.hashCode() + ((this.c.hashCode() + ((((gt3.y0(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.b ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |Index {\n            |   name = '");
        sb.append(this.a);
        sb.append("',\n            |   unique = '");
        sb.append(this.b);
        sb.append("',\n            |   columns = {");
        at3.n0(o70.n0(this.c, ",", null, null, null, 62));
        at3.n0("},");
        t64 t64Var = t64.a;
        sb.append(t64Var);
        sb.append("\n            |   orders = {");
        at3.n0(o70.n0(this.d, ",", null, null, null, 62));
        at3.n0(" }");
        sb.append(t64Var);
        sb.append("\n            |}\n        ");
        return at3.n0(at3.p0(sb.toString()));
    }
}
