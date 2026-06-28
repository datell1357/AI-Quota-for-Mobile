package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z03 {
    public final Class a;
    public final Class b;

    public z03(Class cls, Class cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public static z03 a(Class cls) {
        return new z03(y03.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z03.class != obj.getClass()) {
            return false;
        }
        z03 z03Var = (z03) obj;
        if (this.b.equals(z03Var.b)) {
            return this.a.equals(z03Var.a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.b;
        Class cls2 = this.a;
        if (cls2 == y03.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
