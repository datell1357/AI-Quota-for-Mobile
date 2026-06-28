package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ga extends xx1 implements df1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ga(int i, Object obj, Object obj2) {
        super(2);
        this.o = i;
        this.p = obj;
        this.q = obj2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        t64 t64Var = t64.a;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                int iIntValue = ((Number) obj).intValue();
                gh3 gh3Var = (gh3) obj2;
                ha haVar = (ha) obj3;
                if (!((hh3) obj4).b.b(gh3Var.f)) {
                    haVar.g(iIntValue, gh3Var);
                    haVar.d();
                }
                break;
            case 1:
                ((Number) obj2).intValue();
                j11.a((n14) obj4, (ne1) obj3, (ag1) obj, qj0.f0(1));
                break;
            case 2:
                ag1 ag1Var = (ag1) obj;
                int iIntValue2 = ((Number) obj2).intValue();
                if (!ag1Var.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    Boolean bool = (Boolean) ((dz1) obj4).g.getValue();
                    boolean zBooleanValue = bool.booleanValue();
                    df1 df1Var = (df1) obj3;
                    ag1Var.Y(bool);
                    boolean zG = ag1Var.g(zBooleanValue);
                    if (zBooleanValue) {
                        df1Var.f(ag1Var, 0);
                    } else {
                        if (ag1Var.l != 0) {
                            wb0.a("No nodes can be emitted before calling deactivateToEndGroup");
                        }
                        if (!ag1Var.S) {
                            if (zG) {
                                tn3 tn3Var = ag1Var.G;
                                int i2 = tn3Var.g;
                                int i3 = tn3Var.h;
                                tb0 tb0Var = ag1Var.M;
                                tb0Var.getClass();
                                tb0Var.d(false);
                                tb0Var.b.a.S0(wp2.c);
                                is0.j(ag1Var.s, i2, i3);
                                ag1Var.G.t();
                            } else {
                                ag1Var.P();
                            }
                        }
                    }
                    if (ag1Var.y && ag1Var.G.i == ag1Var.z) {
                        ag1Var.z = -1;
                        ag1Var.y = false;
                    }
                    ag1Var.p(false);
                }
                break;
            case 3:
                v20 v20Var = (v20) obj;
                zh1 zh1Var = (zh1) obj2;
                mm2 mm2Var = (mm2) obj4;
                xy1 xy1Var = mm2Var.F;
                if (!xy1Var.I()) {
                    mm2Var.b0 = true;
                } else {
                    mm2Var.Y = v20Var;
                    mm2Var.X = zh1Var;
                    ur2 snapshotObserver = ((q9) az1.a(xy1Var)).getSnapshotObserver();
                    o83 o83Var = mm2.d0;
                    snapshotObserver.a.c(mm2Var, l9.R, (lm2) obj3);
                    mm2Var.b0 = false;
                }
                break;
            default:
                ((Number) obj2).intValue();
                mt3.a((nd2) obj4, (df1) obj3, (ag1) obj, qj0.f0(1));
                break;
        }
        return t64Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ga(Object obj, ef1 ef1Var, int i, int i2) {
        super(2);
        this.o = i2;
        this.p = obj;
        this.q = ef1Var;
    }
}
