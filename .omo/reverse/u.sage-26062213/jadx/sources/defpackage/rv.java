package defpackage;

import java.io.Serializable;
import java.security.Principal;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rv implements Principal, Serializable {
    public final String n;

    public rv(String str) {
        w80.L(str, "User name");
        this.n = str;
    }

    @Override // java.security.Principal
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rv) && c75.A(this.n, ((rv) obj).n);
    }

    @Override // java.security.Principal
    public final String getName() {
        return this.n;
    }

    @Override // java.security.Principal
    public final int hashCode() {
        return c75.I(17, this.n);
    }

    @Override // java.security.Principal
    public final String toString() {
        return xw1.s(new StringBuilder("[principal: "), this.n, "]");
    }
}
