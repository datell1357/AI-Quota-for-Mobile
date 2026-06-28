package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ua2 {
    public final y70 a;
    public final e54 b;
    public final nl3 c;
    public final ee2 d;

    public ua2(y70 y70Var, e54 e54Var, nl3 nl3Var, ee2 ee2Var) {
        this.a = y70Var;
        this.b = e54Var;
        this.c = nl3Var;
        this.d = ee2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ua2.class != obj.getClass()) {
            return false;
        }
        ua2 ua2Var = (ua2) obj;
        return nt1.g(this.a, ua2Var.a) && this.b.equals(ua2Var.b) && nt1.g(this.c, ua2Var.c) && nt1.g(this.d, ua2Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Values(colorScheme=" + this.a + ", typography=" + this.b + ", shapes=" + this.c + ", motionScheme=" + this.d + ")";
    }
}
