package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class vl1 implements ul1 {
    public final ul1 n;

    public vl1(ul1 ul1Var) {
        this.n = ul1Var;
    }

    public final Object a(String str, Class cls) {
        Object objB = this.n.b(str);
        if (objB == null) {
            return null;
        }
        return cls.cast(objB);
    }

    @Override // defpackage.ul1
    public final Object b(String str) {
        return this.n.b(str);
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        this.n.z(obj, str);
    }
}
