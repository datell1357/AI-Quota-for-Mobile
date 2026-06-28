package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kr3 extends ac2 implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public hc2 A;
    public ViewTreeObserver B;
    public boolean C;
    public boolean D;
    public int E;
    public boolean G;
    public final Context o;
    public final ub2 p;
    public final sb2 q;
    public final boolean r;
    public final int s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final gc2 f171u;
    public PopupWindow.OnDismissListener x;
    public View y;
    public View z;
    public final d30 v = new d30(this, 1);
    public final eb w = new eb(3, this);
    public int F = 0;

    public kr3(Context context, ub2 ub2Var, View view, int i, boolean z) {
        this.o = context;
        this.p = ub2Var;
        this.r = z;
        this.q = new sb2(ub2Var, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.t = i;
        Resources resources = context.getResources();
        this.s = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.y = view;
        this.f171u = new gc2(context, i);
        ub2Var.b(this, context);
    }

    @Override // defpackage.tm3
    public final void a() {
        View view;
        if (k()) {
            return;
        }
        if (this.C || (view = this.y) == null) {
            k21.n("StandardMenuPopup cannot be used without an anchor");
            return;
        }
        this.z = view;
        gc2 gc2Var = this.f171u;
        mg mgVar = gc2Var.I;
        mg mgVar2 = gc2Var.I;
        mgVar.setOnDismissListener(this);
        gc2Var.z = this;
        gc2Var.H = true;
        mgVar2.setFocusable(true);
        View view2 = this.z;
        boolean z = this.B == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.B = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.v);
        }
        view2.addOnAttachStateChangeListener(this.w);
        gc2Var.y = view2;
        gc2Var.w = this.F;
        boolean z2 = this.D;
        Context context = this.o;
        sb2 sb2Var = this.q;
        if (!z2) {
            this.E = ac2.m(sb2Var, context, this.s);
            this.D = true;
        }
        int i = this.E;
        Rect rect = gc2Var.F;
        Drawable background = mgVar2.getBackground();
        if (background != null) {
            background.getPadding(rect);
            gc2Var.q = rect.left + rect.right + i;
        } else {
            gc2Var.q = i;
        }
        mgVar2.setInputMethodMode(2);
        Rect rect2 = this.n;
        gc2Var.G = rect2 != null ? new Rect(rect2) : null;
        gc2Var.a();
        fc2 fc2Var = gc2Var.p;
        fc2Var.setOnKeyListener(this);
        if (this.G) {
            ub2 ub2Var = this.p;
            if (ub2Var.l != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) fc2Var, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(ub2Var.l);
                }
                frameLayout.setEnabled(false);
                fc2Var.addHeaderView(frameLayout, null, false);
            }
        }
        gc2Var.c(sb2Var);
        gc2Var.a();
    }

    @Override // defpackage.ic2
    public final void b(ub2 ub2Var, boolean z) {
        if (ub2Var != this.p) {
            return;
        }
        dismiss();
        hc2 hc2Var = this.A;
        if (hc2Var != null) {
            hc2Var.b(ub2Var, z);
        }
    }

    @Override // defpackage.ic2
    public final void d(hc2 hc2Var) {
        this.A = hc2Var;
    }

    @Override // defpackage.tm3
    public final void dismiss() {
        if (k()) {
            this.f171u.dismiss();
        }
    }

    @Override // defpackage.ic2
    public final void f() {
        this.D = false;
        sb2 sb2Var = this.q;
        if (sb2Var != null) {
            sb2Var.notifyDataSetChanged();
        }
    }

    @Override // defpackage.tm3
    public final ListView g() {
        return this.f171u.p;
    }

    @Override // defpackage.ic2
    public final boolean i(kt3 kt3Var) {
        boolean z;
        if (kt3Var.hasVisibleItems()) {
            cc2 cc2Var = new cc2(this.o, kt3Var, this.z, this.r, this.t, 0);
            hc2 hc2Var = this.A;
            cc2Var.h = hc2Var;
            ac2 ac2Var = cc2Var.i;
            if (ac2Var != null) {
                ac2Var.d(hc2Var);
            }
            int size = kt3Var.f.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                MenuItem item = kt3Var.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            cc2Var.g = z;
            ac2 ac2Var2 = cc2Var.i;
            if (ac2Var2 != null) {
                ac2Var2.o(z);
            }
            cc2Var.j = this.x;
            this.x = null;
            this.p.c(false);
            gc2 gc2Var = this.f171u;
            int width = gc2Var.r;
            int i2 = !gc2Var.t ? 0 : gc2Var.s;
            if ((Gravity.getAbsoluteGravity(this.F, this.y.getLayoutDirection()) & 7) == 5) {
                width += this.y.getWidth();
            }
            if (!cc2Var.b()) {
                if (cc2Var.e != null) {
                    cc2Var.d(width, i2, true, true);
                }
            }
            hc2 hc2Var2 = this.A;
            if (hc2Var2 != null) {
                hc2Var2.l(kt3Var);
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.ic2
    public final boolean j() {
        return false;
    }

    @Override // defpackage.tm3
    public final boolean k() {
        return !this.C && this.f171u.I.isShowing();
    }

    @Override // defpackage.ac2
    public final void n(View view) {
        this.y = view;
    }

    @Override // defpackage.ac2
    public final void o(boolean z) {
        this.q.c = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.C = true;
        this.p.c(true);
        ViewTreeObserver viewTreeObserver = this.B;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.B = this.z.getViewTreeObserver();
            }
            this.B.removeGlobalOnLayoutListener(this.v);
            this.B = null;
        }
        this.z.removeOnAttachStateChangeListener(this.w);
        PopupWindow.OnDismissListener onDismissListener = this.x;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // defpackage.ac2
    public final void p(int i) {
        this.F = i;
    }

    @Override // defpackage.ac2
    public final void q(int i) {
        this.f171u.r = i;
    }

    @Override // defpackage.ac2
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.x = onDismissListener;
    }

    @Override // defpackage.ac2
    public final void s(boolean z) {
        this.G = z;
    }

    @Override // defpackage.ac2
    public final void t(int i) {
        gc2 gc2Var = this.f171u;
        gc2Var.s = i;
        gc2Var.t = true;
    }

    @Override // defpackage.ac2
    public final void l(ub2 ub2Var) {
    }
}
