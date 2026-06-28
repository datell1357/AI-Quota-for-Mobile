package defpackage;

import android.graphics.Rect;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f9 extends md2 implements xx, eh3, px1, oy1, b24 {
    public ue4 B;
    public final z C = new z(1, this);
    public final c8 D = new c8(1, this);
    public final /* synthetic */ q9 E;

    public f9(q9 q9Var) {
        this.E = q9Var;
    }

    @Override // defpackage.px1
    public final boolean R(KeyEvent keyEvent) {
        p91 p91Var;
        int[] iArr = v91.a;
        long jC = k30.c(keyEvent.getKeyCode());
        if (nx1.a(jC, nx1.b)) {
            p91Var = new p91(2);
        } else if (nx1.a(jC, nx1.c)) {
            p91Var = new p91(1);
        } else if (nx1.a(jC, nx1.i)) {
            p91Var = new p91(keyEvent.isShiftPressed() ? 2 : 1);
        } else {
            p91Var = nx1.a(jC, nx1.g) ? new p91(4) : nx1.a(jC, nx1.f) ? new p91(3) : (nx1.a(jC, nx1.d) || nx1.a(jC, nx1.m)) ? new p91(5) : (nx1.a(jC, nx1.e) || nx1.a(jC, nx1.n)) ? new p91(6) : (nx1.a(jC, nx1.h) || nx1.a(jC, nx1.k) || nx1.a(jC, nx1.o)) ? new p91(7) : (nx1.a(jC, nx1.a) || nx1.a(jC, nx1.l)) ? new p91(8) : null;
        }
        if (p91Var != null) {
            int i = p91Var.a;
            if (tv4.z(keyEvent) == 2) {
                q9 q9Var = this.E;
                ka1 ka1VarF = ((dh) q9Var.getFocusOwner()).f();
                if (ka1VarF != null && ka1VarF.B && q9Var.t(i)) {
                    q9Var.getPlayNavigationSoundEffect$ui().f(p91Var, Boolean.valueOf(keyEvent.getRepeatCount() > 0));
                    return true;
                }
                Boolean boolE = ((dh) q9Var.getFocusOwner()).e(i, q9Var.getEmbeddedViewFocusRect(), new c8(2, p91Var));
                if (boolE == null) {
                    return true;
                }
                if (boolE.booleanValue()) {
                    q9Var.getPlayNavigationSoundEffect$ui().f(p91Var, Boolean.valueOf(keyEvent.getRepeatCount() > 0));
                    return true;
                }
                if (i != 1 && i != 2) {
                    return false;
                }
                Integer numC = v91.c(i);
                int iIntValue = numC != null ? numC.intValue() : 2;
                FocusFinder focusFinder = FocusFinder.getInstance();
                View rootView = q9Var.getRootView();
                rootView.getClass();
                View viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, q9Var.getView(), iIntValue);
                if (viewFindNextFocus == null || viewFindNextFocus.equals(q9Var)) {
                    return ((dh) q9Var.getFocusOwner()).j(i);
                }
            }
        }
        return false;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        dv2 dv2VarE = ya2Var.e(j);
        int i = dv2VarE.n;
        int i2 = dv2VarE.o;
        e9 e9Var = new e9(dv2VarE, 0);
        return gb2Var.W(i, i2, this.D, this.C, h01.n, e9Var);
    }

    @Override // defpackage.px1
    public final boolean j(KeyEvent keyEvent) {
        return false;
    }

    @Override // defpackage.xx
    public final Object j0(mm2 mm2Var, j9 j9Var, bv3 bv3Var) {
        long J = mm2Var.J(0L);
        l33 l33Var = (l33) j9Var.a();
        l33 l33VarE = l33Var != null ? l33Var.e(J) : null;
        if (l33VarE != null) {
            this.E.requestRectangleOnScreen(new Rect((int) l33VarE.a, (int) l33VarE.b, (int) l33VarE.c, (int) l33VarE.d), false);
        }
        return t64.a;
    }

    @Override // defpackage.b24
    public final Object n() {
        return "androidx.compose.ui.layout.WindowInsetsRulers";
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
    }
}
