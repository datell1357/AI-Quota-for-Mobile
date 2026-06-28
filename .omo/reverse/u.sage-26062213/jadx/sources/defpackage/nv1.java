package defpackage;

import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nv1 implements lx1 {
    public static final nv1 a = new nv1();
    public static final mv1 b = mv1.b;

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gg4.f(vn0Var);
        bw1 bw1Var = bw1.a;
        return new kv1((List) new xh().i(vn0Var));
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        kv1 kv1Var = (kv1) obj;
        kv1Var.getClass();
        gg4.e(bVar);
        bw1 bw1Var = bw1.a;
        ii3 ii3Var = bw1.b;
        ii3Var.getClass();
        wh whVar = new wh(ii3Var);
        List list = kv1Var.n;
        int size = list.size();
        b bVarA = bVar.a(whVar);
        Iterator it = list.iterator();
        for (int i = 0; i < size; i++) {
            bVarA.o(whVar, i, bw1Var, it.next());
        }
        bVarA.s(whVar);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
