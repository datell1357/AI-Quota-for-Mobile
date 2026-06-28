package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class us0 {
    public static final rx2 e = new rx2("webview_visible");
    public static final rx2 f = new rx2("firebase_analytics_enabled");
    public static final boolean g = true;
    public static final rx2 h = new rx2("simulate_logged_out_enabled");
    public final Context a;
    public final b23 b;
    public final b23 c;
    public final b23 d;

    public us0(Context context) {
        context.getClass();
        this.a = context;
        yq yqVar = new yq(((px2) vs0.a(context)).a.b(), 17);
        zp0 zp0Var = zu0.a;
        lp0 lp0Var = lp0.p;
        bu3 bu3VarF = k30.f();
        lp0Var.getClass();
        bh0 bh0VarC = dm0.c(ca.B(lp0Var, bu3VarF));
        rr3 rr3VarA = nm3.a();
        Boolean bool = Boolean.FALSE;
        this.b = qj0.Y(yqVar, bh0VarC, rr3VarA, bool);
        this.c = qj0.Y(new yq(((px2) vs0.a(context)).a.b(), 18), dm0.c(ca.B(lp0Var, k30.f())), nm3.a(), Boolean.valueOf(g));
        this.d = qj0.Y(new yq(((px2) vs0.a(context)).a.b(), 19), dm0.c(ca.B(lp0Var, k30.f())), nm3.a(), bool);
    }
}
