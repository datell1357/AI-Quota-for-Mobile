package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hq2 extends zq2 {
    public static final hq2 c = new hq2(0, 3, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        xh1 xh1Var;
        un3 un3Var = (un3) e50Var.d(1);
        vf1 vf1Var = (vf1) e50Var.d(0);
        n71 n71Var = (n71) e50Var.d(2);
        xn3 xn3VarF = un3Var.f();
        if (ar2Var != null) {
            try {
                xh1Var = new xh1(ar2Var, xn3Var);
            } catch (Throwable th) {
                xn3VarF.e(false);
                throw th;
            }
        } else {
            xh1Var = null;
        }
        if (!n71Var.h.R0()) {
            wb0.a("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
        n71Var.g.Q0(khVar, xn3VarF, l53Var, xh1Var);
        xn3VarF.e(true);
        xn3Var.d();
        vf1Var.getClass();
        xn3Var.A(un3Var, un3Var.a(vf1Var));
        xn3Var.k();
    }
}
