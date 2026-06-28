package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tj1 implements zb4 {
    public static final b21 c = new b21(5);
    public final zb4 a;
    public final u6 b;

    public tj1(zb4 zb4Var, qv3 qv3Var) {
        this.a = zb4Var;
        this.b = new u6(1, qv3Var);
    }

    @Override // defpackage.zb4
    public final vb4 a(Class cls) {
        if (!e53.t.containsKey(cls)) {
            return this.a.a(cls);
        }
        p61.s("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
        return null;
    }

    @Override // defpackage.zb4
    public final vb4 b(Class cls, of2 of2Var) {
        return e53.t.containsKey(cls) ? this.b.b(cls, of2Var) : this.a.b(cls, of2Var);
    }
}
