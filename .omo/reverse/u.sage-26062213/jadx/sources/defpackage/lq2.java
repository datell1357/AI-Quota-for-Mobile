package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lq2 extends zq2 {
    public static final lq2 c = new lq2(0, 1, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        c33 c33Var = (c33) e50Var.d(0);
        Set set = l53Var.a;
        if (set == null) {
            return;
        }
        au2 au2Var = new au2(set);
        kg2 kg2Var = l53Var.i;
        if (kg2Var == null) {
            long[] jArr = td3.a;
            kg2Var = new kg2();
            l53Var.i = kg2Var;
        }
        kg2Var.m(c33Var, au2Var);
        l53Var.e.c(new eg1(au2Var, -1));
    }
}
