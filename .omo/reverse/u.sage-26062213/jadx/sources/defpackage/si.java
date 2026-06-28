package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class si {
    public static final si a = new si();

    public final boolean a(Object obj, Object obj2) {
        if (this == obj2) {
            return true;
        }
        if (!(obj instanceof jo1) || !(obj2 instanceof jo1)) {
            return nt1.g(obj, obj2);
        }
        jo1 jo1Var = (jo1) obj;
        jo1 jo1Var2 = (jo1) obj2;
        return nt1.g(jo1Var.a, jo1Var2.a) && jo1Var.b.equals(jo1Var2.b) && jo1Var.d.equals(jo1Var2.d) && nt1.g(jo1Var.o, jo1Var2.o) && jo1Var.p == jo1Var2.p && jo1Var.q == jo1Var2.q;
    }

    public final int b(Object obj) {
        if (!(obj instanceof jo1)) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
        jo1 jo1Var = (jo1) obj;
        return jo1Var.q.hashCode() + ((jo1Var.p.hashCode() + ((jo1Var.o.hashCode() + ((jo1Var.d.hashCode() + ((jo1Var.b.hashCode() + (jo1Var.a.hashCode() * 31)) * 961)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        return "AsyncImageModelEqualityDelegate.Default";
    }
}
