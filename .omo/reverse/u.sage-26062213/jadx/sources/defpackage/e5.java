package defpackage;

import android.content.Context;
import android.os.Message;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e5 extends WebChromeClient {
    public final /* synthetic */ String a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ ur3 c;
    public final /* synthetic */ y3 d;
    public final /* synthetic */ FrameLayout e;
    public final /* synthetic */ e4 f;
    public final /* synthetic */ s33 g;
    public final /* synthetic */ qi0 h;
    public final /* synthetic */ e4 i;

    public e5(String str, Context context, ur3 ur3Var, y3 y3Var, FrameLayout frameLayout, e4 e4Var, s33 s33Var, qi0 qi0Var, e4 e4Var2) {
        this.a = str;
        this.b = context;
        this.c = ur3Var;
        this.d = y3Var;
        this.e = frameLayout;
        this.f = e4Var;
        this.g = s33Var;
        this.h = qi0Var;
        this.i = e4Var2;
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
        int i = messageLevel == null ? -1 : z4.a[messageLevel.ordinal()];
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

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        if (webView != null) {
            webView.getUrl();
        }
        ez3.a.getClass();
        ra3.c(new Object[0]);
        WebView webView2 = new WebView(this.b);
        webView2.hashCode();
        if (webView != null) {
            webView.hashCode();
        }
        ra3.c(new Object[0]);
        ur3 ur3Var = this.c;
        y3 y3Var = this.d;
        ix.m(webView2, null, ur3Var, y3Var, null, null, 960);
        qi0 qi0Var = this.h;
        e4 e4Var = this.i;
        String str = this.a;
        s33 s33Var = this.g;
        FrameLayout frameLayout = this.e;
        e4 e4Var2 = this.f;
        webView2.setWebChromeClient(new d5(str, webView, s33Var, frameLayout, e4Var2, y3Var, qi0Var, e4Var));
        frameLayout.addView(webView2);
        e4Var2.k(webView2);
        Object obj = message != null ? message.obj : null;
        WebView.WebViewTransport webViewTransport = obj instanceof WebView.WebViewTransport ? (WebView.WebViewTransport) obj : null;
        if (webViewTransport == null) {
            return false;
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }
}
