package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fe extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ ge p;
    public final /* synthetic */ long q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fe(ge geVar, long j, int i) {
        super(1);
        this.o = i;
        this.p = geVar;
        this.q = j;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        z51 z51Var;
        int i = this.o;
        long j = this.q;
        ge geVar = this.p;
        switch (i) {
            case 0:
                k14 k14Var = (k14) obj;
                if (!nt1.g(k14Var.b(), geVar.D.b())) {
                    tr3 tr3Var = (tr3) geVar.D.d.g(k14Var.b());
                    j = tr3Var != null ? ((rs1) tr3Var.getValue()).a : 0L;
                } else if (!rs1.a(geVar.E, -9223372034707292160L)) {
                    j = geVar.E;
                }
                tr3 tr3Var2 = (tr3) geVar.D.d.g(k14Var.c());
                j = tr3Var2 != null ? ((rs1) tr3Var2.getValue()).a : 0L;
                rn3 rn3Var = (rn3) geVar.C.getValue();
                return (rn3Var == null || (z51Var = (z51) rn3Var.a.f(new rs1(j), new rs1(j))) == null) ? tv4.Q(0.0f, 400.0f, null, 5) : z51Var;
            default:
                if (nt1.g(obj, geVar.D.b())) {
                    j = rs1.a(geVar.E, -9223372034707292160L) ? j : geVar.E;
                } else {
                    tr3 tr3Var3 = (tr3) geVar.D.d.g(obj);
                    if (tr3Var3 != null) {
                        j = ((rs1) tr3Var3.getValue()).a;
                    }
                }
                return new rs1(j);
        }
    }
}
