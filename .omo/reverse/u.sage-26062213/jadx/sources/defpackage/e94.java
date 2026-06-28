package defpackage;

import java.io.Serializable;
import java.security.Principal;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e94 implements yk0, Serializable {
    public final rv n;
    public final String o;

    public e94(String str) {
        int iIndexOf = str.indexOf(58);
        if (iIndexOf >= 0) {
            this.n = new rv(str.substring(0, iIndexOf));
            this.o = str.substring(iIndexOf + 1);
        } else {
            this.n = new rv(str);
            this.o = null;
        }
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
        return (obj instanceof e94) && c75.A(this.n, ((e94) obj).n);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return this.n.toString();
    }

    public e94(String str, String str2) {
        w80.L(str, "Username");
        this.n = new rv(str);
        this.o = str2;
    }
}
