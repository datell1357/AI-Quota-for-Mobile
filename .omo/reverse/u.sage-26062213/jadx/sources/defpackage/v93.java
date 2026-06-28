package defpackage;

import android.graphics.Bitmap;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v93 extends WebViewClient {
    public final /* synthetic */ w33 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ boolean c;

    public v93(w33 w33Var, String str, boolean z) {
        this.a = w33Var;
        this.b = str;
        this.c = z;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        final w33 w33Var = this.a;
        WebView webView2 = (WebView) w33Var.n;
        final boolean z = this.c;
        webView2.evaluateJavascript(this.b, new ValueCallback() { // from class: u93
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                ez3.a.getClass();
                ra3.c(new Object[0]);
                ((WebView) w33Var.n).evaluateJavascript("sage(8, null, " + z + ");", null);
            }
        });
    }
}
