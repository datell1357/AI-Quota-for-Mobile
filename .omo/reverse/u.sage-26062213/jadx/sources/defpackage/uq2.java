package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uq2 extends zq2 {
    public static final uq2 c = new uq2(1, 0, 2);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        int iC = e50Var.c(0);
        int i = xn3Var.v;
        int iN = xn3Var.N(xn3Var.b, xn3Var.r(i));
        int iG = xn3Var.g(xn3Var.b, xn3Var.r(i + 1));
        for (int iMax = Math.max(iN, iG - iC); iMax < iG; iMax++) {
            Object obj = xn3Var.c[xn3Var.h(iMax)];
            if (obj instanceof eg1) {
                l53Var.e((eg1) obj);
            } else if (obj instanceof c33) {
                ((c33) obj).c();
            }
        }
        if (iC <= 0) {
            wb0.a("Check failed");
        }
        int i2 = xn3Var.v;
        int iN2 = xn3Var.N(xn3Var.b, xn3Var.r(i2));
        int iG2 = xn3Var.g(xn3Var.b, xn3Var.r(i2 + 1)) - iC;
        if (iG2 < iN2) {
            wb0.a("Check failed");
        }
        xn3Var.J(iG2, iC, i2);
        int i3 = xn3Var.i;
        if (i3 >= iN2) {
            xn3Var.i = i3 - iC;
        }
    }
}
