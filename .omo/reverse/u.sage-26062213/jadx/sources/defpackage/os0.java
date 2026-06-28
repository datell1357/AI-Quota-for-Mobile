package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class os0 extends cs3 implements tr3 {
    public final ne1 o;
    public final w13 p;
    public ns0 q = new ns0(wo3.j().g());

    public os0(ne1 ne1Var, w13 w13Var) {
        this.o = ne1Var;
        this.p = w13Var;
    }

    @Override // defpackage.bs3
    public final ds3 a() {
        return this.q;
    }

    @Override // defpackage.bs3
    public final void e(ds3 ds3Var) {
        ds3Var.getClass();
        this.q = (ns0) ds3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ns0 g(defpackage.ns0 r21, defpackage.po3 r22, boolean r23, defpackage.ne1 r24) {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.os0.g(ns0, po3, boolean, ne1):ns0");
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        pe1 pe1VarE = wo3.j().e();
        if (pe1VarE != null) {
            pe1VarE.k(this);
        }
        po3 po3VarJ = wo3.j();
        return g((ns0) wo3.i(this.q, po3VarJ), po3VarJ, true, this.o).f;
    }

    public final ns0 h() {
        po3 po3VarJ = wo3.j();
        return g((ns0) wo3.i(this.q, po3VarJ), po3VarJ, false, this.o);
    }

    public final String toString() {
        ns0 ns0Var = (ns0) wo3.h(this.q);
        return "DerivedState(value=" + (ns0Var.c(this, wo3.j()) ? String.valueOf(ns0Var.f) : "<Not calculated>") + ")@" + hashCode();
    }
}
