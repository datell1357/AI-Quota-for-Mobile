package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wq0 implements ul1 {
    public final ul1 n;
    public final ul1 o;

    public wq0(ul1 ul1Var, ul1 ul1Var2) {
        w80.L(ul1Var, "HTTP context");
        this.n = ul1Var;
        this.o = ul1Var2;
    }

    @Override // defpackage.ul1
    public final Object b(String str) {
        Object objB = this.n.b(str);
        return objB == null ? this.o.b(str) : objB;
    }

    public final String toString() {
        return "[local: " + this.n + "defaults: " + this.o + "]";
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        this.n.z(obj, str);
    }
}
