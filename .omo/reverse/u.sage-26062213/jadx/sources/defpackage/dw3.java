package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dw3 {
    public final String a;
    public final String b;
    public final String c;
    public final List d;
    public final List e;

    public dw3(String str, String str2, String str3, List list, List list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
        this.e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dw3)) {
            return false;
        }
        dw3 dw3Var = (dw3) obj;
        if (nt1.g(this.a, dw3Var.a) && nt1.g(this.b, dw3Var.b) && nt1.g(this.c, dw3Var.c) && this.d.equals(dw3Var.d)) {
            return this.e.equals(dw3Var.e);
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + xw1.m(xw1.m(this.a.hashCode() * 31, this.b, 31), this.c, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |ForeignKey {\n            |   referenceTable = '");
        sb.append(this.a);
        sb.append("',\n            |   onDelete = '");
        sb.append(this.b);
        sb.append("',\n            |   onUpdate = '");
        sb.append(this.c);
        sb.append("',\n            |   columnNames = {");
        at3.n0(o70.n0(o70.x0(this.d), ",", null, null, null, 62));
        at3.n0("},");
        t64 t64Var = t64.a;
        sb.append(t64Var);
        sb.append("\n            |   referenceColumnNames = {");
        at3.n0(o70.n0(o70.x0(this.e), ",", null, null, null, 62));
        at3.n0(" }");
        sb.append(t64Var);
        sb.append("\n            |}\n        ");
        return at3.n0(at3.p0(sb.toString()));
    }
}
