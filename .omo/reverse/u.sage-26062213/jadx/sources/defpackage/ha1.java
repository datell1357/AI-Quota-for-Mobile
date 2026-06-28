package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ha1 extends of1 implements df1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ int f124u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ha1(int i, Object obj, Class cls, String str, String str2, int i2, int i3, int i4) {
        super(i, obj, cls, str, str2, i2, i3);
        this.f124u = i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        boolean zA;
        boolean zA2;
        int i = this.f124u;
        t64 t64Var = t64.a;
        i02 i02Var = null;
        Object[] objArr = 0;
        Object obj3 = this.o;
        switch (i) {
            case 0:
                fa1 fa1Var = (fa1) obj;
                fa1 fa1Var2 = (fa1) obj2;
                ia1 ia1Var = (ia1) obj3;
                if (ia1Var.A && (zA = fa1Var2.a()) != fa1Var.a()) {
                    if (zA) {
                        w33 w33Var = new w33();
                        ix.H(ia1Var, new j9(4, w33Var, ia1Var));
                        i02 i02Var2 = (i02) w33Var.n;
                        if (i02Var2 != null) {
                            i02Var2.a();
                            i02Var = i02Var2;
                        }
                        ia1Var.E = i02Var;
                    } else {
                        i02 i02Var3 = ia1Var.E;
                        if (i02Var3 != null) {
                            i02Var3.b();
                        }
                        ia1Var.E = null;
                    }
                }
                return t64Var;
            case 1:
                fa1 fa1Var3 = (fa1) obj;
                fa1 fa1Var4 = (fa1) obj2;
                na1 na1Var = (na1) obj3;
                if (na1Var.A && (zA2 = fa1Var4.a()) != fa1Var3.a()) {
                    o oVar = na1Var.E;
                    if (oVar != null) {
                        oVar.k(Boolean.valueOf(zA2));
                    }
                    if (zA2) {
                        ca.y(na1Var.u0(), null, null, new x50((Object) na1Var, (dh0) (objArr == true ? 1 : 0), 5), 3);
                        w33 w33Var2 = new w33();
                        ix.H(na1Var, new h4(13, w33Var2, na1Var));
                        i02 i02Var4 = (i02) w33Var2.n;
                        if (i02Var4 != null) {
                            i02Var4.a();
                        } else {
                            i02Var4 = null;
                        }
                        na1Var.G = i02Var4;
                        mm2 mm2Var = na1Var.H;
                        if (mm2Var != null && mm2Var.O0().A) {
                            na1Var.K0();
                        }
                    } else {
                        i02 i02Var5 = na1Var.G;
                        if (i02Var5 != null) {
                            i02Var5.b();
                        }
                        na1Var.G = null;
                        na1Var.K0();
                    }
                    w80.A(na1Var);
                    vf2 vf2Var = na1Var.D;
                    if (vf2Var != null) {
                        t91 t91Var = na1Var.F;
                        if (zA2) {
                            if (t91Var != null) {
                                na1Var.J0(vf2Var, new u91(t91Var));
                                na1Var.F = null;
                            }
                            t91 t91Var2 = new t91();
                            na1Var.J0(vf2Var, t91Var2);
                            na1Var.F = t91Var2;
                        } else if (t91Var != null) {
                            na1Var.J0(vf2Var, new u91(t91Var));
                            na1Var.F = null;
                        }
                    }
                }
                return t64Var;
            default:
                gi3 gi3Var = (gi3) obj;
                int iIntValue = ((Number) obj2).intValue();
                gi3Var.getClass();
                aw1 aw1Var = (aw1) obj3;
                aw1Var.getClass();
                boolean z = !gi3Var.k(iIntValue) && gi3Var.j(iIntValue).h();
                aw1Var.b = z;
                return Boolean.valueOf(z);
        }
    }
}
