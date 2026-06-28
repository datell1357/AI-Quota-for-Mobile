package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hz1 extends uy1 {
    public final /* synthetic */ lz1 b;
    public final /* synthetic */ df1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hz1(lz1 lz1Var, df1 df1Var, String str) {
        super(str);
        this.b = lz1Var;
        this.c = df1Var;
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        lz1 lz1Var = this.b;
        fz1 fz1Var = lz1Var.f194u;
        fz1Var.n = gb2Var.getLayoutDirection();
        fz1Var.o = gb2Var.b();
        fz1Var.p = gb2Var.k();
        boolean zQ = gb2Var.q();
        df1 df1Var = this.c;
        if (zQ || lz1Var.n.f415u == null) {
            lz1Var.q = 0;
            eb2 eb2Var = (eb2) df1Var.f(fz1Var, new mf0(j));
            return new gz1(eb2Var, lz1Var, lz1Var.q, eb2Var, 1);
        }
        lz1Var.r = 0;
        eb2 eb2Var2 = (eb2) df1Var.f(lz1Var.v, new mf0(j));
        return new gz1(eb2Var2, lz1Var, lz1Var.r, eb2Var2, 0);
    }
}
