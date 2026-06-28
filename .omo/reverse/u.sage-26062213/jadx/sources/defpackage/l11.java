package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l11 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ n11 p;
    public final /* synthetic */ long q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l11(n11 n11Var, long j, int i) {
        super(1);
        this.o = i;
        this.p = n11Var;
        this.q = j;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        pe1 pe1Var;
        pe1 pe1Var2;
        int iOrdinal;
        int i = this.o;
        long j = this.q;
        long jB = 0;
        n11 n11Var = this.p;
        switch (i) {
            case 0:
                int iOrdinal2 = ((b11) obj).ordinal();
                if (iOrdinal2 == 0) {
                    l30 l30Var = n11Var.F.a.c;
                    if (l30Var != null && (pe1Var = l30Var.b) != null) {
                        j = ((rs1) pe1Var.k(new rs1(j))).a;
                    }
                } else if (iOrdinal2 != 1) {
                    if (iOrdinal2 != 2) {
                        p61.x();
                        return null;
                    }
                    l30 l30Var2 = n11Var.G.a.c;
                    if (l30Var2 != null && (pe1Var2 = l30Var2.b) != null) {
                        j = ((rs1) pe1Var2.k(new rs1(j))).a;
                    }
                }
                return new rs1(j);
            case 1:
                b11 b11Var = (b11) obj;
                if (b11Var == b11.p && n11Var.G.a.b == null) {
                    jB = n11Var.H.i;
                } else {
                    sn3 sn3Var = n11Var.F.a.b;
                    long j2 = sn3Var != null ? ((js1) sn3Var.a.k(new rs1(j))).a : 0L;
                    sn3 sn3Var2 = n11Var.G.a.b;
                    long j3 = sn3Var2 != null ? ((js1) sn3Var2.a.k(new rs1(j))).a : 0L;
                    int iOrdinal3 = b11Var.ordinal();
                    if (iOrdinal3 == 0) {
                        jB = j2;
                    } else if (iOrdinal3 != 1) {
                        if (iOrdinal3 != 2) {
                            p61.x();
                            return null;
                        }
                        jB = j3;
                    }
                }
                return new js1(jB);
            default:
                b11 b11Var2 = (b11) obj;
                if (n11Var.L != null && n11Var.G0() != null && !nt1.g(n11Var.L, n11Var.G0()) && (iOrdinal = b11Var2.ordinal()) != 0 && iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        p61.x();
                        return null;
                    }
                    l30 l30Var3 = n11Var.G.a.c;
                    if (l30Var3 != null) {
                        pe1 pe1Var3 = l30Var3.b;
                        long j4 = this.q;
                        long j5 = ((rs1) pe1Var3.k(new rs1(j4))).a;
                        cw cwVarG0 = n11Var.G0();
                        cwVarG0.getClass();
                        hy1 hy1Var = hy1.n;
                        long jA = cwVarG0.a(j4, j5, hy1Var);
                        cw cwVar = n11Var.L;
                        cwVar.getClass();
                        jB = js1.b(jA, cwVar.a(j4, j5, hy1Var));
                    }
                }
                return new js1(jB);
        }
    }
}
