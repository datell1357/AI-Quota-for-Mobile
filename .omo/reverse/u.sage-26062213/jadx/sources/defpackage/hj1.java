package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hj1 {
    public static final g00 d;
    public static final g00 e;
    public static final g00 f;
    public static final g00 g;
    public static final g00 h;
    public static final g00 i;
    public final g00 a;
    public final g00 b;
    public final int c;

    static {
        g00 g00Var = g00.q;
        d = bx3.o(":");
        e = bx3.o(":status");
        f = bx3.o(":method");
        g = bx3.o(":path");
        h = bx3.o(":scheme");
        i = bx3.o(":authority");
    }

    public hj1(g00 g00Var, g00 g00Var2) {
        g00Var.getClass();
        g00Var2.getClass();
        this.a = g00Var;
        this.b = g00Var2;
        this.c = g00Var2.c() + g00Var.c() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hj1)) {
            return false;
        }
        hj1 hj1Var = (hj1) obj;
        return nt1.g(this.a, hj1Var.a) && nt1.g(this.b, hj1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return this.a.q() + ": " + this.b.q();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hj1(String str, String str2) {
        this(bx3.o(str), bx3.o(str2));
        g00 g00Var = g00.q;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hj1(g00 g00Var, String str) {
        this(g00Var, bx3.o(str));
        g00Var.getClass();
        str.getClass();
        g00 g00Var2 = g00.q;
    }
}
