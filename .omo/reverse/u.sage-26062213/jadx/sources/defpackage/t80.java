package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t80 implements nd2 {
    public final nd2 b;
    public final nd2 c;

    public t80(nd2 nd2Var, nd2 nd2Var2) {
        this.b = nd2Var;
        this.c = nd2Var2;
    }

    @Override // defpackage.nd2
    public final Object a(df1 df1Var, Object obj) {
        return this.c.a(df1Var, this.b.a(df1Var, obj));
    }

    @Override // defpackage.nd2
    public final boolean b(pe1 pe1Var) {
        return this.b.b(pe1Var) && this.c.b(pe1Var);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t80)) {
            return false;
        }
        t80 t80Var = (t80) obj;
        return this.b.equals(t80Var.b) && nt1.g(this.c, t80Var.c);
    }

    public final int hashCode() {
        return (this.c.hashCode() * 31) + this.b.hashCode();
    }

    public final String toString() {
        return "[" + a(fd.y, "") + "]";
    }
}
