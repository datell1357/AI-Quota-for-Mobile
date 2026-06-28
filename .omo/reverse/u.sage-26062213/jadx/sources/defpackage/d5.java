package defpackage;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d5 extends WebChromeClient {
    public final /* synthetic */ String a;
    public final /* synthetic */ WebView b;
    public final /* synthetic */ s33 c;
    public final /* synthetic */ FrameLayout d;
    public final /* synthetic */ e4 e;
    public final /* synthetic */ y3 f;
    public final /* synthetic */ qi0 g;
    public final /* synthetic */ e4 h;

    public d5(String str, WebView webView, s33 s33Var, FrameLayout frameLayout, e4 e4Var, y3 y3Var, qi0 qi0Var, e4 e4Var2) {
        this.a = str;
        this.b = webView;
        this.c = s33Var;
        this.d = frameLayout;
        this.e = e4Var;
        this.f = y3Var;
        this.g = qi0Var;
        this.h = e4Var2;
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        String url = webView != null ? webView.getUrl() : null;
        WebView webView2 = this.b;
        if (webView2 != null) {
            webView2.getUrl();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ez3.a.getClass();
        ra3.c(new Object[0]);
        this.d.removeView(webView);
        if (webView != null) {
            webView.destroy();
        }
        this.e.k(null);
        boolean z = true;
        if ((url == null || !zs3.B0(url, "accounts.google.com", false)) && (url == null || !zs3.B0(url, "oauth", false))) {
            z = false;
        }
        s33 s33Var = this.c;
        if (!s33Var.n && this.f.a == y84.r && z) {
            ra3.c(new Object[0]);
            zp0 zp0Var = zu0.a;
            xi1 xi1Var = n92.a;
            e4 e4Var = this.h;
            b5 b5Var = new b5(e4Var, null, 0);
            qi0 qi0Var = this.g;
            ca.y(qi0Var, xi1Var, null, b5Var, 2);
            ca.y(qi0Var, null, null, new c5(s33Var, this.a, jCurrentTimeMillis, this.b, e4Var, null), 3);
        }
        if (webView2 != null) {
            webView2.getUrl();
        }
        ra3.c(new Object[0]);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage = consoleMessage != null ? consoleMessage.message() : null;
        Integer numValueOf = consoleMessage != null ? Integer.valueOf(consoleMessage.lineNumber()) : null;
        StringBuilder sb = new StringBuilder();
        sb.append(strMessage);
        sb.append(" (line ");
        sb.append(numValueOf);
        sb.append(")");
        ConsoleMessage.MessageLevel messageLevel = consoleMessage != null ? consoleMessage.messageLevel() : null;
        int i = messageLevel == null ? -1 : a5.a[messageLevel.ordinal()];
        if (i == 1) {
            ez3.a.getClass();
            ra3.f(new Object[0]);
            return true;
        }
        if (i != 2) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
            return true;
        }
        ez3.a.getClass();
        ra3.m(new Object[0]);
        return true;
    }
}
