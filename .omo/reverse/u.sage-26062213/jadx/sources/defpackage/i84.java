package defpackage;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i84 implements ValueCallback {
    public final /* synthetic */ u33 a;
    public final /* synthetic */ n84 b;
    public final /* synthetic */ int c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ o20 g;
    public final /* synthetic */ u33 h;
    public final /* synthetic */ WebView i;

    public i84(u33 u33Var, n84 n84Var, int i, String str, String str2, String str3, o20 o20Var, long j, long j2, u33 u33Var2, WebView webView) {
        this.a = u33Var;
        this.b = n84Var;
        this.c = i;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = o20Var;
        this.h = u33Var2;
        this.i = webView;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        System.currentTimeMillis();
        this.a.n++;
        ra3 ra3Var = ez3.a;
        o20 o20Var = this.g;
        o20Var.w();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        int i = this.c;
        if (i != 1) {
            ra3.c(new Object[0]);
            return;
        }
        u33 u33Var = this.h;
        int i2 = u33Var.n + 1;
        u33Var.n = i2;
        ra3.c(new Object[0]);
        StringBuilder sb = new StringBuilder("sage(4, '");
        String str = this.e;
        sb.append(str);
        sb.append("', 'native-onPageStarted-");
        sb.append(i);
        sb.append("');");
        this.i.evaluateJavascript(sb.toString(), new h84(this.b, i2, this.c, str, this.f, this.d, o20Var));
    }
}
