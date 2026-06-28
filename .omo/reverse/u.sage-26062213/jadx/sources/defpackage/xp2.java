package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xp2 extends zq2 {
    public static final xp2 c = new xp2(0, 2, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        int i;
        os1 os1Var = (os1) e50Var.d(0);
        int iC = xn3Var.c((vf1) e50Var.d(1));
        if (xn3Var.t >= iC) {
            wb0.a("Check failed");
        }
        nt1.N(xn3Var, khVar, iC);
        int i2 = xn3Var.t;
        int iE = xn3Var.v;
        while (iE >= 0 && !xn3Var.y(iE)) {
            iE = xn3Var.E(xn3Var.b, iE);
        }
        int iU = iE + 1;
        int iL = 0;
        while (iU < i2) {
            if (xn3Var.v(i2, iU)) {
                if (xn3Var.y(iU)) {
                    iL = 0;
                }
                iU++;
            } else {
                iL += xn3Var.y(iU) ? 1 : xn3Var.b[(xn3Var.r(iU) * 5) + 1] & 67108863;
                iU += xn3Var.u(iU);
            }
        }
        while (true) {
            i = xn3Var.t;
            if (i >= iC) {
                break;
            }
            if (xn3Var.v(iC, i)) {
                int i3 = xn3Var.t;
                if (i3 < xn3Var.f410u && (xn3Var.b[(xn3Var.r(i3) * 5) + 1] & 1073741824) != 0) {
                    khVar.d(xn3Var.D(xn3Var.t));
                    iL = 0;
                }
                xn3Var.P();
            } else {
                iL += xn3Var.L();
            }
        }
        if (i != iC) {
            wb0.a("Check failed");
        }
        os1Var.a = iL;
    }
}
