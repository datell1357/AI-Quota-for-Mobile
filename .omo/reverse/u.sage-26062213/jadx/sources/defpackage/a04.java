package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a04 implements ic2 {
    public ub2 n;
    public zb2 o;
    public final /* synthetic */ Toolbar p;

    public a04(Toolbar toolbar) {
        this.p = toolbar;
    }

    @Override // defpackage.ic2
    public final boolean c(zb2 zb2Var) {
        Toolbar toolbar = this.p;
        toolbar.removeView(toolbar.v);
        toolbar.removeView(toolbar.f16u);
        toolbar.v = null;
        ArrayList arrayList = toolbar.R;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.o = null;
        toolbar.requestLayout();
        zb2Var.B = false;
        zb2Var.n.o(false);
        toolbar.s();
        return true;
    }

    @Override // defpackage.ic2
    public final boolean e(zb2 zb2Var) {
        Toolbar toolbar = this.p;
        toolbar.c();
        ViewParent parent = toolbar.f16u.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f16u);
            }
            toolbar.addView(toolbar.f16u);
        }
        View view = zb2Var.z;
        if (view == null) {
            view = null;
        }
        toolbar.v = view;
        this.o = zb2Var;
        ViewParent parent2 = view.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.v);
            }
            b04 b04VarG = Toolbar.g();
            b04VarG.a = (toolbar.A & 112) | 8388611;
            b04VarG.b = 2;
            toolbar.v.setLayoutParams(b04VarG);
            toolbar.addView(toolbar.v);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((b04) childAt.getLayoutParams()).b != 2 && childAt != toolbar.n) {
                toolbar.removeViewAt(childCount);
                toolbar.R.add(childAt);
            }
        }
        toolbar.requestLayout();
        zb2Var.B = true;
        zb2Var.n.o(false);
        toolbar.s();
        return true;
    }

    @Override // defpackage.ic2
    public final void f() {
        if (this.o != null) {
            ub2 ub2Var = this.n;
            if (ub2Var != null) {
                int size = ub2Var.f.size();
                for (int i = 0; i < size; i++) {
                    if (this.n.getItem(i) == this.o) {
                        return;
                    }
                }
            }
            c(this.o);
        }
    }

    @Override // defpackage.ic2
    public final void h(Context context, ub2 ub2Var) {
        zb2 zb2Var;
        ub2 ub2Var2 = this.n;
        if (ub2Var2 != null && (zb2Var = this.o) != null) {
            ub2Var2.d(zb2Var);
        }
        this.n = ub2Var;
    }

    @Override // defpackage.ic2
    public final boolean i(kt3 kt3Var) {
        return false;
    }

    @Override // defpackage.ic2
    public final boolean j() {
        return false;
    }

    @Override // defpackage.ic2
    public final void b(ub2 ub2Var, boolean z) {
    }
}
