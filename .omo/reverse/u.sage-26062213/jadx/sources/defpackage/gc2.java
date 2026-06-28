package defpackage;

import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gc2 extends m42 implements yb2 {
    public static final Method M;
    public wu4 L;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                M = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // defpackage.yb2
    public final void b(ub2 ub2Var, MenuItem menuItem) {
        wu4 wu4Var = this.L;
        if (wu4Var != null) {
            wu4Var.b(ub2Var, menuItem);
        }
    }

    @Override // defpackage.yb2
    public final void d(ub2 ub2Var, zb2 zb2Var) {
        wu4 wu4Var = this.L;
        if (wu4Var != null) {
            wu4Var.d(ub2Var, zb2Var);
        }
    }
}
