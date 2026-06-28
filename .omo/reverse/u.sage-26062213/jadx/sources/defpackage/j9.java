package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j9 extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j9(int i, Object obj, Object obj2) {
        super(0);
        this.o = i;
        this.p = obj;
        this.q = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [md2] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23, types: [md2] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [ug2] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15, types: [ug2] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v18 */
    @Override // defpackage.ne1
    public final Object a() {
        gh3 gh3Var;
        xy1 xy1Var;
        int i = this.o;
        t64 t64Var = t64.a;
        Object obj = this.q;
        Object obj2 = this.p;
        switch (i) {
            case 0:
                break;
            case 1:
                v9 v9Var = (v9) obj;
                if3 if3Var = (if3) obj2;
                ye3 ye3Var = if3Var.r;
                ye3 ye3Var2 = if3Var.s;
                Float f = if3Var.p;
                Float f2 = if3Var.q;
                float fFloatValue = (ye3Var == null || f == null) ? 0.0f : ((Number) ye3Var.a.a()).floatValue() - f.floatValue();
                float fFloatValue2 = (ye3Var2 == null || f2 == null) ? 0.0f : ((Number) ye3Var2.a.a()).floatValue() - f2.floatValue();
                if (fFloatValue != 0.0f || fFloatValue2 != 0.0f) {
                    int iU = v9Var.u(if3Var.n);
                    ih3 ih3Var = (ih3) v9Var.m().b(v9Var.x);
                    if (ih3Var != null) {
                        try {
                            j3 j3Var = v9Var.z;
                            if (j3Var != null) {
                                j3Var.a.setBoundsInScreen(v9Var.f(ih3Var));
                            }
                            break;
                        } catch (IllegalStateException unused) {
                        }
                    }
                    ih3 ih3Var2 = (ih3) v9Var.m().b(v9Var.y);
                    if (ih3Var2 != null) {
                        try {
                            j3 j3Var2 = v9Var.A;
                            if (j3Var2 != null) {
                                j3Var2.a.setBoundsInScreen(v9Var.f(ih3Var2));
                            }
                            break;
                        } catch (IllegalStateException unused2) {
                        }
                    }
                    v9Var.q.invalidate();
                    ih3 ih3Var3 = (ih3) v9Var.m().b(iU);
                    if (ih3Var3 != null && (gh3Var = ih3Var3.a) != null && (xy1Var = gh3Var.c) != null) {
                        if (ye3Var != null) {
                            v9Var.C.h(iU, ye3Var);
                        }
                        if (ye3Var2 != null) {
                            v9Var.D.h(iU, ye3Var2);
                        }
                        v9Var.q(xy1Var);
                    }
                }
                if (ye3Var != null) {
                    if3Var.p = (Float) ye3Var.a.a();
                }
                if (ye3Var2 != null) {
                    if3Var.q = (Float) ye3Var2.a.a();
                }
                break;
            case 2:
                ne1 ne1Var = (ne1) obj2;
                if (ne1Var == null || (r10 = (l33) ne1Var.a()) == null) {
                    mm2 mm2Var = (mm2) obj;
                    if (!mm2Var.O0().A) {
                        mm2Var = null;
                    }
                    if (mm2Var != null) {
                    }
                }
                break;
            case 3:
                ((q00) obj2).D.k((r00) obj);
                break;
            case 4:
                ((w33) obj2).n = n44.g0((ia1) obj, bv2.a);
                break;
            case 5:
                ((w33) obj2).n = ((ka1) obj).I0();
                break;
            case 6:
                ((wj1) obj2).d((md2) obj);
                break;
            case 7:
                bo boVar = ((xy1) obj2).S;
                w33 w33Var = (w33) obj;
                if ((((md2) boVar.g).q & 8) != 0) {
                    for (md2 md2Var = (gw3) boVar.f; md2Var != null; md2Var = md2Var.r) {
                        if ((md2Var.p & 8) != 0) {
                            ?? G = md2Var;
                            ?? ug2Var = 0;
                            while (G != 0) {
                                if (G instanceof eh3) {
                                    eh3 eh3Var = (eh3) G;
                                    if (eh3Var.d0()) {
                                        bh3 bh3Var = new bh3();
                                        w33Var.n = bh3Var;
                                        bh3Var.q = true;
                                    }
                                    if (eh3Var.g0()) {
                                        ((bh3) w33Var.n).p = true;
                                    }
                                    eh3Var.a0((ph3) w33Var.n);
                                } else if ((G.p & 8) != 0 && (G instanceof kr0)) {
                                    md2 md2Var2 = ((kr0) G).C;
                                    int i2 = 0;
                                    G = G;
                                    ug2Var = ug2Var;
                                    while (md2Var2 != null) {
                                        if ((md2Var2.p & 8) != 0) {
                                            i2++;
                                            ug2Var = ug2Var;
                                            if (i2 == 1) {
                                                G = md2Var2;
                                            } else {
                                                if (ug2Var == 0) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (G != 0) {
                                                    ug2Var.c(G);
                                                    G = 0;
                                                }
                                                ug2Var.c(md2Var2);
                                            }
                                        }
                                        md2Var2 = md2Var2.s;
                                        G = G;
                                        ug2Var = ug2Var;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                G = w80.g(ug2Var);
                            }
                        }
                    }
                }
                break;
            default:
                o83 o83Var = mm2.d0;
                ((pe1) obj2).k(o83Var);
                mm2 mm2Var2 = (mm2) obj;
                boolean zG = nt1.g(mm2Var2.U, o83Var.w);
                boolean z = mm2Var2.V;
                boolean z2 = o83Var.x;
                boolean z3 = z != z2;
                if (!zG || z3) {
                    mm2Var2.U = o83Var.w;
                    mm2Var2.V = z2;
                    if (mm2Var2.W && (z3 || (z2 && !zG))) {
                        mm2Var2.F.F();
                    }
                }
                mm2Var2.W = true;
                o83Var.D = o83Var.w.a(o83Var.y, o83Var.B, o83Var.A);
                break;
        }
        return t64Var;
    }
}
