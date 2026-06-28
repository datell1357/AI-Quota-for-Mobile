package defpackage;

import android.os.Bundle;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y82 implements gf1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ xi2 o;
    public final /* synthetic */ MainActivity p;

    public /* synthetic */ y82(xi2 xi2Var, MainActivity mainActivity) {
        this.n = 1;
        this.o = xi2Var;
        this.p = mainActivity;
    }

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        String string;
        String string2;
        int i = this.n;
        y84 y84VarValueOf = y84.r;
        String str = "CLAUDE";
        t64 t64Var = t64.a;
        bx3 bx3Var = rb0.a;
        xi2 xi2Var = this.o;
        MainActivity mainActivity = this.p;
        switch (i) {
            case 0:
                yh2 yh2Var = (yh2) obj2;
                ag1 ag1Var = (ag1) obj3;
                ((Integer) obj4).getClass();
                int i2 = MainActivity.C;
                ((ae) obj).getClass();
                yh2Var.getClass();
                Bundle bundleA = yh2Var.f421u.a();
                if (bundleA != null && (string = bundleA.getString("serviceType")) != null) {
                    str = string;
                }
                try {
                    y84VarValueOf = y84.valueOf(str);
                    break;
                } catch (IllegalArgumentException unused) {
                }
                y84 y84Var = y84VarValueOf;
                n8 n8VarI = mainActivity.i();
                boolean zH = ag1Var.h(xi2Var) | ag1Var.h(yh2Var);
                Object objK = ag1Var.K();
                if (zH || objK == bx3Var) {
                    objK = new e92(xi2Var, yh2Var, 2);
                    ag1Var.g0(objK);
                }
                ne1 ne1Var = (ne1) objK;
                boolean zH2 = ag1Var.h(xi2Var);
                Object objK2 = ag1Var.K();
                if (zH2 || objK2 == bx3Var) {
                    objK2 = new g92(xi2Var, 0);
                    ag1Var.g0(objK2);
                }
                pe1 pe1Var = (pe1) objK2;
                boolean zH3 = ag1Var.h(mainActivity) | ag1Var.h(xi2Var);
                Object objK3 = ag1Var.K();
                if (zH3 || objK3 == bx3Var) {
                    objK3 = new h4(20, mainActivity, xi2Var);
                    ag1Var.g0(objK3);
                }
                qj0.o(y84Var, n8VarI, ne1Var, pe1Var, (ne1) objK3, ag1Var, 64);
                break;
            case 1:
                yh2 yh2Var2 = (yh2) obj2;
                ag1 ag1Var2 = (ag1) obj3;
                ((Integer) obj4).getClass();
                int i3 = MainActivity.C;
                ((ae) obj).getClass();
                yh2Var2.getClass();
                Bundle bundleA2 = yh2Var2.f421u.a();
                if (bundleA2 != null && (string2 = bundleA2.getString("serviceType")) != null) {
                    str = string2;
                }
                try {
                    y84VarValueOf = y84.valueOf(str);
                    break;
                } catch (IllegalArgumentException unused2) {
                }
                y84 y84Var2 = y84VarValueOf;
                boolean zH4 = ag1Var2.h(xi2Var) | ag1Var2.h(yh2Var2);
                Object objK4 = ag1Var2.K();
                int i4 = 1;
                if (zH4 || objK4 == bx3Var) {
                    objK4 = new e92(xi2Var, yh2Var2, i4);
                    ag1Var2.g0(objK4);
                }
                ne1 ne1Var2 = (ne1) objK4;
                boolean zD = ag1Var2.d(y84Var2.ordinal()) | ag1Var2.h(mainActivity) | ag1Var2.h(xi2Var);
                Object objK5 = ag1Var2.K();
                if (zD || objK5 == bx3Var) {
                    objK5 = new d92(y84Var2, mainActivity, xi2Var, i4);
                    ag1Var2.g0(objK5);
                }
                ix.a(ne1Var2, (ne1) objK5, y84Var2, true, ag1Var2, 3072);
                break;
            default:
                yh2 yh2Var3 = (yh2) obj2;
                ag1 ag1Var3 = (ag1) obj3;
                ((Integer) obj4).getClass();
                int i5 = MainActivity.C;
                ((ae) obj).getClass();
                yh2Var3.getClass();
                n8 n8VarI2 = mainActivity.i();
                boolean zH5 = ag1Var3.h(xi2Var) | ag1Var3.h(yh2Var3);
                Object objK6 = ag1Var3.K();
                if (zH5 || objK6 == bx3Var) {
                    objK6 = new e92(xi2Var, yh2Var3, 3);
                    ag1Var3.g0(objK6);
                }
                tv4.d(n8VarI2, (ne1) objK6, ag1Var3, 8);
                break;
        }
        return t64Var;
    }

    public /* synthetic */ y82(MainActivity mainActivity, xi2 xi2Var, int i) {
        this.n = i;
        this.p = mainActivity;
        this.o = xi2Var;
    }
}
