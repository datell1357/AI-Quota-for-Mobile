package defpackage;

import java.io.Serializable;
import java.security.Principal;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rh2 implements Principal, Serializable {
    public final String n;
    public final String o;
    public final String p;

    public rh2(String str, String str2) {
        w80.L(str2, "User name");
        this.n = str2;
        if (str != null) {
            this.o = str.toUpperCase(Locale.ROOT);
        } else {
            this.o = null;
        }
        String str3 = this.o;
        if (str3 == null || str3.isEmpty()) {
            this.p = str2;
            return;
        }
        this.p = this.o + '\\' + str2;
    }

    @Override // java.security.Principal
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rh2)) {
            return false;
        }
        rh2 rh2Var = (rh2) obj;
        return c75.A(this.n, rh2Var.n) && c75.A(this.o, rh2Var.o);
    }

    @Override // java.security.Principal
    public final String getName() {
        return this.p;
    }

    @Override // java.security.Principal
    public final int hashCode() {
        return c75.I(c75.I(17, this.n), this.o);
    }

    @Override // java.security.Principal
    public final String toString() {
        return this.p;
    }
}
