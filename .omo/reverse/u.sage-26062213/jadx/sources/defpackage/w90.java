package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface w90 {
    default Object a(Class cls) {
        return l(z03.a(cls));
    }

    n03 b(z03 z03Var);

    default Set d(z03 z03Var) {
        return (Set) b(z03Var).get();
    }

    default n03 g(Class cls) {
        return k(z03.a(cls));
    }

    dr2 h(z03 z03Var);

    n03 k(z03 z03Var);

    default Object l(z03 z03Var) {
        n03 n03VarK = k(z03Var);
        if (n03VarK == null) {
            return null;
        }
        return n03VarK.get();
    }
}
