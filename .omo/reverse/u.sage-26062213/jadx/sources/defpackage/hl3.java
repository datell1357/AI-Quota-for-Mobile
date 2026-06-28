package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hl3 {
    public static final hl3 d = new hl3(c75.c(4278190080L), 0, 0.0f);
    public final long a;
    public final long b;
    public final float c;

    public hl3(long j, long j2, float f) {
        this.a = j;
        this.b = j2;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hl3)) {
            return false;
        }
        hl3 hl3Var = (hl3) obj;
        return t70.c(this.a, hl3Var.a) && go2.b(this.b, hl3Var.b) && this.c == hl3Var.c;
    }

    public final int hashCode() {
        int i = t70.g;
        return Float.hashCode(this.c) + xw1.l(Long.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sbB = di0.B("Shadow(color=", t70.i(this.a), ", offset=", go2.g(this.b), ", blurRadius=");
        sbB.append(this.c);
        sbB.append(")");
        return sbB.toString();
    }
}
