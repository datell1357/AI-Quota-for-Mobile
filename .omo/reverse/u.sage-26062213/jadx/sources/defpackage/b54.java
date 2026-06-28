package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b54 {
    public final ra1 a;
    public final pb1 b;
    public final int c;
    public final int d;
    public final Object e;

    public b54(ra1 ra1Var, pb1 pb1Var, int i, int i2, Object obj) {
        this.a = ra1Var;
        this.b = pb1Var;
        this.c = i;
        this.d = i2;
        this.e = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b54)) {
            return false;
        }
        b54 b54Var = (b54) obj;
        return nt1.g(this.a, b54Var.a) && nt1.g(this.b, b54Var.b) && this.c == b54Var.c && this.d == b54Var.d && nt1.g(this.e, b54Var.e);
    }

    public final int hashCode() {
        ra1 ra1Var = this.a;
        int iJ = xw1.j(this.d, xw1.j(this.c, (((ra1Var == null ? 0 : ra1Var.hashCode()) * 31) + this.b.n) * 31, 31), 31);
        Object obj = this.e;
        return iJ + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        String str = "Invalid";
        int i = this.c;
        String str2 = i == 0 ? "Normal" : i == 1 ? "Italic" : "Invalid";
        int i2 = this.d;
        if (i2 == 0) {
            str = "None";
        } else if (i2 == 1) {
            str = "Weight";
        } else if (i2 == 2) {
            str = "Style";
        } else if (i2 == 65535) {
            str = "All";
        }
        StringBuilder sb = new StringBuilder("TypefaceRequest(fontFamily=");
        sb.append(this.a);
        sb.append(", fontWeight=");
        sb.append(this.b);
        sb.append(", fontStyle=");
        di0.E(sb, str2, ", fontSynthesis=", str, ", resourceLoaderCacheKey=");
        sb.append(this.e);
        sb.append(")");
        return sb.toString();
    }
}
