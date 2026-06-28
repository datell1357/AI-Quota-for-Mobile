package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface as4 {
    static ls4 g(as4 as4Var, ss4 ss4Var, qd1 qd1Var, ArrayList arrayList) {
        String str = ss4Var.n;
        if (!as4Var.e(str)) {
            if ("hasOwnProperty".equals(str)) {
                ai4.g("hasOwnProperty", 1, arrayList);
                return as4Var.e(((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(0)).zzc()) ? ls4.k : ls4.l;
            }
            k21.f(di0.u("Object has no function ", str));
            return null;
        }
        ls4 ls4VarD = as4Var.d(str);
        if (ls4VarD instanceof zq4) {
            return ((zq4) ls4VarD).b(qd1Var, arrayList);
        }
        throw new IllegalArgumentException(str + " is not a function");
    }

    ls4 d(String str);

    boolean e(String str);

    void f(String str, ls4 ls4Var);
}
