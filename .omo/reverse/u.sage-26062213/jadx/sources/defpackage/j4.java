package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j4 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public /* synthetic */ j4(String str, y3 y3Var, ne1 ne1Var, pg2 pg2Var, pg2 pg2Var2) {
        this.n = 0;
        this.o = y3Var;
        this.p = ne1Var;
        this.q = pg2Var;
        this.r = pg2Var2;
    }

    @Override // defpackage.ne1
    public final Object a() {
        boolean z = false;
        switch (this.n) {
            case 0:
                y3 y3Var = (y3) this.o;
                ne1 ne1Var = (ne1) this.p;
                pg2 pg2Var = (pg2) this.q;
                pg2 pg2Var2 = (pg2) this.r;
                ra3 ra3Var = ez3.a;
                WebView webView = (WebView) pg2Var2.getValue();
                if (webView != null) {
                    webView.canGoBack();
                }
                ra3Var.getClass();
                ra3.c(new Object[0]);
                if (((WebView) pg2Var.getValue()) != null) {
                    WebView webView2 = (WebView) pg2Var.getValue();
                    if (webView2 == null || !webView2.canGoBack()) {
                        WebView webView3 = (WebView) pg2Var.getValue();
                        if (webView3 != null) {
                            ViewParent parent = webView3.getParent();
                            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                            if (viewGroup != null) {
                                viewGroup.removeView(webView3);
                            }
                            webView3.destroy();
                        }
                        pg2Var.setValue(null);
                    } else {
                        WebView webView4 = (WebView) pg2Var.getValue();
                        if (webView4 != null) {
                            webView4.goBack();
                        }
                    }
                } else {
                    WebView webView5 = (WebView) pg2Var2.getValue();
                    String url = webView5 != null ? webView5.getUrl() : null;
                    List<String> list = y3Var.d;
                    if (!list.isEmpty()) {
                        for (String str : list) {
                            if (!nt1.g(url, str)) {
                                if (url != null && gt3.y0(url, str, false)) {
                                    String strSubstring = url.substring(str.length());
                                    if (strSubstring.length() != 0 && !gt3.y0(strSubstring, "?", false) && !gt3.y0(strSubstring, "#", false) && (!strSubstring.equals("/") || gt3.r0(str, "/", false))) {
                                    }
                                }
                            }
                            z = true;
                        }
                    }
                    WebView webView6 = (WebView) pg2Var2.getValue();
                    if (webView6 == null || !webView6.canGoBack() || z) {
                        ne1Var.a();
                    } else {
                        WebView webView7 = (WebView) pg2Var2.getValue();
                        if (webView7 != null) {
                            webView7.goBack();
                        }
                    }
                }
                return t64.a;
            case 1:
                Float f = (Float) this.o;
                pq1 pq1Var = (pq1) this.p;
                Float f2 = (Float) this.q;
                oq1 oq1Var = (oq1) this.r;
                if (!f.equals(pq1Var.n) || !f2.equals(pq1Var.o)) {
                    pq1Var.n = f;
                    pq1Var.o = f2;
                    pq1Var.q = new lw3(oq1Var, k30.m, f, f2, null);
                    pq1Var.f263u.b.setValue(Boolean.TRUE);
                    pq1Var.r = false;
                    pq1Var.s = true;
                }
                return t64.a;
            default:
                ag4 ag4Var = (ag4) this.o;
                UUID uuid = (UUID) this.p;
                vb1 vb1Var = (vb1) this.q;
                Context context = (Context) this.r;
                String string = uuid.toString();
                og4 og4VarC = ag4Var.c.c(string);
                if (og4VarC == null || og4VarC.b.a()) {
                    k21.n("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                } else {
                    ez2 ez2Var = ag4Var.b;
                    synchronized (ez2Var.k) {
                        try {
                            t72.g().h(ez2.l, "Moving WorkSpec (" + string + ") to the foreground");
                            hh4 hh4Var = (hh4) ez2Var.g.remove(string);
                            if (hh4Var != null) {
                                if (ez2Var.a == null) {
                                    PowerManager.WakeLock wakeLockA = mc4.a(ez2Var.b);
                                    ez2Var.a = wakeLockA;
                                    wakeLockA.acquire();
                                }
                                ez2Var.f.put(string, hh4Var);
                                Intent intentA = uv3.a(ez2Var.b, rg4.a(hh4Var.a), vb1Var);
                                Context context2 = ez2Var.b;
                                if (Build.VERSION.SDK_INT >= 26) {
                                    sf.w(context2, intentA);
                                } else {
                                    context2.startService(intentA);
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    bg4 bg4VarA = rg4.a(og4VarC);
                    String str2 = uv3.w;
                    Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_NOTIFY");
                    intent.putExtra("KEY_NOTIFICATION_ID", vb1Var.a);
                    intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", vb1Var.b);
                    intent.putExtra("KEY_NOTIFICATION", vb1Var.c);
                    intent.putExtra("KEY_WORKSPEC_ID", bg4VarA.a);
                    intent.putExtra("KEY_GENERATION", bg4VarA.b);
                    context.startService(intent);
                }
                return null;
        }
    }

    public /* synthetic */ j4(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
    }
}
