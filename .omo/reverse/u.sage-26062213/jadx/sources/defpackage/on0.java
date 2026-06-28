package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class on0 implements gf1 {
    public final /* synthetic */ List n;

    public on0(List list) {
        this.n = list;
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
        if (ag1Var.N(i & 1, (i & 147) != 146)) {
            s52 s52Var = (s52) this.n.get(iIntValue);
            ag1Var.W(-760092024);
            tv4.a(s52Var, ag1Var, 0);
            tv4.e(is0.M(kd2.b, 0.0f, 12.0f, 1), 0.5f, ((ua2) ag1Var.j(wa2.a)).a.B, ag1Var, 54, 0);
            ag1Var.p(false);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }
}
