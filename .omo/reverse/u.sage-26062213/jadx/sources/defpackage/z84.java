package defpackage;

import u.sage.widget.UsageWidgetConfigActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z84 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ UsageWidgetConfigActivity o;

    public /* synthetic */ z84(UsageWidgetConfigActivity usageWidgetConfigActivity, int i) {
        this.n = i;
        this.o = usageWidgetConfigActivity;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        final UsageWidgetConfigActivity usageWidgetConfigActivity = this.o;
        final int i2 = 0;
        final int i3 = 1;
        ag1 ag1Var = (ag1) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                int i4 = UsageWidgetConfigActivity.o;
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    gy3.a(false, qj0.U(-1516681532, new z84(usageWidgetConfigActivity, i3), ag1Var), ag1Var, 384);
                }
                break;
            default:
                int i5 = UsageWidgetConfigActivity.o;
                if (!ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ag1Var.Q();
                } else {
                    boolean zH = ag1Var.h(usageWidgetConfigActivity);
                    Object objK = ag1Var.K();
                    bx3 bx3Var = rb0.a;
                    if (zH || objK == bx3Var) {
                        objK = new ne1() { // from class: a94
                            @Override // defpackage.ne1
                            public final Object a() {
                                int i6 = i2;
                                t64 t64Var2 = t64.a;
                                UsageWidgetConfigActivity usageWidgetConfigActivity2 = usageWidgetConfigActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = UsageWidgetConfigActivity.o;
                                        usageWidgetConfigActivity2.g();
                                        break;
                                    default:
                                        int i8 = UsageWidgetConfigActivity.o;
                                        usageWidgetConfigActivity2.g();
                                        break;
                                }
                                return t64Var2;
                            }
                        };
                        ag1Var.g0(objK);
                    }
                    n44.C(false, (ne1) objK, ag1Var, 0, 1);
                    boolean zH2 = ag1Var.h(usageWidgetConfigActivity);
                    Object objK2 = ag1Var.K();
                    if (zH2 || objK2 == bx3Var) {
                        objK2 = new di3(5, usageWidgetConfigActivity);
                        ag1Var.g0(objK2);
                    }
                    pe1 pe1Var = (pe1) objK2;
                    boolean zH3 = ag1Var.h(usageWidgetConfigActivity);
                    Object objK3 = ag1Var.K();
                    if (zH3 || objK3 == bx3Var) {
                        objK3 = new ne1() { // from class: a94
                            @Override // defpackage.ne1
                            public final Object a() {
                                int i6 = i3;
                                t64 t64Var2 = t64.a;
                                UsageWidgetConfigActivity usageWidgetConfigActivity2 = usageWidgetConfigActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = UsageWidgetConfigActivity.o;
                                        usageWidgetConfigActivity2.g();
                                        break;
                                    default:
                                        int i8 = UsageWidgetConfigActivity.o;
                                        usageWidgetConfigActivity2.g();
                                        break;
                                }
                                return t64Var2;
                            }
                        };
                        ag1Var.g0(objK3);
                    }
                    tv4.c(pe1Var, (ne1) objK3, ag1Var, 0);
                }
                break;
        }
        return t64Var;
    }
}
