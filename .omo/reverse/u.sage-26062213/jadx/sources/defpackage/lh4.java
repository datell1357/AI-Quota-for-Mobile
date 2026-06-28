package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lh4 extends md2 implements oy1 {
    public ju0 B;
    public df1 C;

    @Override // defpackage.oy1
    public final eb2 h0(final gb2 gb2Var, ya2 ya2Var, long j) {
        final dv2 dv2VarE = ya2Var.e(nf0.a(this.B != ju0.n ? 0 : mf0.j(j), mf0.h(j), this.B == ju0.o ? mf0.i(j) : 0, mf0.g(j)));
        final int iK = ix.k(dv2VarE.n, mf0.j(j), mf0.h(j));
        final int iK2 = ix.k(dv2VarE.o, mf0.i(j), mf0.g(j));
        return gb2Var.e0(iK, iK2, h01.n, new pe1() { // from class: kh4
            @Override // defpackage.pe1
            public final Object k(Object obj) {
                df1 df1Var = this.n.C;
                dv2 dv2Var = dv2VarE;
                cv2.i((cv2) obj, dv2Var, ((js1) df1Var.f(new rs1((((long) (iK - dv2Var.n)) << 32) | (((long) (iK2 - dv2Var.o)) & 4294967295L)), gb2Var.getLayoutDirection())).a);
                return t64.a;
            }
        });
    }
}
