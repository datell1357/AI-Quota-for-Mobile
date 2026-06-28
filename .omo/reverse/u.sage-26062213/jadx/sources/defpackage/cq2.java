package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cq2 extends zq2 {
    public static final cq2 c = new cq2(0, 1, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        ug2 ug2Var;
        c33 c33Var = (c33) e50Var.d(0);
        kg2 kg2Var = l53Var.i;
        if (kg2Var == null || ((au2) kg2Var.g(c33Var)) == null) {
            return;
        }
        ArrayList arrayList = l53Var.j;
        if (arrayList != null && (ug2Var = (ug2) arrayList.remove(arrayList.size() - 1)) != null) {
            l53Var.e = ug2Var;
        }
        kg2Var.k(c33Var);
    }
}
