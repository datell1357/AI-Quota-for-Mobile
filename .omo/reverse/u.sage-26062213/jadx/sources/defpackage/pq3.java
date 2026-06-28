package defpackage;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pq3 {
    public int a;
    public int b;
    public final lc1 c;
    public final ArrayList d;
    public final HashSet e;
    public boolean f;
    public boolean g;
    public final pd1 h;

    public pq3(int i, int i2, pd1 pd1Var, s20 s20Var) {
        lc1 lc1Var = pd1Var.c;
        this.d = new ArrayList();
        this.e = new HashSet();
        this.f = false;
        this.g = false;
        this.a = i;
        this.b = i2;
        this.c = lc1Var;
        s20Var.a(new ra3(4, this));
        this.h = pd1Var;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        this.f = true;
        if (this.e.isEmpty()) {
            b();
            return;
        }
        ArrayList arrayList = new ArrayList(this.e);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            s20 s20Var = (s20) obj;
            synchronized (s20Var) {
                try {
                    if (!s20Var.a) {
                        s20Var.a = true;
                        s20Var.c = true;
                        r20 r20Var = s20Var.b;
                        if (r20Var != null) {
                            try {
                                r20Var.onCancel();
                            } catch (Throwable th) {
                                synchronized (s20Var) {
                                    s20Var.c = false;
                                    s20Var.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (s20Var) {
                            s20Var.c = false;
                            s20Var.notifyAll();
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void b() {
        if (!this.g) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.g = true;
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
        this.h.j();
    }

    public final void c(int i, int i2) {
        int iF = di0.F(i2);
        lc1 lc1Var = this.c;
        if (iF == 0) {
            if (this.a != 1) {
                if (hd1.G(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + lc1Var + " mFinalState = " + xw1.C(this.a) + " -> " + xw1.C(i) + ". ");
                }
                this.a = i;
                return;
            }
            return;
        }
        if (iF == 1) {
            if (this.a == 1) {
                if (hd1.G(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + lc1Var + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + xw1.B(this.b) + " to ADDING.");
                }
                this.a = 2;
                this.b = 2;
                return;
            }
            return;
        }
        if (iF != 2) {
            return;
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + lc1Var + " mFinalState = " + xw1.C(this.a) + " -> REMOVED. mLifecycleImpact  = " + xw1.B(this.b) + " to REMOVING.");
        }
        this.a = 1;
        this.b = 3;
    }

    public final void d() {
        int i = this.b;
        pd1 pd1Var = this.h;
        if (i != 2) {
            if (i == 3) {
                lc1 lc1Var = pd1Var.c;
                View viewRequireView = lc1Var.requireView();
                if (hd1.G(2)) {
                    Log.v("FragmentManager", "Clearing focus " + viewRequireView.findFocus() + " on view " + viewRequireView + " for Fragment " + lc1Var);
                }
                viewRequireView.clearFocus();
                return;
            }
            return;
        }
        lc1 lc1Var2 = pd1Var.c;
        View viewFindFocus = lc1Var2.mView.findFocus();
        if (viewFindFocus != null) {
            lc1Var2.setFocusedView(viewFindFocus);
            if (hd1.G(2)) {
                Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + lc1Var2);
            }
        }
        View viewRequireView2 = this.c.requireView();
        if (viewRequireView2.getParent() == null) {
            pd1Var.a();
            viewRequireView2.setAlpha(0.0f);
        }
        if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
            viewRequireView2.setVisibility(4);
        }
        viewRequireView2.setAlpha(lc1Var2.getPostOnViewCreatedAlpha());
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + xw1.C(this.a) + "} {mLifecycleImpact = " + xw1.B(this.b) + "} {mFragment = " + this.c + "}";
    }
}
