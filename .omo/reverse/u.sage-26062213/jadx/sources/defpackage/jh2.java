package defpackage;

import java.io.Serializable;
import java.security.Principal;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jh2 implements yk0, Serializable {
    public final rh2 n;
    public final String o;
    public final String p;

    public jh2(String str, String str2, String str3) {
        w80.L(str, "User name");
        this.n = new rh2(str3, str);
        this.o = str2;
        this.p = null;
    }

    @Override // defpackage.yk0
    public final String a() {
        return this.o;
    }

    @Override // defpackage.yk0
    public final Principal b() {
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jh2)) {
            return false;
        }
        jh2 jh2Var = (jh2) obj;
        return c75.A(this.n, jh2Var.n) && c75.A(this.p, jh2Var.p);
    }

    public final int hashCode() {
        return c75.I(c75.I(17, this.n), this.p);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[principal: ");
        sb.append(this.n);
        sb.append("][workstation: ");
        return xw1.s(sb, this.p, "]");
    }
}
