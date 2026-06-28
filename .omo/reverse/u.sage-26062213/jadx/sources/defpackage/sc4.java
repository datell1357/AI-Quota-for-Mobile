package defpackage;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.google.api.client.http.HttpStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sc4 {
    public final int a;
    public final pe1 b;

    public sc4(Context context, int i, pe1 pe1Var) {
        context.getClass();
        this.a = i;
        this.b = pe1Var;
    }

    public final String a() {
        return di0.q(this.a, "SAGE");
    }

    @JavascriptInterface
    public final void r(String str) {
        str.getClass();
        ez3.a.getClass();
        ra3.c(new Object[0]);
        "WebAppInterface.r: Full Result JSON: ".concat(str);
        ra3.l(new Object[0]);
        zs3.X0(HttpStatusCodes.STATUS_CODE_OK, str);
        ra3.c(new Object[0]);
        this.b.k(str);
    }
}
