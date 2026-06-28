package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class y62 {
    public static final lc0 a = new lc0(new t52(3));

    public static vo2 a(ag1 ag1Var) {
        vo2 vo2Var = (vo2) ag1Var.j(a);
        Object obj = null;
        if (vo2Var == null) {
            ag1Var.W(1208426157);
            View view = (View) ag1Var.j(ea.f);
            view.getClass();
            while (true) {
                if (view == null) {
                    vo2Var = null;
                    break;
                }
                Object tag = view.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                vo2 vo2Var2 = tag instanceof vo2 ? (vo2) tag : null;
                if (vo2Var2 != null) {
                    vo2Var = vo2Var2;
                    break;
                }
                Object objQ = fl4.q(view);
                view = objQ instanceof View ? (View) objQ : null;
            }
        } else {
            ag1Var.W(1208423708);
        }
        ag1Var.p(false);
        if (vo2Var != null) {
            ag1Var.W(1208423789);
            ag1Var.p(false);
            return vo2Var;
        }
        ag1Var.W(1208428160);
        Context baseContext = (Context) ag1Var.j(ea.b);
        while (true) {
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
            if (baseContext instanceof vo2) {
                obj = baseContext;
                break;
            }
            baseContext = ((ContextWrapper) baseContext).getBaseContext();
        }
        vo2 vo2Var3 = (vo2) obj;
        ag1Var.p(false);
        return vo2Var3;
    }
}
