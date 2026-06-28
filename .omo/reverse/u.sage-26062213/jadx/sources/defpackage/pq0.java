package defpackage;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pq0 {
    public final ViewGroup a;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public boolean d = false;
    public boolean e = false;

    public pq0(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public static void a(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = qb4.a;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                a(childAt, arrayList);
            }
        }
    }

    public static void e(di diVar, View view) {
        Field field = lb4.a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            diVar.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    e(diVar, childAt);
                }
            }
        }
    }

    public static pq0 h(ViewGroup viewGroup, b21 b21Var) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof pq0) {
            return (pq0) tag;
        }
        b21Var.getClass();
        pq0 pq0Var = new pq0(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, pq0Var);
        return pq0Var;
    }

    public static pq0 i(ViewGroup viewGroup, hd1 hd1Var) {
        return h(viewGroup, hd1Var.E());
    }

    public static void k(di diVar, Collection collection) {
        Iterator it = ((yh) diVar.entrySet()).iterator();
        while (true) {
            bi biVar = (bi) it;
            if (!biVar.hasNext()) {
                return;
            }
            biVar.next();
            View view = (View) biVar.getValue();
            Field field = lb4.a;
            if (!collection.contains(view.getTransitionName())) {
                biVar.remove();
            }
        }
    }

    public final void b(int i, int i2, pd1 pd1Var) {
        synchronized (this.b) {
            try {
                s20 s20Var = new s20();
                pq3 pq3VarF = f(pd1Var.c);
                if (pq3VarF != null) {
                    pq3VarF.c(i, i2);
                    return;
                }
                pq3 pq3Var = new pq3(i, i2, pd1Var, s20Var);
                this.b.add(pq3Var);
                pq3Var.d.add(new oq3(this, pq3Var, 0));
                pq3Var.d.add(new oq3(this, pq3Var, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:196:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.util.ArrayList r37, boolean r38) {
        /*
            Method dump skipped, instruction units count: 2532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pq0.c(java.util.ArrayList, boolean):void");
    }

    public final void d() {
        if (this.e) {
            return;
        }
        ViewGroup viewGroup = this.a;
        Field field = lb4.a;
        if (!viewGroup.isAttachedToWindow()) {
            g();
            this.d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.c);
                    this.c.clear();
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        pq3 pq3Var = (pq3) obj;
                        if (hd1.G(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + pq3Var);
                        }
                        pq3Var.a();
                        if (!pq3Var.g) {
                            this.c.add(pq3Var);
                        }
                    }
                    l();
                    ArrayList arrayList2 = new ArrayList(this.b);
                    this.b.clear();
                    this.c.addAll(arrayList2);
                    if (hd1.G(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    int size2 = arrayList2.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        Object obj2 = arrayList2.get(i2);
                        i2++;
                        ((pq3) obj2).d();
                    }
                    c(arrayList2, this.d);
                    this.d = false;
                    if (hd1.G(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final pq3 f(lc1 lc1Var) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            pq3 pq3Var = (pq3) obj;
            if (pq3Var.c.equals(lc1Var) && !pq3Var.f) {
                return pq3Var;
            }
        }
        return null;
    }

    public final void g() {
        String str;
        String str2;
        if (hd1.G(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        ViewGroup viewGroup = this.a;
        Field field = lb4.a;
        boolean zIsAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.b) {
            try {
                l();
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((pq3) obj).d();
                }
                ArrayList arrayList2 = new ArrayList(this.c);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    pq3 pq3Var = (pq3) obj2;
                    if (hd1.G(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(pq3Var);
                        Log.v("FragmentManager", sb.toString());
                    }
                    pq3Var.a();
                }
                ArrayList arrayList3 = new ArrayList(this.b);
                int size3 = arrayList3.size();
                while (i < size3) {
                    Object obj3 = arrayList3.get(i);
                    i++;
                    pq3 pq3Var2 = (pq3) obj3;
                    if (hd1.G(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(pq3Var2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    pq3Var2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() {
        synchronized (this.b) {
            try {
                l();
                this.e = false;
                int size = this.b.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    pq3 pq3Var = (pq3) this.b.get(size);
                    int iF = xw1.f(pq3Var.c.mView);
                    if (pq3Var.a == 2 && iF != 2) {
                        this.e = pq3Var.c.isPostponed();
                        break;
                    }
                    size--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            pq3 pq3Var = (pq3) obj;
            if (pq3Var.b == 2) {
                pq3Var.c(xw1.e(pq3Var.c.requireView().getVisibility()), 1);
            }
        }
    }
}
