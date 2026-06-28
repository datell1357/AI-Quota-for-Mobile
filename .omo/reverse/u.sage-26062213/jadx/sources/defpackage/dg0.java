package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dg0 {
    public final ay a;
    public final o20 b;

    public dg0(ay ayVar, o20 o20Var) {
        this.a = ayVar;
        this.b = o20Var;
    }

    public final String toString() {
        o20 o20Var = this.b;
        mi0 mi0Var = (mi0) o20Var.r.K(mi0.p);
        String str = mi0Var != null ? mi0Var.o : null;
        int iHashCode = hashCode();
        qj0.z(16);
        String string = Integer.toString(iHashCode, 16);
        string.getClass();
        return "Request@" + string + (str != null ? di0.v("[", str, "](") : "(") + "currentBounds()=" + this.a.a() + ", continuation=" + o20Var + ")";
    }
}
