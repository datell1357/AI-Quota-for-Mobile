package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z94 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ aa4 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z94(aa4 aa4Var, int i) {
        super(1);
        this.o = i;
        this.p = aa4Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        t64 t64Var = t64.a;
        aa4 aa4Var = this.p;
        switch (i) {
            case 0:
                aa4Var.d = true;
                aa4Var.f.a();
                return t64Var;
            default:
                kx0 kx0Var = (kx0) obj;
                li1 li1Var = aa4Var.b;
                float f = aa4Var.k;
                float f2 = aa4Var.l;
                eh ehVarZ = kx0Var.z();
                long jZ = ehVarZ.z();
                ehVarZ.u().j();
                try {
                    ((dh1) ehVarZ.o).s(f, f2, 0L);
                    li1Var.a(kx0Var);
                    return t64Var;
                } finally {
                    ehVarZ.u().h();
                    ehVarZ.K(jZ);
                }
        }
    }
}
