package defpackage;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s6 implements gv0 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ s6(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.gv0
    public final void a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                o6 o6Var = ((j6) obj).a;
                if (o6Var == null) {
                    k21.n("Launcher has not been initialized");
                } else {
                    o6Var.b();
                }
                break;
            case 1:
                xt0 xt0Var = (xt0) obj;
                xt0Var.dismiss();
                xt0Var.f413u.e();
                break;
            case 2:
                ((kv0) obj).o.a();
                break;
            case 3:
                ((b02) obj).d = null;
                break;
            case 4:
                n02 n02Var = (n02) obj;
                mu0 mu0Var = n02Var.c;
                if (mu0Var != null) {
                    mu0Var.a = false;
                }
                n02Var.c = null;
                break;
            case 5:
                i02 i02Var = (i02) obj;
                i02Var.f = true;
                i02Var.d = 0;
                i02Var.c();
                break;
            case 6:
                ((pg3) ((ib0) obj)).G(null);
                break;
            default:
                ez3.a.getClass();
                ra3.c(new Object[0]);
                WebView webView = (WebView) obj;
                ViewParent parent = webView.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(webView);
                }
                break;
        }
    }
}
