package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pb0 {
    public final View a;
    public boolean b;
    public zb0 c;
    public p22 d;
    public yc3 e;
    public cc4 f;
    public final vo1 g;
    public final m73 h;
    public final Configuration i;
    public final pg2 j;
    public final s8 k;
    public final qv3 l;
    public final gw4 m;
    public final bx3 n;
    public final pa1 o;
    public final pg2 p;
    public final bj1 q;
    public final tc r;
    public final zy1 s;
    public final dh1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final y20 f259u;
    public int v;
    public final je w;
    public final ob0 x;

    public pb0(pb0 pb0Var, View view, zb0 zb0Var, p22 p22Var, yc3 yc3Var, cc4 cc4Var) {
        vo1 vo1Var;
        Configuration configuration;
        pg2 pg2VarA;
        s8 s8Var;
        qv3 qv3Var;
        gw4 gw4Var;
        bx3 bx3Var;
        pa1 bx3Var2;
        pg2 ws2Var;
        tc tcVar;
        y20 y20Var;
        zy1 zy1Var;
        m73 m73Var;
        View view2;
        boolean zG = nt1.g((pb0Var == null || (view2 = pb0Var.a) == null) ? null : view2.getContext(), view.getContext());
        this.a = view;
        this.c = zb0Var;
        this.d = p22Var;
        this.e = yc3Var;
        this.f = cc4Var;
        if (zG) {
            pb0Var.getClass();
            vo1Var = pb0Var.g;
        } else {
            vo1Var = new vo1();
        }
        this.g = vo1Var;
        this.h = (pb0Var == null || (m73Var = pb0Var.h) == null) ? new m73() : m73Var;
        if (zG) {
            pb0Var.getClass();
            configuration = pb0Var.i;
        } else {
            configuration = new Configuration(view.getContext().getResources().getConfiguration());
        }
        this.i = configuration;
        if (zG) {
            pb0Var.getClass();
            pg2VarA = pb0Var.j;
        } else {
            pg2VarA = ca.A(new Configuration(configuration));
        }
        this.j = pg2VarA;
        if (zG) {
            pb0Var.getClass();
            s8Var = pb0Var.k;
        } else {
            s8Var = new s8(view.getContext());
        }
        this.k = s8Var;
        if (zG) {
            pb0Var.getClass();
            qv3Var = pb0Var.l;
        } else {
            view.getContext();
            qv3Var = new qv3(11);
        }
        this.l = qv3Var;
        if (zG) {
            pb0Var.getClass();
            gw4Var = pb0Var.m;
        } else {
            gw4Var = new gw4(view.getContext(), 2);
        }
        this.m = gw4Var;
        if (zG) {
            pb0Var.getClass();
            bx3Var = pb0Var.n;
        } else {
            bx3Var = new bx3(7);
        }
        this.n = bx3Var;
        if (zG) {
            pb0Var.getClass();
            bx3Var2 = pb0Var.o;
        } else {
            view.getContext();
            bx3Var2 = new bx3(9);
        }
        this.o = bx3Var2;
        if (zG) {
            pb0Var.getClass();
            ws2Var = pb0Var.p;
        } else {
            ws2Var = new ws2(bi4.o(view.getContext()), w13.P);
        }
        this.p = ws2Var;
        this.q = view == (pb0Var != null ? pb0Var.a : null) ? pb0Var.q : new qz0(18);
        if (zG) {
            pb0Var.getClass();
            tcVar = pb0Var.r;
        } else {
            tcVar = new tc(ViewConfiguration.get(view.getContext()));
        }
        this.r = tcVar;
        this.s = (pb0Var == null || (zy1Var = pb0Var.s) == null) ? new zy1() : zy1Var;
        this.t = new dh1(23, false);
        this.f259u = (pb0Var == null || (y20Var = pb0Var.f259u) == null) ? new y20() : y20Var;
        this.w = new je(2, this);
        this.x = new ob0(this);
    }

    public final void a(q9 q9Var, df1 df1Var, ag1 ag1Var, int i) {
        boolean z;
        ag1Var.X(123858079);
        int i2 = 2;
        int i3 = (ag1Var.h(q9Var) ? 4 : 2) | i | (ag1Var.h(df1Var) ? 32 : 16) | (ag1Var.h(this) ? 256 : 128);
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            Object tag = q9Var.getTag(R.id.inspection_slot_table_set);
            LinkedHashMap linkedHashMap = null;
            Set set = (!(tag instanceof Set) || ((tag instanceof fx1) && !(tag instanceof ix1))) ? null : (Set) tag;
            if (set == null) {
                Object parent = q9Var.getParent();
                View view = parent instanceof View ? (View) parent : null;
                Object tag2 = view != null ? view.getTag(R.id.inspection_slot_table_set) : null;
                set = (!(tag2 instanceof Set) || ((tag2 instanceof fx1) && !(tag2 instanceof ix1))) ? null : (Set) tag2;
            }
            if (set != null) {
                set.add(ag1Var.v());
                ag1Var.q = true;
                ag1Var.C = true;
                ag1Var.c.d();
                ag1Var.H.d();
                xn3 xn3Var = ag1Var.I;
                un3 un3Var = xn3Var.a;
                xn3Var.e = un3Var.w;
                xn3Var.f = un3Var.x;
            }
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                f();
                yc3 yc3Var = this.e;
                yc3Var.getClass();
                Object parent2 = q9Var.getParent();
                parent2.getClass();
                View view2 = (View) parent2;
                Object tag3 = view2.getTag(R.id.compose_view_saveable_id_tag);
                String strValueOf = tag3 instanceof String ? (String) tag3 : null;
                if (strValueOf == null) {
                    strValueOf = String.valueOf(view2.getId());
                }
                String strU = di0.u("SaveableStateRegistry:", strValueOf);
                uc3 savedStateRegistry = yc3Var.getSavedStateRegistry();
                Bundle bundleA = savedStateRegistry.a(strU);
                if (bundleA != null) {
                    linkedHashMap = new LinkedHashMap();
                    for (String str : bundleA.keySet()) {
                        ArrayList parcelableArrayList = bundleA.getParcelableArrayList(str);
                        parcelableArrayList.getClass();
                        linkedHashMap.put(str, parcelableArrayList);
                    }
                }
                l9 l9Var = l9.G;
                is3 is3Var = kc3.a;
                jc3 jc3Var = new jc3(linkedHashMap, l9Var);
                if (savedStateRegistry.b(strU) != null) {
                    z = false;
                    kv0 kv0Var = new kv0(jc3Var, new lv0(z, savedStateRegistry, strU));
                    ag1Var.g0(kv0Var);
                    objK = kv0Var;
                } else {
                    try {
                        savedStateRegistry.c(strU, new mc1(i2, jc3Var));
                        z = true;
                    } catch (IllegalArgumentException unused) {
                        z = false;
                    }
                    kv0 kv0Var2 = new kv0(jc3Var, new lv0(z, savedStateRegistry, strU));
                    ag1Var.g0(kv0Var2);
                    objK = kv0Var2;
                }
            }
            kv0 kv0Var3 = (kv0) objK;
            boolean zH = ag1Var.h(kv0Var3);
            Object objK2 = ag1Var.K();
            if (zH || objK2 == bx3Var) {
                objK2 = new c8(10, kv0Var3);
                ag1Var.g0(objK2);
            }
            zf5.a(t64.a, (pe1) objK2, ag1Var);
            lc0 lc0Var = kc0.x;
            boolean zBooleanValue = ((Boolean) ag1Var.j(lc0Var)).booleanValue() | q9Var.getScrollCaptureInProgress$ui();
            boolean zF = ag1Var.f(q9Var.getView());
            Object objK3 = ag1Var.K();
            if (zF || objK3 == bx3Var) {
                objK3 = new ec4(q9Var.getView());
                ag1Var.g0(objK3);
            }
            ec4 ec4Var = (ec4) objK3;
            boolean zF2 = ag1Var.f(q9Var.getView());
            Object objK4 = ag1Var.K();
            if (zF2 || objK4 == bx3Var) {
                objK4 = new fc(q9Var.getView());
                ag1Var.g0(objK4);
            }
            j03 j03VarA = w62.a.a(c());
            h03 h03Var = b72.a;
            f();
            yc3 yc3Var2 = this.e;
            yc3Var2.getClass();
            gg4.b(new j03[]{j03VarA, h03Var.a(yc3Var2), ea.d.a(this.g), ea.e.a(this.h), kc0.v.a((xp3) objK4), ea.b.a(q9Var.getContext()), wr1.a.a(set), ea.a.a(q9Var.getConfiguration()), kc3.a.a(kv0Var3), ea.f.a(q9Var.getView()), lc0Var.a(Boolean.valueOf(zBooleanValue)), kc0.t.a(q9Var.getViewConfiguration()), gk1.a.a(ec4Var)}, qj0.U(1317454175, new nb0(q9Var, this, df1Var), ag1Var), ag1Var, 56);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new nb0(this, q9Var, df1Var, i);
        }
    }

    public final void b() {
        int i = this.v - 1;
        this.v = i;
        if (i < 0) {
            Log.e("ComposeViewContext", "View count has dropped below 0");
            this.v = 0;
        }
        if (this.v == 0) {
            View view = this.a;
            Context context = view.getContext();
            ob0 ob0Var = this.x;
            context.unregisterComponentCallbacks(ob0Var);
            this.t.getClass();
            view.getViewTreeObserver().removeOnWindowFocusChangeListener(ob0Var);
        }
    }

    public final p22 c() {
        f();
        p22 p22Var = this.d;
        p22Var.getClass();
        return p22Var;
    }

    public final void d() {
        int i = this.v + 1;
        this.v = i;
        if (i == 1) {
            View view = this.a;
            Context context = view.getContext();
            ob0 ob0Var = this.x;
            context.registerComponentCallbacks(ob0Var);
            e(view.getResources().getConfiguration());
            ((ws2) this.t.n).setValue(Boolean.valueOf(view.hasWindowFocus()));
            view.getViewTreeObserver().addOnWindowFocusChangeListener(ob0Var);
        }
    }

    public final void e(Configuration configuration) {
        int iUpdateFrom = this.i.updateFrom(configuration);
        if (iUpdateFrom != 0) {
            Iterator it = this.g.a.entrySet().iterator();
            while (it.hasNext()) {
                to1 to1Var = (to1) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (to1Var == null || Configuration.needNewResources(iUpdateFrom, to1Var.b)) {
                    it.remove();
                }
            }
            this.j.setValue(new Configuration(configuration));
            m73 m73Var = this.h;
            synchronized (m73Var) {
                m73Var.a.c();
            }
            if ((268435456 & iUpdateFrom) != 0) {
                this.p.setValue(bi4.o(this.a.getContext()));
            }
            if ((805248384 & iUpdateFrom) != 0) {
                this.t.getClass();
            }
        }
    }

    public final void f() {
        if (this.b) {
            return;
        }
        this.b = true;
        zb0 zb0Var = this.c;
        View view = this.a;
        if (zb0Var == null) {
            zb0 zb0VarA = jf4.a(view);
            if (zb0VarA == null) {
                Object parent = view.getParent();
                while (zb0VarA == null && (parent instanceof View)) {
                    View view2 = (View) parent;
                    zb0VarA = jf4.a(view2);
                    parent = fl4.q(view2);
                }
            }
            if (zb0VarA == null) {
                zb0VarA = jf4.b(view);
            }
            this.c = zb0VarA;
        }
        if (this.d == null) {
            p22 p22VarU = on4.u(view);
            if (p22VarU == null) {
                k21.n("Composed into a View which doesn't propagate ViewTreeLifecycleOwner!");
                return;
            }
            this.d = p22VarU;
        }
        if (this.e == null) {
            yc3 yc3VarR = ht4.r(view);
            if (yc3VarR == null) {
                k21.n("Composed into a View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
                return;
            }
            this.e = yc3VarR;
        }
        if (this.f == null) {
            this.f = kt4.y(view);
        }
    }
}
