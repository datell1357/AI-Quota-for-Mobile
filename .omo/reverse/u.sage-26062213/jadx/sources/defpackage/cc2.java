package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class cc2 {
    public final Context a;
    public final ub2 b;
    public final boolean c;
    public final int d;
    public View e;
    public boolean g;
    public hc2 h;
    public ac2 i;
    public PopupWindow.OnDismissListener j;
    public int f = 8388611;
    public final bc2 k = new bc2(this);

    public cc2(Context context, ub2 ub2Var, View view, boolean z, int i, int i2) {
        this.a = context;
        this.b = ub2Var;
        this.e = view;
        this.c = z;
        this.d = i;
    }

    public final ac2 a() {
        ac2 kr3Var;
        if (this.i == null) {
            Context context = this.a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int iMin = Math.min(point.x, point.y);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width);
            Context context2 = this.a;
            if (iMin >= dimensionPixelSize) {
                kr3Var = new g30(context2, this.e, this.d, this.c);
            } else {
                kr3Var = new kr3(context2, this.b, this.e, this.d, this.c);
            }
            kr3Var.l(this.b);
            kr3Var.r(this.k);
            kr3Var.n(this.e);
            kr3Var.d(this.h);
            kr3Var.o(this.g);
            kr3Var.p(this.f);
            this.i = kr3Var;
        }
        return this.i;
    }

    public final boolean b() {
        ac2 ac2Var = this.i;
        return ac2Var != null && ac2Var.k();
    }

    public void c() {
        this.i = null;
        PopupWindow.OnDismissListener onDismissListener = this.j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i, int i2, boolean z, boolean z2) {
        ac2 ac2VarA = a();
        ac2VarA.s(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f, this.e.getLayoutDirection()) & 7) == 5) {
                i -= this.e.getWidth();
            }
            ac2VarA.q(i);
            ac2VarA.t(i2);
            int i3 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            ac2VarA.n = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        ac2VarA.a();
    }
}
