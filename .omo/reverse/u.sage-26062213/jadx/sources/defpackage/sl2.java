package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sl2 {
    public final String a;
    public final String b;
    public final pl2 c;
    public final h41 d;

    public sl2(String str, String str2, pl2 pl2Var, h41 h41Var) {
        this.a = str;
        this.b = str2;
        this.c = pl2Var;
        this.d = h41Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sl2)) {
            return false;
        }
        sl2 sl2Var = (sl2) obj;
        return this.a.equals(sl2Var.a) && nt1.g(this.b, sl2Var.b) && this.c.equals(sl2Var.c) && nt1.g(this.d, sl2Var.d);
    }

    public final int hashCode() {
        return this.d.a.hashCode() + ((this.c.a.hashCode() + xw1.m(this.a.hashCode() * 31, this.b, 31)) * 961);
    }

    public final String toString() {
        StringBuilder sbB = di0.B("NetworkRequest(url=", this.a, ", method=", this.b, ", headers=");
        sbB.append(this.c);
        sbB.append(", body=null, extras=");
        sbB.append(this.d);
        sbB.append(")");
        return sbB.toString();
    }
}
