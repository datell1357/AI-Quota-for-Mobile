package defpackage;

import android.graphics.Canvas;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yc extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yc(pb4 pb4Var, xy1 xy1Var, pb4 pb4Var2) {
        super(1);
        this.o = 0;
        this.p = pb4Var;
        this.r = xy1Var;
        this.q = pb4Var2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        int i2 = 1;
        boolean zBooleanValue = false;
        Object obj2 = this.r;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                pb4 pb4Var = (pb4) obj4;
                xy1 xy1Var = (xy1) obj2;
                pb4 pb4Var2 = (pb4) obj3;
                v20 v20VarU = ((kx0) obj).z().u();
                if (pb4Var.getView().getVisibility() != 8) {
                    pb4Var.L = true;
                    sr2 sr2Var = xy1Var.A;
                    q9 q9Var = sr2Var instanceof q9 ? (q9) sr2Var : null;
                    if (q9Var != null) {
                        Canvas canvasA = z8.a(v20VarU);
                        if (q9Var.c0 != null) {
                            pb4Var2.draw(canvasA);
                        }
                    }
                    pb4Var.L = false;
                }
                return t64.a;
            case 1:
                return new t4((gp3) obj4, obj3, (he) obj2, i2);
            case 2:
                b24 b24Var = (b24) obj;
                gw0 gw0Var = (gw0) b24Var;
                if (!((sa) ((q9) w80.S((gw0) obj3)).getDragAndDropManager()).b.contains(gw0Var) || !fl4.d(gw0Var, on4.B((wu4) obj2))) {
                    return a24.n;
                }
                ((w33) obj4).n = b24Var;
                return a24.p;
            default:
                ka1 ka1Var = (ka1) obj;
                if (!nt1.g(ka1Var, (ka1) obj4)) {
                    if (nt1.g(ka1Var, (ka1) ((dh) obj3).c)) {
                        k21.n("Focus search landed at the root.");
                        return null;
                    }
                    zBooleanValue = ((Boolean) ((pe1) obj2).k(ka1Var)).booleanValue();
                }
                return Boolean.valueOf(zBooleanValue);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ yc(Object obj, Object obj2, Object obj3, int i) {
        super(1);
        this.o = i;
        this.p = obj;
        this.q = obj2;
        this.r = obj3;
    }
}
