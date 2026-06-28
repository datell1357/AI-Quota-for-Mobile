package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.webkit.WebView;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qt implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ qt(int i, int i2, Object obj, Object obj2) {
        this.n = i2;
        this.p = obj;
        this.o = i;
        this.q = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Object obj = this.q;
        int i2 = this.o;
        Object obj2 = this.p;
        switch (i) {
            case 0:
                a aVar = (a) obj2;
                String str = (String) obj;
                WebView webView = aVar.p;
                if (webView == null) {
                    ra3 ra3Var = ez3.a;
                    aVar.j();
                    ra3Var.getClass();
                    ra3.m(new Object[0]);
                } else if (aVar.B == i2) {
                    ra3 ra3Var2 = ez3.a;
                    aVar.j();
                    ra3Var2.getClass();
                    ra3.c(new Object[0]);
                    webView.evaluateJavascript(str, new v4(aVar, i2));
                } else {
                    ra3 ra3Var3 = ez3.a;
                    aVar.j();
                    ra3Var3.getClass();
                    ra3.m(new Object[0]);
                }
                break;
            case 1:
                s90 s90Var = (s90) obj2;
                Object obj3 = ((i3) obj).a;
                String str2 = (String) s90Var.a.get(Integer.valueOf(i2));
                if (str2 != null) {
                    m6 m6Var = (m6) s90Var.e.get(str2);
                    if ((m6Var != null ? m6Var.a : null) != null) {
                        f6 f6Var = m6Var.a;
                        f6Var.getClass();
                        if (s90Var.d.remove(str2)) {
                            f6Var.f(obj3);
                        }
                    } else {
                        s90Var.g.remove(str2);
                        s90Var.f.put(str2, obj3);
                    }
                    break;
                }
                break;
            case 2:
                ((s90) obj2).a(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                break;
            default:
                ((et0) obj2).b.n(i2, obj);
                break;
        }
    }
}
