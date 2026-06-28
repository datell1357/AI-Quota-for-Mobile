package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d44 implements h34 {
    public final /* synthetic */ Class n;
    public final /* synthetic */ Class o;
    public final /* synthetic */ g34 p;

    public d44(Class cls, Class cls2, g34 g34Var) {
        this.n = cls;
        this.o = cls2;
        this.p = g34Var;
    }

    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        Class cls = q44Var.a;
        if (cls == this.n || cls == this.o) {
            return this.p;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.o.getName() + "+" + this.n.getName() + ",adapter=" + this.p + "]";
    }
}
