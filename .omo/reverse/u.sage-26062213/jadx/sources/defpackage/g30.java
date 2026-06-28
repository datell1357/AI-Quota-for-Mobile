package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g30 extends ac2 implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public View A;
    public View B;
    public int C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public boolean I;
    public hc2 J;
    public ViewTreeObserver K;
    public PopupWindow.OnDismissListener L;
    public boolean M;
    public final Context o;
    public final int p;
    public final int q;
    public final boolean r;
    public final Handler s;
    public final ArrayList t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList f104u = new ArrayList();
    public final d30 v = new d30(this, 0);
    public final eb w = new eb(1, this);
    public final wu4 x = new wu4(14, this);
    public int y = 0;
    public int z = 0;
    public boolean H = false;

    public g30(Context context, View view, int i, boolean z) {
        this.o = context;
        this.A = view;
        this.q = i;
        this.r = z;
        this.C = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.p = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.s = new Handler();
    }

    @Override // defpackage.tm3
    public final void a() {
        if (k()) {
            return;
        }
        ArrayList arrayList = this.t;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            u((ub2) obj);
        }
        arrayList.clear();
        View view = this.A;
        this.B = view;
        if (view != null) {
            boolean z = this.K == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.K = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.v);
            }
            this.B.addOnAttachStateChangeListener(this.w);
        }
    }

    @Override // defpackage.ic2
    public final void b(ub2 ub2Var, boolean z) {
        ArrayList arrayList = this.f104u;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ub2Var == ((f30) arrayList.get(i)).b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((f30) arrayList.get(i2)).b.c(false);
        }
        f30 f30Var = (f30) arrayList.remove(i);
        ub2 ub2Var2 = f30Var.b;
        gc2 gc2Var = f30Var.a;
        mg mgVar = gc2Var.I;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = ub2Var2.r;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            ic2 ic2Var = (ic2) weakReference.get();
            if (ic2Var == null || ic2Var == this) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        if (this.M) {
            dc2.b(mgVar, null);
            mgVar.setAnimationStyle(0);
        }
        gc2Var.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.C = ((f30) arrayList.get(size2 - 1)).c;
        } else {
            this.C = this.A.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((f30) arrayList.get(0)).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        hc2 hc2Var = this.J;
        if (hc2Var != null) {
            hc2Var.b(ub2Var, true);
        }
        ViewTreeObserver viewTreeObserver = this.K;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.K.removeGlobalOnLayoutListener(this.v);
            }
            this.K = null;
        }
        this.B.removeOnAttachStateChangeListener(this.w);
        this.L.onDismiss();
    }

    @Override // defpackage.ic2
    public final void d(hc2 hc2Var) {
        this.J = hc2Var;
    }

    @Override // defpackage.tm3
    public final void dismiss() {
        ArrayList arrayList = this.f104u;
        int size = arrayList.size();
        if (size > 0) {
            f30[] f30VarArr = (f30[]) arrayList.toArray(new f30[size]);
            for (int i = size - 1; i >= 0; i--) {
                f30 f30Var = f30VarArr[i];
                if (f30Var.a.I.isShowing()) {
                    f30Var.a.dismiss();
                }
            }
        }
    }

    @Override // defpackage.ic2
    public final void f() {
        ArrayList arrayList = this.f104u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ListAdapter adapter = ((f30) obj).a.p.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((sb2) adapter).notifyDataSetChanged();
        }
    }

    @Override // defpackage.tm3
    public final ListView g() {
        ArrayList arrayList = this.f104u;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((f30) arrayList.get(arrayList.size() - 1)).a.p;
    }

    @Override // defpackage.ic2
    public final boolean i(kt3 kt3Var) {
        ArrayList arrayList = this.f104u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            f30 f30Var = (f30) obj;
            if (kt3Var == f30Var.b) {
                f30Var.a.p.requestFocus();
                return true;
            }
        }
        if (!kt3Var.hasVisibleItems()) {
            return false;
        }
        l(kt3Var);
        hc2 hc2Var = this.J;
        if (hc2Var != null) {
            hc2Var.l(kt3Var);
        }
        return true;
    }

    @Override // defpackage.ic2
    public final boolean j() {
        return false;
    }

    @Override // defpackage.tm3
    public final boolean k() {
        ArrayList arrayList = this.f104u;
        return arrayList.size() > 0 && ((f30) arrayList.get(0)).a.I.isShowing();
    }

    @Override // defpackage.ac2
    public final void l(ub2 ub2Var) {
        ub2Var.b(this, this.o);
        if (k()) {
            u(ub2Var);
        } else {
            this.t.add(ub2Var);
        }
    }

    @Override // defpackage.ac2
    public final void n(View view) {
        if (this.A != view) {
            this.A = view;
            this.z = Gravity.getAbsoluteGravity(this.y, view.getLayoutDirection());
        }
    }

    @Override // defpackage.ac2
    public final void o(boolean z) {
        this.H = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        f30 f30Var;
        ArrayList arrayList = this.f104u;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                f30Var = null;
                break;
            }
            f30Var = (f30) arrayList.get(i);
            if (!f30Var.a.I.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (f30Var != null) {
            f30Var.b.c(false);
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
        if (this.y != i) {
            this.y = i;
            this.z = Gravity.getAbsoluteGravity(i, this.A.getLayoutDirection());
        }
    }

    @Override // defpackage.ac2
    public final void q(int i) {
        this.D = true;
        this.F = i;
    }

    @Override // defpackage.ac2
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.L = onDismissListener;
    }

    @Override // defpackage.ac2
    public final void s(boolean z) {
        this.I = z;
    }

    @Override // defpackage.ac2
    public final void t(int i) {
        this.E = true;
        this.G = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(defpackage.ub2 r20) {
        /*
            Method dump skipped, instruction units count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g30.u(ub2):void");
    }
}
