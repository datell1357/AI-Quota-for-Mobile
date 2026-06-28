package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kv implements Cloneable, Serializable {
    public final g03 n;
    public final int o;
    public final String p;

    public kv(g03 g03Var, int i, String str) {
        w80.L(g03Var, "Version");
        this.n = g03Var;
        w80.J(i, "Status code");
        this.o = i;
        this.p = str;
    }

    public final Object clone() {
        return super.clone();
    }

    public final String toString() {
        b40 b40Var = new b40(64);
        g03 g03Var = this.n;
        int length = g03Var.n.length() + 9;
        String str = this.p;
        if (str != null) {
            length += str.length();
        }
        b40Var.e(length);
        mj1.m(b40Var, g03Var);
        b40Var.a(' ');
        b40Var.b(Integer.toString(this.o));
        b40Var.a(' ');
        if (str != null) {
            b40Var.b(str);
        }
        return b40Var.toString();
    }
}
