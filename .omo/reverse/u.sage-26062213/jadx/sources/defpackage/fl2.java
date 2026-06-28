package defpackage;

import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fl2 {
    public static final BitSet a = qv3.k(61, 59);
    public static final BitSet b = qv3.k(59);

    public static ru a(b40 b40Var, ky0 ky0Var) {
        ev evVarB = b(b40Var, ky0Var);
        ArrayList arrayList = new ArrayList();
        while (!ky0Var.a()) {
            arrayList.add(b(b40Var, ky0Var));
        }
        return new ru(evVarB.n, evVarB.o, (sh2[]) arrayList.toArray(new sh2[arrayList.size()]));
    }

    public static ev b(b40 b40Var, ky0 ky0Var) {
        String strS = qv3.s(b40Var, ky0Var, a);
        if (ky0Var.a()) {
            return new ev(strS, null);
        }
        int i = ky0Var.d;
        char c = b40Var.n[i];
        ky0Var.b(i + 1);
        if (c != '=') {
            return new ev(strS, null);
        }
        String strS2 = qv3.s(b40Var, ky0Var, b);
        if (!ky0Var.a()) {
            ky0Var.b(ky0Var.d + 1);
        }
        return new ev(strS, strS2);
    }
}
