package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface zb4 {
    default vb4 a(Class cls) {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    default vb4 b(Class cls, of2 of2Var) {
        return a(cls);
    }

    default vb4 c(i50 i50Var, of2 of2Var) {
        return b(on4.x(i50Var), of2Var);
    }
}
