package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eu3 implements cu3 {
    public static final q73 q = new q73(11);
    public final Object n = new Object();
    public volatile cu3 o;
    public Object p;

    public eu3(cu3 cu3Var) {
        cu3Var.getClass();
        this.o = cu3Var;
    }

    @Override // defpackage.cu3
    public final Object get() {
        cu3 cu3Var = this.o;
        q73 q73Var = q;
        if (cu3Var != q73Var) {
            synchronized (this.n) {
                try {
                    if (this.o != q73Var) {
                        Object obj = this.o.get();
                        this.p = obj;
                        this.o = q73Var;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.p;
    }

    public final String toString() {
        Object obj = this.o;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == q) {
            obj = "<supplier that returned " + this.p + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
