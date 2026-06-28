package defpackage;

import android.webkit.WebView;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class st implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ a o;
    public final /* synthetic */ String p;

    public /* synthetic */ st(a aVar, String str, int i) {
        this.n = i;
        this.o = aVar;
        this.p = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        String str = this.p;
        a aVar = this.o;
        switch (i) {
            case 0:
                aVar.w(str);
                break;
            case 1:
                WebView webView = aVar.p;
                if (webView != null) {
                    webView.evaluateJavascript("sage(13, '" + str + "');", null);
                }
                break;
            case 2:
                WebView webView2 = aVar.p;
                if (webView2 != null) {
                    webView2.evaluateJavascript("sage(14, '" + str + "', 'frozen');", null);
                }
                break;
            default:
                WebView webView3 = aVar.p;
                if (webView3 != null) {
                    webView3.evaluateJavascript("sage(14, '" + str + "', 'responsive');", null);
                }
                break;
        }
    }
}
