package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yr2 extends md2 implements oy1 {
    public float B;
    public float C;
    public float D;
    public float E;
    public boolean F;

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        int iN = gb2Var.N(this.D) + gb2Var.N(this.B);
        int iN2 = gb2Var.N(this.E) + gb2Var.N(this.C);
        dv2 dv2VarE = ya2Var.e(nf0.h(-iN, -iN2, j));
        return gb2Var.e0(nf0.f(dv2VarE.n + iN, j), nf0.e(dv2VarE.o + iN2, j), h01.n, new m(20, this, dv2VarE));
    }
}
