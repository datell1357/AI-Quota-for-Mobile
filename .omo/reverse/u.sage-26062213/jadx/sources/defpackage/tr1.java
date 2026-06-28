package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tr1 extends pr1 implements oy1 {
    public hd4 D;

    @Override // defpackage.pr1
    public final hd4 G0(hd4 hd4Var) {
        return new s64(hd4Var, this.D);
    }

    @Override // defpackage.pr1
    public final void H0() {
        super.H0();
        ca.u(this);
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        int iD = this.C.d(gb2Var, gb2Var.getLayoutDirection()) - this.B.d(gb2Var, gb2Var.getLayoutDirection());
        int iB = this.C.b(gb2Var) - this.B.b(gb2Var);
        int iC = (this.C.c(gb2Var, gb2Var.getLayoutDirection()) - this.B.c(gb2Var, gb2Var.getLayoutDirection())) + iD;
        int iA = (this.C.a(gb2Var) - this.B.a(gb2Var)) + iB;
        dv2 dv2VarE = ya2Var.e(nf0.h(-iC, -iA, j));
        return gb2Var.e0(nf0.f(dv2VarE.n + iC, j), nf0.e(dv2VarE.o + iA, j), h01.n, new sr1(dv2VarE, iD, iB, 0));
    }
}
