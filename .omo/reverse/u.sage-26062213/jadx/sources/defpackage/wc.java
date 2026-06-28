package defpackage;

import android.view.MotionEvent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wc extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ pb4 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ wc(pb4 pb4Var, int i) {
        super(1);
        this.o = i;
        this.p = pb4Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        boolean zDispatchTouchEvent;
        int i = this.o;
        t64 t64Var = t64.a;
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
                    idVar.removeViewInLayout(pb4Var);
                    n44.P(idVar.getLayoutNodeToHolder()).remove(idVar.getHolderToLayoutNode().remove(pb4Var));
                    pb4Var.setImportantForAccessibility(0);
                }
                pb4Var.removeAllViewsInLayout();
                return t64Var;
            case 1:
                pb4Var.D = (pe1) obj;
                return t64Var;
            default:
                MotionEvent motionEvent = (MotionEvent) obj;
                switch (motionEvent.getActionMasked()) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        zDispatchTouchEvent = pb4Var.dispatchTouchEvent(motionEvent);
                        break;
                    default:
                        zDispatchTouchEvent = pb4Var.dispatchGenericMotionEvent(motionEvent);
                        break;
                }
                return Boolean.valueOf(zDispatchTouchEvent);
        }
    }
}
