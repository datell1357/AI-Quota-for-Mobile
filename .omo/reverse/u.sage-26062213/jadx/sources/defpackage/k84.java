package defpackage;

import android.os.Handler;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k84 implements pe1 {
    public final /* synthetic */ n84 n;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ u33 q;
    public final /* synthetic */ u33 r;
    public final /* synthetic */ u33 s;
    public final /* synthetic */ s33 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ long f163u;
    public final /* synthetic */ Handler v;
    public final /* synthetic */ WebView w;

    public k84(long j, s33 s33Var, u33 u33Var, u33 u33Var2, u33 u33Var3, n84 n84Var, Handler handler, WebView webView, String str, String str2) {
        this.n = n84Var;
        this.o = str;
        this.p = str2;
        this.q = u33Var;
        this.r = u33Var2;
        this.s = u33Var3;
        this.t = s33Var;
        this.f163u = j;
        this.v = handler;
        this.w = webView;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        ez3.a.getClass();
        ra3.m(new Object[0]);
        q.t(this.f163u, this.t, this.q, this.r, this.s, this.n, this.v, this.w, this.o, this.p);
        return t64.a;
    }
}
