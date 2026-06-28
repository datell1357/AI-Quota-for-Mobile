package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class el3 implements gf1 {
    public final /* synthetic */ ArrayList n;
    public final /* synthetic */ y84 o;
    public final /* synthetic */ pe1 p;

    public el3(ArrayList arrayList, y84 y84Var, pe1 pe1Var) {
        this.n = arrayList;
        this.o = y84Var;
        this.p = pe1Var;
    }

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        int i;
        uz1 uz1Var = (uz1) obj;
        int iIntValue = ((Number) obj2).intValue();
        ag1 ag1Var = (ag1) obj3;
        int iIntValue2 = ((Number) obj4).intValue();
        if ((iIntValue2 & 6) == 0) {
            i = (ag1Var.f(uz1Var) ? 4 : 2) | iIntValue2;
        } else {
            i = iIntValue2;
        }
        if ((iIntValue2 & 48) == 0) {
            i |= ag1Var.d(iIntValue) ? 32 : 16;
        }
        int i2 = 0;
        int i3 = 1;
        if (ag1Var.N(i & 1, (i & 147) != 146)) {
            y84 y84Var = (y84) this.n.get(iIntValue);
            ag1Var.W(699771018);
            boolean z = this.o == y84Var;
            pe1 pe1Var = this.p;
            boolean zF = ag1Var.f(pe1Var) | ag1Var.d(y84Var.ordinal());
            Object objK = ag1Var.K();
            if (zF || objK == rb0.a) {
                objK = new bl1(pe1Var, y84Var);
                ag1Var.g0(objK);
            }
            a50.b(z, (ne1) objK, qj0.U(-2048819681, new dl3(i2, y84Var), ag1Var), null, false, qj0.U(1838065724, new dl3(i3, y84Var), ag1Var), null, null, null, null, null, null, ag1Var, 196992);
            ag1Var.p(false);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }
}
