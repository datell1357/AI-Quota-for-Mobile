package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u5 implements ic2 {
    public int A;
    public int B;
    public boolean C;
    public r5 E;
    public r5 F;
    public rf1 G;
    public s5 H;
    public final Context n;
    public Context o;
    public ub2 p;
    public final LayoutInflater q;
    public hc2 r;
    public ActionMenuView t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public t5 f354u;
    public Drawable v;
    public boolean w;
    public boolean x;
    public boolean y;
    public int z;
    public final int s = R.layout.abc_action_menu_item_layout;
    public final SparseBooleanArray D = new SparseBooleanArray();
    public final dh1 I = new dh1(this);

    public u5(Context context) {
        this.n = context;
        this.q = LayoutInflater.from(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(zb2 zb2Var, View view, ActionMenuView actionMenuView) {
        View view2 = zb2Var.z;
        View view3 = view2 != null ? view2 : null;
        if (view3 == null || ((zb2Var.y & 8) != 0 && view2 != null)) {
            kc2 kc2Var = view instanceof kc2 ? (kc2) view : (kc2) this.q.inflate(this.s, (ViewGroup) actionMenuView, false);
            kc2Var.a(zb2Var);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) kc2Var;
            actionMenuItemView.setItemInvoker(this.t);
            if (this.H == null) {
                this.H = new s5(this);
            }
            actionMenuItemView.setPopupCallback(this.H);
            view3 = (View) kc2Var;
        }
        view3.setVisibility(zb2Var.B ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        actionMenuView.getClass();
        if (!(layoutParams instanceof w5)) {
            view3.setLayoutParams(ActionMenuView.i(layoutParams));
        }
        return view3;
    }

    @Override // defpackage.ic2
    public final void b(ub2 ub2Var, boolean z) {
        g();
        r5 r5Var = this.F;
        if (r5Var != null && r5Var.b()) {
            r5Var.i.dismiss();
        }
        hc2 hc2Var = this.r;
        if (hc2Var != null) {
            hc2Var.b(ub2Var, z);
        }
    }

    @Override // defpackage.ic2
    public final boolean c(zb2 zb2Var) {
        return false;
    }

    @Override // defpackage.ic2
    public final void d(hc2 hc2Var) {
        throw null;
    }

    @Override // defpackage.ic2
    public final boolean e(zb2 zb2Var) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ic2
    public final void f() {
        int i;
        ActionMenuView actionMenuView = this.t;
        ArrayList arrayList = null;
        boolean z = false;
        if (actionMenuView != null) {
            ub2 ub2Var = this.p;
            if (ub2Var != null) {
                ub2Var.i();
                ArrayList arrayListK = this.p.k();
                int size = arrayListK.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    zb2 zb2Var = (zb2) arrayListK.get(i2);
                    if ((zb2Var.x & 32) == 32) {
                        View childAt = actionMenuView.getChildAt(i);
                        zb2 itemData = childAt instanceof kc2 ? ((kc2) childAt).getItemData() : null;
                        View viewA = a(zb2Var, childAt, actionMenuView);
                        if (zb2Var != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            ViewGroup viewGroup = (ViewGroup) viewA.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeView(viewA);
                            }
                            this.t.addView(viewA, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < actionMenuView.getChildCount()) {
                if (actionMenuView.getChildAt(i) == this.f354u) {
                    i++;
                } else {
                    actionMenuView.removeViewAt(i);
                }
            }
        }
        this.t.requestLayout();
        ub2 ub2Var2 = this.p;
        if (ub2Var2 != null) {
            ub2Var2.i();
            ArrayList arrayList2 = ub2Var2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((zb2) arrayList2.get(i3)).getClass();
            }
        }
        ub2 ub2Var3 = this.p;
        if (ub2Var3 != null) {
            ub2Var3.i();
            arrayList = ub2Var3.j;
        }
        if (this.x && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((zb2) arrayList.get(0)).B;
            } else if (size3 > 0) {
                z = true;
            }
        }
        t5 t5Var = this.f354u;
        if (z) {
            if (t5Var == null) {
                this.f354u = new t5(this, this.n);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f354u.getParent();
            if (viewGroup2 != this.t) {
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.f354u);
                }
                ActionMenuView actionMenuView2 = this.t;
                t5 t5Var2 = this.f354u;
                actionMenuView2.getClass();
                w5 w5VarH = ActionMenuView.h();
                w5VarH.a = true;
                actionMenuView2.addView(t5Var2, w5VarH);
            }
        } else if (t5Var != null) {
            ViewParent parent = t5Var.getParent();
            ActionMenuView actionMenuView3 = this.t;
            if (parent == actionMenuView3) {
                actionMenuView3.removeView(this.f354u);
            }
        }
        this.t.setOverflowReserved(this.x);
    }

    public final boolean g() {
        ActionMenuView actionMenuView;
        rf1 rf1Var = this.G;
        if (rf1Var != null && (actionMenuView = this.t) != null) {
            actionMenuView.removeCallbacks(rf1Var);
            this.G = null;
            return true;
        }
        r5 r5Var = this.E;
        if (r5Var == null) {
            return false;
        }
        if (r5Var.b()) {
            r5Var.i.dismiss();
        }
        return true;
    }

    @Override // defpackage.ic2
    public final void h(Context context, ub2 ub2Var) {
        this.o = context;
        LayoutInflater.from(context);
        this.p = ub2Var;
        Resources resources = context.getResources();
        if (!this.y) {
            this.x = true;
        }
        int i = 2;
        this.z = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.B = i;
        int measuredWidth = this.z;
        if (this.x) {
            if (this.f354u == null) {
                t5 t5Var = new t5(this, this.n);
                this.f354u = t5Var;
                if (this.w) {
                    t5Var.setImageDrawable(this.v);
                    this.v = null;
                    this.w = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f354u.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f354u.getMeasuredWidth();
        } else {
            this.f354u = null;
        }
        this.A = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ic2
    public final boolean i(kt3 kt3Var) {
        boolean z;
        if (kt3Var.hasVisibleItems()) {
            kt3 kt3Var2 = kt3Var;
            while (true) {
                ub2 ub2Var = kt3Var2.v;
                if (ub2Var == this.p) {
                    break;
                }
                kt3Var2 = (kt3) ub2Var;
            }
            zb2 zb2Var = kt3Var2.w;
            ActionMenuView actionMenuView = this.t;
            View view = null;
            view = null;
            if (actionMenuView != null) {
                int childCount = actionMenuView.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = actionMenuView.getChildAt(i);
                    if ((childAt instanceof kc2) && ((kc2) childAt).getItemData() == zb2Var) {
                        view = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (view != null) {
                kt3Var.w.getClass();
                int size = kt3Var.f.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    MenuItem item = kt3Var.getItem(i2);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                r5 r5Var = new r5(this, this.o, kt3Var, view);
                this.F = r5Var;
                r5Var.g = z;
                ac2 ac2Var = r5Var.i;
                if (ac2Var != null) {
                    ac2Var.o(z);
                }
                r5 r5Var2 = this.F;
                if (!r5Var2.b()) {
                    if (r5Var2.e == null) {
                        k21.n("MenuPopupHelper cannot be used without an anchor");
                        return false;
                    }
                    r5Var2.d(0, 0, false, false);
                }
                hc2 hc2Var = this.r;
                if (hc2Var != null) {
                    hc2Var.l(kt3Var);
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ic2
    public final boolean j() {
        int size;
        ArrayList arrayListK;
        int i;
        boolean z;
        u5 u5Var = this;
        ub2 ub2Var = u5Var.p;
        if (ub2Var != null) {
            arrayListK = ub2Var.k();
            size = arrayListK.size();
        } else {
            size = 0;
            arrayListK = null;
        }
        int i2 = u5Var.B;
        int i3 = u5Var.A;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ActionMenuView actionMenuView = u5Var.t;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = 2;
            z = true;
            if (i4 >= size) {
                break;
            }
            zb2 zb2Var = (zb2) arrayListK.get(i4);
            int i7 = zb2Var.y;
            if ((i7 & 2) == 2) {
                i5++;
            } else if ((i7 & 1) == 1) {
                i6++;
            } else {
                z2 = true;
            }
            if (u5Var.C && zb2Var.B) {
                i2 = 0;
            }
            i4++;
        }
        if (u5Var.x && (z2 || i6 + i5 > i2)) {
            i2--;
        }
        int i8 = i2 - i5;
        SparseBooleanArray sparseBooleanArray = u5Var.D;
        sparseBooleanArray.clear();
        int i9 = 0;
        int i10 = 0;
        while (i9 < size) {
            zb2 zb2Var2 = (zb2) arrayListK.get(i9);
            int i11 = zb2Var2.y;
            boolean z3 = (i11 & 2) == i ? z : false;
            int i12 = zb2Var2.b;
            if (z3) {
                View viewA = u5Var.a(zb2Var2, null, actionMenuView);
                viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewA.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i10 == 0) {
                    i10 = measuredWidth;
                }
                if (i12 != 0) {
                    sparseBooleanArray.put(i12, z);
                }
                zb2Var2.d(z);
            } else if ((i11 & 1) == z) {
                boolean z4 = sparseBooleanArray.get(i12);
                boolean z5 = ((i8 > 0 || z4) && i3 > 0) ? z : false;
                if (z5) {
                    View viewA2 = u5Var.a(zb2Var2, null, actionMenuView);
                    viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewA2.getMeasuredWidth();
                    i3 -= measuredWidth2;
                    if (i10 == 0) {
                        i10 = measuredWidth2;
                    }
                    z5 &= i3 + i10 > 0;
                }
                if (z5 && i12 != 0) {
                    sparseBooleanArray.put(i12, true);
                } else if (z4) {
                    sparseBooleanArray.put(i12, false);
                    for (int i13 = 0; i13 < i9; i13++) {
                        zb2 zb2Var3 = (zb2) arrayListK.get(i13);
                        if (zb2Var3.b == i12) {
                            if ((zb2Var3.x & 32) == 32) {
                                i8++;
                            }
                            zb2Var3.d(false);
                        }
                    }
                }
                if (z5) {
                    i8--;
                }
                zb2Var2.d(z5);
            } else {
                zb2Var2.d(false);
                i9++;
                i = 2;
                u5Var = this;
                z = true;
            }
            i9++;
            i = 2;
            u5Var = this;
            z = true;
        }
        return z;
    }

    public final boolean k() {
        r5 r5Var;
        ub2 ub2Var;
        boolean z = false;
        if (this.x && (((r5Var = this.E) == null || !r5Var.b()) && (ub2Var = this.p) != null && this.t != null && this.G == null)) {
            ub2Var.i();
            if (!ub2Var.j.isEmpty()) {
                rf1 rf1Var = new rf1(2, this, new r5(this, this.o, this.p, this.f354u), z);
                this.G = rf1Var;
                this.t.post(rf1Var);
                return true;
            }
        }
        return false;
    }
}
