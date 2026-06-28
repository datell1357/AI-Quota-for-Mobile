package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t7 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ ka0 o;

    public /* synthetic */ t7(ka0 ka0Var, int i) {
        this.n = i;
        this.o = ka0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        l80 l80Var = l80.a;
        oh ohVar = th.c;
        kd2 kd2Var = kd2.b;
        int i2 = 1;
        t64 t64Var = t64.a;
        ka0 ka0Var = this.o;
        ag1 ag1Var = (ag1) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int iIntValue = num.intValue();
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    float f = ((cw0) ag1Var.j(at1.c)).n;
                    if (Float.isNaN(f)) {
                        f = 0.0f;
                    }
                    ds2 ds2Var = lz.a;
                    cw0 cw0Var = new cw0(8.0f - (f - (((Boolean) dx2.a.getValue()).booleanValue() ? 36.0f : 40.0f)));
                    cw0 cw0Var2 = new cw0(0.0f);
                    cw0 cw0Var3 = new cw0(8.0f);
                    if (cw0Var2.compareTo(cw0Var3) > 0) {
                        k21.h("Cannot coerce value to an empty range: maximum ", cw0Var3, " is less than minimum ", cw0Var2, 46);
                    } else {
                        if (cw0Var.compareTo(cw0Var2) < 0) {
                            cw0Var = cw0Var2;
                        } else if (cw0Var.compareTo(cw0Var3) > 0) {
                            cw0Var = cw0Var3;
                        }
                        x7.b(cw0Var.n, qj0.U(-459506658, new t7(ka0Var, i2), ag1Var), ag1Var, 390);
                    }
                }
                break;
            case 1:
                int iIntValue2 = num.intValue();
                if (!ag1Var.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    ka0Var.f(ag1Var, 0);
                    ag1Var.W(-1102003461);
                    ag1Var.p(false);
                }
                break;
            case 2:
                int iIntValue3 = num.intValue();
                if (!ag1Var.N(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    k80 k80VarA = i80.a(ohVar, mj1.z, ag1Var, 0);
                    int iHashCode = Long.hashCode(ag1Var.T);
                    hu2 hu2VarL = ag1Var.l();
                    nd2 nd2VarH = is0.H(ag1Var, kd2Var);
                    lb0.c.getClass();
                    ic0 ic0Var = kb0.b;
                    ag1Var.Z();
                    if (ag1Var.S) {
                        ag1Var.k(ic0Var);
                    } else {
                        ag1Var.j0();
                    }
                    ht4.D(kb0.f, ag1Var, k80VarA);
                    ht4.D(kb0.e, ag1Var, hu2VarL);
                    ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
                    ht4.y(ag1Var, kb0.h);
                    ht4.D(kb0.d, ag1Var, nd2VarH);
                    ka0Var.d(l80Var, ag1Var, 6);
                    ag1Var.p(true);
                }
                break;
            case 3:
                int iIntValue4 = num.intValue();
                if (!ag1Var.N(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    k80 k80VarA2 = i80.a(ohVar, mj1.z, ag1Var, 0);
                    int iHashCode2 = Long.hashCode(ag1Var.T);
                    hu2 hu2VarL2 = ag1Var.l();
                    nd2 nd2VarH2 = is0.H(ag1Var, kd2Var);
                    lb0.c.getClass();
                    ic0 ic0Var2 = kb0.b;
                    ag1Var.Z();
                    if (ag1Var.S) {
                        ag1Var.k(ic0Var2);
                    } else {
                        ag1Var.j0();
                    }
                    ht4.D(kb0.f, ag1Var, k80VarA2);
                    ht4.D(kb0.e, ag1Var, hu2VarL2);
                    ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode2));
                    ht4.y(ag1Var, kb0.h);
                    ht4.D(kb0.d, ag1Var, nd2VarH2);
                    ka0Var.d(l80Var, ag1Var, 6);
                    ag1Var.p(true);
                }
                break;
            case 4:
                int iIntValue5 = num.intValue();
                if (!ag1Var.N(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    ka0Var.d(l91.a, ag1Var, 6);
                }
                break;
            case 5:
                num.getClass();
                fl4.b(ka0Var, ag1Var, qj0.f0(7));
                break;
            default:
                num.getClass();
                ex2.a(ka0Var, ag1Var, qj0.f0(7));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ t7(ka0 ka0Var, int i, int i2) {
        this.n = i2;
        this.o = ka0Var;
    }
}
