package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c44 implements h34 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Class o;
    public final /* synthetic */ g34 p;

    public /* synthetic */ c44(Class cls, g34 g34Var, int i) {
        this.n = i;
        this.o = cls;
        this.p = g34Var;
    }

    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        int i = this.n;
        Class cls = this.o;
        switch (i) {
            case 0:
                if (q44Var.a == cls) {
                    return this.p;
                }
                return null;
            default:
                Class<?> cls2 = q44Var.a;
                if (cls.isAssignableFrom(cls2)) {
                    return new m70(this, cls2);
                }
                return null;
        }
    }

    public final String toString() {
        int i = this.n;
        g34 g34Var = this.p;
        Class cls = this.o;
        switch (i) {
            case 0:
                return "Factory[type=" + cls.getName() + ",adapter=" + g34Var + "]";
            default:
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + g34Var + "]";
        }
    }
}
