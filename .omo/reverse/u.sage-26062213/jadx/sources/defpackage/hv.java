package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hv implements d73, Cloneable, Serializable {
    public final g03 n;
    public final String o;
    public final String p;

    public hv(String str, String str2, g03 g03Var) {
        w80.L(str, "Method");
        this.o = str;
        w80.L(str2, "URI");
        this.p = str2;
        w80.L(g03Var, "Version");
        this.n = g03Var;
    }

    public final Object clone() {
        return super.clone();
    }

    public final String toString() {
        return mj1.q(null, this).toString();
    }
}
