package defpackage;

import android.graphics.Path;
import android.os.Build;
import android.view.View;
import java.lang.reflect.Field;
import java.util.WeakHashMap;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qe4 {
    public static final WeakHashMap v = new WeakHashMap();
    public final jd a;
    public final jd b;
    public final jd c;
    public final jd d;
    public final jd e;
    public final jd f;
    public final jd g;
    public final jd h;
    public final jd i;
    public final y94 j;
    public final ws2 k;
    public final y94 l;
    public final y94 m;
    public final y94 n;
    public final y94 o;
    public final y94 p;
    public final y94 q;
    public final y94 r;
    public final boolean s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final qr1 f277u;

    public qe4(View view) {
        jd jdVarA = ls3.a(4, "captionBar");
        this.a = jdVarA;
        jd jdVarA2 = ls3.a(128, "displayCutout");
        this.b = jdVarA2;
        jd jdVarA3 = ls3.a(8, "ime");
        this.c = jdVarA3;
        jd jdVarA4 = ls3.a(32, "mandatorySystemGestures");
        this.d = jdVarA4;
        jd jdVarA5 = ls3.a(2, "navigationBars");
        this.e = jdVarA5;
        jd jdVarA6 = ls3.a(1, "statusBars");
        this.f = jdVarA6;
        jd jdVarA7 = ls3.a(519, "systemBars");
        this.g = jdVarA7;
        jd jdVarA8 = ls3.a(16, "systemGestures");
        this.h = jdVarA8;
        jd jdVarA9 = ls3.a(64, "tappableElement");
        this.i = jdVarA9;
        y94 y94Var = new y94(new ur1(0, 0, 0, 0), "waterfall");
        this.j = y94Var;
        this.k = ca.A(null);
        new s64(new s64(jdVarA7, jdVarA3), jdVarA2);
        new s64(new s64(new s64(jdVarA9, jdVarA4), jdVarA8), y94Var);
        this.l = ls3.c(4, "captionBarIgnoringVisibility");
        this.m = ls3.c(2, "navigationBarsIgnoringVisibility");
        this.n = ls3.c(1, "statusBarsIgnoringVisibility");
        this.o = ls3.c(519, "systemBarsIgnoringVisibility");
        this.p = ls3.c(64, "tappableElementIgnoringVisibility");
        this.q = new y94(new ur1(0, 0, 0, 0), "imeAnimationTarget");
        this.r = new y94(new ur1(0, 0, 0, 0), "imeAnimationSource");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        Object tag = view2 != null ? view2.getTag(R.id.consume_window_insets_tag) : null;
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        this.s = bool != null ? bool.booleanValue() : false;
        this.f277u = new qr1(this);
        Field field = lb4.a;
        ke4 ke4VarA = gb4.a(view);
        if (ke4VarA != null) {
            he4 he4Var = ke4VarA.a;
            jdVarA.f(he4Var.u(4));
            jdVarA2.f(he4Var.u(128));
            jdVarA3.f(he4Var.u(8));
            jdVarA4.f(he4Var.u(32));
            jdVarA5.f(he4Var.u(2));
            jdVarA6.f(he4Var.u(1));
            jdVarA7.f(he4Var.u(519));
            jdVarA8.f(he4Var.u(16));
            jdVarA9.f(he4Var.u(64));
        }
    }

    public static void a(qe4 qe4Var, ke4 ke4Var) {
        boolean z = false;
        qe4Var.a.g(ke4Var, 0);
        qe4Var.c.g(ke4Var, 0);
        qe4Var.b.g(ke4Var, 0);
        qe4Var.e.g(ke4Var, 0);
        qe4Var.f.g(ke4Var, 0);
        qe4Var.g.g(ke4Var, 0);
        qe4Var.h.g(ke4Var, 0);
        qe4Var.i.g(ke4Var, 0);
        qe4Var.d.g(ke4Var, 0);
        qe4Var.l.f(ye4.a(ke4Var.a.j(4)));
        qe4Var.m.f(ye4.a(ke4Var.a.j(2)));
        qe4Var.n.f(ye4.a(ke4Var.a.j(1)));
        qe4Var.o.f(ye4.a(ke4Var.a.j(519)));
        qe4Var.p.f(ye4.a(ke4Var.a.j(64)));
        av0 av0VarH = ke4Var.a.h();
        qe4Var.j.f(ye4.a(av0VarH != null ? av0VarH.a() : nr1.e));
        sb sbVar = null;
        if (av0VarH != null) {
            Path pathB = Build.VERSION.SDK_INT >= 31 ? zf.b(av0VarH.a) : null;
            if (pathB != null) {
                sbVar = new sb(pathB);
            }
        }
        qe4Var.k.setValue(sbVar);
        synchronized (wo3.c) {
            lg2 lg2Var = wo3.j.h;
            if (lg2Var != null) {
                if (lg2Var.h()) {
                    z = true;
                }
            }
        }
        if (z) {
            wo3.a();
        }
    }
}
