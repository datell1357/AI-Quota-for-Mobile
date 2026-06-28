package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rq2 extends zq2 {
    public static final rq2 c = new rq2(0, 1, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        c33 c33Var = (c33) e50Var.d(0);
        kg2 kg2Var = l53Var.i;
        au2 au2Var = kg2Var != null ? (au2) kg2Var.g(c33Var) : null;
        if (au2Var != null) {
            ArrayList arrayList = l53Var.j;
            if (arrayList == null) {
                arrayList = new ArrayList();
                l53Var.j = arrayList;
            }
            arrayList.add(l53Var.e);
            l53Var.e = au2Var.o;
        }
    }
}
