package defpackage;

import android.os.Handler;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l84 implements pe1 {
    public final /* synthetic */ n84 n;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ u33 q;
    public final /* synthetic */ u33 r;
    public final /* synthetic */ u33 s;
    public final /* synthetic */ long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ o20 f178u;
    public final /* synthetic */ s33 v;
    public final /* synthetic */ Handler w;
    public final /* synthetic */ WebView x;

    public l84(n84 n84Var, String str, String str2, u33 u33Var, u33 u33Var2, u33 u33Var3, long j, o20 o20Var, s33 s33Var, Handler handler, WebView webView) {
        this.n = n84Var;
        this.o = str;
        this.p = str2;
        this.q = u33Var;
        this.r = u33Var2;
        this.s = u33Var3;
        this.t = j;
        this.f178u = o20Var;
        this.v = s33Var;
        this.w = handler;
        this.x = webView;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        d84 d84VarA;
        String str = (String) obj;
        str.getClass();
        System.currentTimeMillis();
        ra3 ra3Var = ez3.a;
        n84 n84Var = this.n;
        ra3Var.getClass();
        ra3.c(new Object[0]);
        o20 o20Var = this.f178u;
        if (o20Var.w() instanceof zm2) {
            try {
                q84 q84Var = (q84) n84Var.b.a(str, q84.class);
                if (nt1.g(q84Var.c(), "s")) {
                    d84VarA = q84Var.a();
                } else {
                    ra3.m(new Object[0]);
                    d84VarA = null;
                }
                System.currentTimeMillis();
                ra3.c(new Object[0]);
                o20Var.g(d84VarA);
            } catch (Exception unused) {
                ez3.a.getClass();
                ra3.g(new Object[0]);
                o20Var.g(null);
            }
            q.t(this.t, this.v, this.q, this.r, this.s, n84Var, this.w, this.x, this.o, this.p);
        } else {
            ra3.m(new Object[0]);
        }
        return t64.a;
    }
}
