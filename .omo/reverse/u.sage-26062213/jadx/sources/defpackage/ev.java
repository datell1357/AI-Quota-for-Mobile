package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ev implements sh2, Cloneable, Serializable {
    public final String n;
    public final String o;

    public ev(String str, String str2) {
        w80.L(str, "Name");
        this.n = str;
        this.o = str2;
    }

    public final Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof sh2) {
            ev evVar = (ev) obj;
            if (this.n.equals(evVar.n) && c75.A(this.o, evVar.o)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.sh2
    public final String getName() {
        return this.n;
    }

    @Override // defpackage.sh2
    public final String getValue() {
        return this.o;
    }

    public final int hashCode() {
        return c75.I(c75.I(17, this.n), this.o);
    }

    public final String toString() {
        String str = this.o;
        String str2 = this.n;
        if (str == null) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 1);
        sb.append(str2);
        sb.append("=");
        sb.append(str);
        return sb.toString();
    }
}
