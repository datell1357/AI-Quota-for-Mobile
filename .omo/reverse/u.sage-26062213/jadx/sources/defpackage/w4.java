package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w4 extends WebViewClient {
    public final /* synthetic */ y3 a;
    public final /* synthetic */ ur3 b;
    public final /* synthetic */ u33 c;
    public final /* synthetic */ pe1 d;

    public w4(y3 y3Var, ur3 ur3Var, u33 u33Var, pe1 pe1Var) {
        this.a = y3Var;
        this.b = ur3Var;
        this.c = u33Var;
        this.d = pe1Var;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        pe1 pe1Var;
        super.onPageFinished(webView, str);
        if (webView != null) {
            webView.hashCode();
        }
        ra3 ra3Var = ez3.a;
        this.a.a.toString();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        if (webView == null || (pe1Var = this.d) == null) {
            return;
        }
        pe1Var.k(webView);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        y3 y3Var = this.a;
        y84 y84Var = y3Var.a;
        super.onPageStarted(webView, str, bitmap);
        if (webView != null) {
            webView.hashCode();
        }
        ra3 ra3Var = ez3.a;
        y84Var.toString();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        String str2 = (String) this.b.getValue();
        if (str2 == null) {
            ra3.f(new Object[0]);
            return;
        }
        u33 u33Var = this.c;
        int i = u33Var.n + 1;
        u33Var.n = i;
        y84Var.toString();
        ra3.c(new Object[0]);
        if (webView != null) {
            try {
                webView.evaluateJavascript(str2, new v4(i, y3Var, str));
            } catch (Throwable unused) {
                ez3.a.getClass();
                ra3.n(new Object[0]);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        Uri url;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (webResourceError != null) {
            webResourceError.getErrorCode();
        }
        CharSequence description = webResourceError != null ? webResourceError.getDescription() : null;
        if (webResourceRequest != null && (url = webResourceRequest.getUrl()) != null) {
            url.toString();
        }
        if (webResourceRequest != null) {
            webResourceRequest.isForMainFrame();
        }
        ra3 ra3Var = ez3.a;
        y84 y84Var = this.a.a;
        Objects.toString(description);
        y84Var.toString();
        ra3Var.getClass();
        ra3.f(new Object[0]);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        Uri url;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest != null && (url = webResourceRequest.getUrl()) != null) {
            url.toString();
        }
        if (webResourceResponse != null) {
            webResourceResponse.getStatusCode();
        }
        if (webResourceResponse != null) {
            webResourceResponse.getReasonPhrase();
        }
        if (!(webResourceRequest != null ? webResourceRequest.isForMainFrame() : false)) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
        } else {
            ra3 ra3Var = ez3.a;
            this.a.a.toString();
            ra3Var.getClass();
            ra3.f(new Object[0]);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        String string;
        if (webResourceRequest != null && (url = webResourceRequest.getUrl()) != null && (string = url.toString()) != null) {
            webResourceRequest.getMethod();
            webResourceRequest.isRedirect();
            webResourceRequest.isForMainFrame();
            if (webView != null) {
                webView.getUrl();
            }
            ra3 ra3Var = ez3.a;
            this.a.a.toString();
            ra3Var.getClass();
            ra3.c(new Object[0]);
            if (gt3.y0(string, "intent://", false)) {
                ra3.c(new Object[0]);
                if (webView != null) {
                    try {
                        Context context = webView.getContext();
                        if (context != null) {
                            Intent uri = Intent.parseUri(string, 1);
                            if (uri.resolveActivity(context.getPackageManager()) != null) {
                                context.startActivity(uri);
                                return true;
                            }
                            String stringExtra = uri.getStringExtra("browser_fallback_url");
                            if (stringExtra != null) {
                                webView.loadUrl(stringExtra);
                                return true;
                            }
                            String str = uri.getPackage();
                            if (str != null) {
                                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=".concat(str))));
                                return true;
                            }
                            return true;
                        }
                    } catch (Exception unused) {
                        ez3.a.getClass();
                        ra3.g(new Object[0]);
                        return false;
                    }
                }
            } else {
                if (gt3.y0(string, "http://127.0.0.1", false)) {
                    ra3.c(new Object[0]);
                    if (webView != null) {
                        webView.loadDataWithBaseURL(string, "<html><body></body></html>", "text/html", "UTF-8", null);
                    }
                    return true;
                }
                "AccountScreen.shouldOverrideUrlLoading: NOT intercepting, allowing WebView to handle: ".concat(string);
                ra3.c(new Object[0]);
            }
        }
        return false;
    }
}
