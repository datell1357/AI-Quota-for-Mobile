package defpackage;

import android.webkit.CookieManager;
import android.webkit.WebView;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t4 implements gv0 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public t4(String str, pg2 pg2Var, pg2 pg2Var2, pg2 pg2Var3) {
        this.a = 0;
        this.b = pg2Var;
        this.c = pg2Var2;
        this.d = pg2Var3;
    }

    @Override // defpackage.gv0
    public final void a() {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                tu1 tu1Var = (tu1) ((pg2) obj3).getValue();
                if (tu1Var != null) {
                    tu1Var.j(null);
                }
                ez3.a.getClass();
                ra3.c(new Object[0]);
                WebView webView = (WebView) ((pg2) obj2).getValue();
                if (webView != null) {
                    webView.destroy();
                }
                WebView webView2 = (WebView) ((pg2) obj).getValue();
                if (webView2 != null) {
                    webView2.destroy();
                }
                CookieManager.getInstance().flush();
                break;
            case 1:
                ((gp3) obj3).remove(obj2);
                ((he) obj).d.k(obj2);
                break;
            case 2:
                yh2 yh2Var = (yh2) obj2;
                ((ut0) obj3).b().c(yh2Var);
                ((gp3) obj).remove(yh2Var);
                break;
            case 3:
                ((p22) obj3).getLifecycle().b((l22) obj2);
                zp zpVar = (zp) ((w33) obj).n;
                if (zpVar != null) {
                    zpVar.a();
                }
                break;
            default:
                gc3 gc3Var = (gc3) obj3;
                lc3 lc3Var = (lc3) obj;
                if (gc3Var.o.k(obj2) == lc3Var) {
                    Map map = gc3Var.n;
                    Map mapC = lc3Var.c();
                    if (!mapC.isEmpty()) {
                        map.put(obj2, mapC);
                    } else {
                        map.remove(obj2);
                    }
                }
                break;
        }
    }

    public /* synthetic */ t4(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
