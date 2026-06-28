package defpackage;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j84 extends WebViewClient {
    public final /* synthetic */ u33 a;
    public final /* synthetic */ n84 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ o20 e;
    public final /* synthetic */ u33 f;
    public final /* synthetic */ u33 g;
    public final /* synthetic */ long h;
    public final /* synthetic */ WebView i;
    public final /* synthetic */ String j;

    public j84(u33 u33Var, n84 n84Var, String str, String str2, o20 o20Var, u33 u33Var2, u33 u33Var3, long j, long j2, WebView webView, String str3) {
        this.a = u33Var;
        this.b = n84Var;
        this.c = str;
        this.d = str2;
        this.e = o20Var;
        this.f = u33Var2;
        this.g = u33Var3;
        this.h = j2;
        this.i = webView;
        this.j = str3;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        long jCurrentTimeMillis = System.currentTimeMillis();
        u33 u33Var = this.a;
        int i = u33Var.n + 1;
        u33Var.n = i;
        ra3 ra3Var = ez3.a;
        o20 o20Var = this.e;
        o20Var.w();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        long j = this.h;
        u33 u33Var2 = this.g;
        u33 u33Var3 = this.f;
        n84 n84Var = this.b;
        String str2 = this.c;
        String str3 = this.d;
        WebView webView2 = this.i;
        webView2.evaluateJavascript(this.j, new i84(u33Var3, n84Var, i, str, str2, str3, o20Var, jCurrentTimeMillis, j, u33Var2, webView2));
    }
}
