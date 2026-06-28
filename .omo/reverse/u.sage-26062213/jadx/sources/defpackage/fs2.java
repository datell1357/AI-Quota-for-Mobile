package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fs2 extends md2 implements oy1 {
    public zr2 B;

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        float fA = this.B.a(gb2Var.getLayoutDirection());
        float fD = this.B.d();
        float fB = this.B.b(gb2Var.getLayoutDirection());
        float fC = this.B.c();
        if (!((cw0.a(fA, 0.0f) >= 0) & (cw0.a(fD, 0.0f) >= 0) & (cw0.a(fB, 0.0f) >= 0) & (cw0.a(fC, 0.0f) >= 0))) {
            yq1.a("Padding must be non-negative");
        }
        int iN = gb2Var.N(fA);
        int iN2 = gb2Var.N(fB) + iN;
        int iN3 = gb2Var.N(fD);
        int iN4 = gb2Var.N(fC) + iN3;
        dv2 dv2VarE = ya2Var.e(nf0.h(-iN2, -iN4, j));
        return gb2Var.e0(nf0.f(dv2VarE.n + iN2, j), nf0.e(dv2VarE.o + iN4, j), h01.n, new sr1(dv2VarE, iN, iN3, 2));
    }
}
