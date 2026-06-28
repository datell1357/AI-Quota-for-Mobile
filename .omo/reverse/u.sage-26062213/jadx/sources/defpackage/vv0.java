package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vv0 implements k03 {
    public static final Object c = new Object();
    public volatile i41 a;
    public volatile Object b;

    public static k03 a(i41 i41Var) {
        if (i41Var instanceof vv0) {
            return i41Var;
        }
        vv0 vv0Var = new vv0();
        vv0Var.b = c;
        vv0Var.a = i41Var;
        return vv0Var;
    }

    @Override // defpackage.m03
    public final Object get() {
        Object obj;
        Object obj2 = this.b;
        Object obj3 = c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            obj = this.b;
            if (obj == obj3) {
                obj = this.a.get();
                Object obj4 = this.b;
                if (obj4 != obj3 && obj4 != obj) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                }
                this.b = obj;
                this.a = null;
            }
        }
        return obj;
    }
}
