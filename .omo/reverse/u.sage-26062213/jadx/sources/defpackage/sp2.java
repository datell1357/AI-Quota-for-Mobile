package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sp2 extends zq2 {
    public static final sp2 c = new sp2(0, 2, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        vf1 vf1Var = (vf1) e50Var.d(0);
        Object objD = e50Var.d(1);
        if (objD instanceof eg1) {
            eg1 eg1Var = (eg1) objD;
            l53Var.e.c(eg1Var);
            l53Var.d.a(eg1Var);
        }
        if (xn3Var.n != 0) {
            wb0.a("Can only append a slot if not current inserting");
        }
        int i = xn3Var.i;
        int i2 = xn3Var.j;
        int iC = xn3Var.c(vf1Var);
        int iG = xn3Var.g(xn3Var.b, xn3Var.r(iC + 1));
        xn3Var.i = iG;
        xn3Var.j = iG;
        xn3Var.x(1, iC);
        if (i >= iG) {
            i++;
            i2++;
        }
        xn3Var.c[iG] = objD;
        xn3Var.i = i;
        xn3Var.j = i2;
    }
}
