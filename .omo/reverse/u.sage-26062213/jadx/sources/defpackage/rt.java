package defpackage;

import android.webkit.WebView;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rt implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ a o;

    public /* synthetic */ rt(a aVar, int i) {
        this.n = i;
        this.o = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        a aVar = this.o;
        switch (i) {
            case 0:
                aVar.u();
                break;
            default:
                WebView webView = aVar.p;
                if (webView != null) {
                    webView.loadUrl("about:blank");
                }
                break;
        }
    }
}
