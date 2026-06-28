package defpackage;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m9 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ q9 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m9(q9 q9Var, int i) {
        super(1);
        this.o = i;
        this.p = q9Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        t64 t64Var = t64.a;
        q9 q9Var = this.p;
        switch (i) {
            case 0:
                int i2 = ((p91) obj).a;
                dh dhVar = (dh) q9Var.getFocusOwner();
                q9 q9Var2 = (q9) dhVar.a;
                ka1 ka1VarF = dhVar.f();
                if (ka1VarF == null || !ka1VarF.B || !q9Var2.t(i2)) {
                    w33 w33Var = new w33();
                    w33Var.n = Boolean.FALSE;
                    ka1 ka1VarF2 = dhVar.f();
                    Boolean boolE = dhVar.e(i2, q9Var2.getEmbeddedViewFocusRect(), new aa1(i2, w33Var));
                    if ((!nt1.g(boolE, Boolean.TRUE) || ka1VarF2 == dhVar.f()) && boolE != null && w33Var.n != null && boolE.booleanValue()) {
                        ((Boolean) w33Var.n).getClass();
                    }
                }
                return t64Var;
            case 1:
                ne1 ne1Var = (ne1) obj;
                q9Var.getUncaughtExceptionHandler$ui();
                Handler handler = q9Var.getHandler();
                if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
                    ne1Var.a();
                } else {
                    Handler handler2 = q9Var.getHandler();
                    if (handler2 != null) {
                        handler2.post(new d9(1, ne1Var));
                    }
                }
                return t64Var;
            case 2:
                return q9Var.getInputModeManager();
            case 3:
                return q9Var.getTextInputService();
            case 4:
                return q9Var.getSoftwareKeyboardController();
            case 5:
                return q9Var.getTextToolbar();
            default:
                return q9Var.getPointerIconService();
        }
    }
}
