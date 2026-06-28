package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vc extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ pb4 p;
    public final /* synthetic */ xy1 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vc(pb4 pb4Var, xy1 xy1Var, int i) {
        super(1);
        this.o = i;
        this.p = pb4Var;
        this.q = xy1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        WindowInsets windowInsetsB;
        int i = this.o;
        t64 t64Var = t64.a;
        xy1 xy1Var = this.q;
        pb4 pb4Var = this.p;
        switch (i) {
            case 0:
                sr2 sr2Var = (sr2) obj;
                q9 q9Var = sr2Var instanceof q9 ? (q9) sr2Var : null;
                if (q9Var != null) {
                    id idVar = q9Var.c0;
                    if (idVar == null) {
                        idVar = new id(q9Var.getContext());
                        q9Var.addView(idVar, -1);
                        q9Var.requestLayout();
                        q9Var.c0 = idVar;
                    }
                    idVar.getHolderToLayoutNode().put(pb4Var, xy1Var);
                    idVar.addView(pb4Var);
                    idVar.getLayoutNodeToHolder().put(xy1Var, pb4Var);
                    pb4Var.setImportantForAccessibility(1);
                    lb4.e(pb4Var, new g9(q9Var, xy1Var, q9Var, idVar));
                }
                if (pb4Var.getView().getParent() != pb4Var) {
                    pb4Var.addView(pb4Var.getView());
                }
                break;
            case 1:
                cd.a(pb4Var, xy1Var);
                break;
            default:
                cd.a(pb4Var, xy1Var);
                ((q9) pb4Var.p).P = true;
                int[] iArr = pb4Var.A;
                int i2 = iArr[0];
                int i3 = iArr[1];
                pb4Var.getView().getLocationOnScreen(iArr);
                long j = pb4Var.B;
                long jI = ((gy1) obj).I();
                pb4Var.B = jI;
                ke4 ke4Var = pb4Var.C;
                if (ke4Var != null && ((i2 != iArr[0] || i3 != iArr[1] || !rs1.a(j, jI)) && (windowInsetsB = pb4Var.m(ke4Var).b()) != null)) {
                    pb4Var.getView().dispatchApplyWindowInsets(windowInsetsB);
                }
                break;
        }
        return t64Var;
    }
}
