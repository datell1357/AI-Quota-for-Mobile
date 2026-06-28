package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fs0 {
    public final z03 a;
    public final int b;
    public final int c;

    public fs0(z03 z03Var, int i, int i2) {
        gg4.m(z03Var, "Null dependency anInterface.");
        this.a = z03Var;
        this.b = i;
        this.c = i2;
    }

    public static fs0 a(z03 z03Var) {
        return new fs0(z03Var, 1, 0);
    }

    public static fs0 b(Class cls) {
        return new fs0(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fs0)) {
            return false;
        }
        fs0 fs0Var = (fs0) obj;
        return this.a.equals(fs0Var.a) && this.b == fs0Var.b && this.c == fs0Var.c;
    }

    public final int hashCode() {
        return this.c ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else {
            if (i2 != 2) {
                k21.c(di0.q(i2, "Unsupported injection: "));
                return null;
            }
            str = "deferred";
        }
        return xw1.s(sb, str, "}");
    }

    public fs0(int i, int i2, Class cls) {
        this(z03.a(cls), i, i2);
    }
}
