package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tr0 implements ne1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ vr0 o;

    public /* synthetic */ tr0(vr0 vr0Var) {
        this.o = vr0Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        on4 h93Var;
        int i = this.n;
        int i2 = 23;
        vr0 vr0Var = this.o;
        switch (i) {
            case 0:
                x83 x83Var = (x83) n44.g0(vr0Var, b93.b);
                c93 c93Var = vr0Var.L;
                if (x83Var == null) {
                    if (c93Var != null) {
                        vr0Var.H0(c93Var);
                    }
                    vr0Var.L = null;
                } else if (c93Var == null) {
                    ur0 ur0Var = new ur0(vr0Var, 0);
                    tr0 tr0Var = new tr0(vr0Var, new ur0(vr0Var, 1), new wu4(23, vr0Var));
                    xs1 xs1Var = vr0Var.D;
                    boolean z = vr0Var.E;
                    float f = vr0Var.F;
                    d34 d34Var = a93.a;
                    c93 c93Var2 = new c93();
                    c93Var2.G0(new dc(xs1Var, z, f, ur0Var, tr0Var));
                    vr0Var.G0(c93Var2);
                    vr0Var.L = c93Var2;
                }
                return t64.a;
            default:
                ee2 ee2Var = ((ua2) n44.g0(vr0Var, wa2.a)).d;
                p93 p93Var = (p93) n44.g0(vr0Var, b93.a);
                kt4 l93Var = vr0Var.H ? new l93(i2) : k93.z;
                if (vr0Var.I) {
                    o93 o93Var = p93Var.a;
                    h93Var = new h93();
                } else {
                    h93Var = g93.d;
                }
                return new m93(l93Var, h93Var, vr0Var.J ? new j93() : i93.r, vr0Var.K ? new f93() : e93.x);
        }
    }

    public /* synthetic */ tr0(vr0 vr0Var, ur0 ur0Var, wu4 wu4Var) {
        this.o = vr0Var;
    }
}
