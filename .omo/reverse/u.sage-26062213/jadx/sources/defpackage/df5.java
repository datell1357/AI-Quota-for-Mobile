package defpackage;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class df5 extends zq4 {
    public final ra3 p;
    public final HashMap q;

    public df5(ra3 ra3Var) {
        super("require");
        this.q = new HashMap();
        this.p = ra3Var;
    }

    @Override // defpackage.zq4
    public final ls4 b(qd1 qd1Var, List list) {
        ls4 ls4Var;
        ai4.g("require", 1, list);
        String strZzc = ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(0)).zzc();
        HashMap map = this.q;
        if (map.containsKey(strZzc)) {
            return (ls4) map.get(strZzc);
        }
        HashMap map2 = (HashMap) this.p.o;
        if (map2.containsKey(strZzc)) {
            try {
                ls4Var = (ls4) ((Callable) map2.get(strZzc)).call();
            } catch (Exception unused) {
                k21.n("Failed to create API implementation: ".concat(String.valueOf(strZzc)));
                return null;
            }
        } else {
            ls4Var = ls4.f;
        }
        if (ls4Var instanceof zq4) {
            map.put(strZzc, (zq4) ls4Var);
        }
        return ls4Var;
    }
}
