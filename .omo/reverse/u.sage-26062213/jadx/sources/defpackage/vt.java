package defpackage;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Objects;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vt extends WebViewClient {
    public final /* synthetic */ a a;

    public vt(a aVar) {
        this.a = aVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        ra3 ra3Var = ez3.a;
        this.a.j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        a aVar = this.a;
        int i = aVar.B;
        ra3 ra3Var = ez3.a;
        aVar.j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        wr3 wr3Var = aVar.y;
        Boolean bool = Boolean.FALSE;
        wr3Var.getClass();
        wr3Var.i(null, bool);
        ca.y(aVar.q, null, null, new ut(aVar, i, null, 0), 3);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        ra3 ra3Var = ez3.a;
        this.a.j();
        CharSequence description = webResourceError != null ? webResourceError.getDescription() : null;
        Uri url = webResourceRequest != null ? webResourceRequest.getUrl() : null;
        Objects.toString(description);
        Objects.toString(url);
        ra3Var.getClass();
        ra3.f(new Object[0]);
    }
}
