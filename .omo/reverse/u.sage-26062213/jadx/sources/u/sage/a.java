package u.sage;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import android.webkit.WebView;
import defpackage.b23;
import defpackage.bd4;
import defpackage.bh0;
import defpackage.bu3;
import defpackage.ca;
import defpackage.cc;
import defpackage.dh0;
import defpackage.dm0;
import defpackage.ez3;
import defpackage.h01;
import defpackage.h7;
import defpackage.ir3;
import defpackage.k30;
import defpackage.n1;
import defpackage.n43;
import defpackage.n8;
import defpackage.n92;
import defpackage.nt1;
import defpackage.nv3;
import defpackage.o;
import defpackage.oj3;
import defpackage.pi1;
import defpackage.ps;
import defpackage.pt;
import defpackage.qt;
import defpackage.ra3;
import defpackage.rt;
import defpackage.sc4;
import defpackage.st;
import defpackage.v43;
import defpackage.vt;
import defpackage.wr3;
import defpackage.wt;
import defpackage.xc4;
import defpackage.xr3;
import defpackage.xt;
import defpackage.y2;
import defpackage.y84;
import defpackage.yt;
import defpackage.zp0;
import defpackage.zu0;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends Service {
    public static final wr3 D;
    public static final b23 E;
    public static final wr3 F;
    public static final b23 G;
    public int A;
    public int B;
    public v43 C;
    public final Handler n = new Handler(Looper.getMainLooper());
    public final nv3 o = new nv3(new cc(3, this));
    public WebView p;
    public final bh0 q;
    public final pi1 r;
    public String s;
    public ir3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ir3 f349u;
    public String v;
    public boolean w;
    public final wr3 x;
    public final wr3 y;
    public boolean z;

    static {
        wr3 wr3VarA = xr3.a(Boolean.FALSE);
        D = wr3VarA;
        E = new b23(wr3VarA);
        wr3 wr3VarA2 = xr3.a(h01.n);
        F = wr3VarA2;
        G = new b23(wr3VarA2);
    }

    public a() {
        bu3 bu3VarF = k30.f();
        zp0 zp0Var = zu0.a;
        this.q = dm0.c(ca.B(bu3VarF, n92.a));
        this.r = new pi1();
        Boolean bool = Boolean.FALSE;
        this.x = xr3.a(bool);
        this.y = xr3.a(bool);
        xr3.a(null);
        this.C = n43.b;
    }

    public final void b(String str, String str2) {
        if (nt1.g(this.s, str) && o().g()) {
            int i = this.A;
            if (i >= 2) {
                ra3 ra3Var = ez3.a;
                j();
                ra3Var.getClass();
                ra3.f(new Object[0]);
                o().s(false);
                x("MaxRetriesReached");
                return;
            }
            this.A = i + 1;
            ra3 ra3Var2 = ez3.a;
            j();
            ra3Var2.getClass();
            ra3.m(new Object[0]);
            this.n.post(new st(this, str, 0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.Notification c(defpackage.d84 r36) {
        /*
            Method dump skipped, instruction units count: 883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.sage.a.c(d84):android.app.Notification");
    }

    public void d() {
        WebView webView = this.p;
        if (webView != null) {
            k30.h(webView);
        }
        sc4 sc4Var = new sc4(this, 1, new o(1, this, a.class, "handleUsageResult", "handleUsageResult(Ljava/lang/String;)V", 0, 0, 4));
        WebView webView2 = this.p;
        if (webView2 != null) {
            webView2.addJavascriptInterface(sc4Var, sc4Var.a());
        }
        sc4 sc4VarC = xc4.c(this, f(), s(), this.q, j(), g(), q(), oj3.b, false, new wt(this, null));
        WebView webView3 = this.p;
        if (webView3 != null) {
            webView3.addJavascriptInterface(sc4VarC, sc4VarC.a());
        }
        sc4 sc4Var2 = new sc4(this, 10, new o(1, this, a.class, "handleRecreateWebView", "handleRecreateWebView(Ljava/lang/String;)V", 0, 0, 1));
        WebView webView4 = this.p;
        if (webView4 != null) {
            webView4.addJavascriptInterface(sc4Var2, sc4Var2.a());
        }
        sc4 sc4Var3 = new sc4(this, 11, new o(1, this, a.class, "handleInitiateThrottleCheck", "handleInitiateThrottleCheck(Ljava/lang/String;)V", 0, 0, 2));
        WebView webView5 = this.p;
        if (webView5 != null) {
            webView5.addJavascriptInterface(sc4Var3, sc4Var3.a());
        }
        sc4 sc4Var4 = new sc4(this, 12, new o(1, this, a.class, "handleReportTimerTest", "handleReportTimerTest(Ljava/lang/String;)V", 0, 0, 3));
        WebView webView6 = this.p;
        if (webView6 != null) {
            webView6.addJavascriptInterface(sc4Var4, sc4Var4.a());
        }
        WebView webView7 = this.p;
        if (webView7 != null) {
            webView7.setWebChromeClient(new bd4(j()));
        }
        WebView webView8 = this.p;
        if (webView8 != null) {
            webView8.setWebViewClient(new vt(this));
        }
    }

    public final void e(String str) {
        str.getClass();
        int i = this.B;
        ra3 ra3Var = ez3.a;
        j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        this.n.post(new qt(i, 0, this, str));
    }

    public abstract n1 f();

    public abstract n8 g();

    public abstract String h();

    public abstract String i();

    public final String j() {
        Object value = this.o.getValue();
        value.getClass();
        return (String) value;
    }

    public abstract String k();

    public abstract int l();

    public abstract int m();

    public abstract String n();

    public abstract pt o();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ra3 ra3Var = ez3.a;
        j().concat(": onCreate: Service Created.");
        ra3Var.getClass();
        ra3.c(new Object[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            Object systemService = getSystemService("notification");
            systemService.getClass();
            y2.k();
            NotificationChannel notificationChannelA = y2.a(h(), i());
            notificationChannelA.setShowBadge(false);
            ((NotificationManager) systemService).createNotificationChannel(notificationChannelA);
        }
        j().concat(": [RemoteConfig] setupScriptObserver: Subscribing to preparedScriptFlow.");
        ra3.h(new Object[0]);
        dh0 dh0Var = null;
        yt ytVar = new yt(this, dh0Var, 9);
        bh0 bh0Var = this.q;
        ca.y(bh0Var, null, null, ytVar, 3);
        ca.y(bh0Var, null, null, new yt(this, dh0Var, 5), 3);
        ca.y(bh0Var, null, null, new yt(this, dh0Var, 6), 3);
        ca.y(bh0Var, null, null, new yt(this, dh0Var, 7), 3);
        ca.y(bh0Var, null, null, new yt(this, dh0Var, 8), 3);
        this.n.post(new rt(this, 0));
        Boolean bool = Boolean.TRUE;
        wr3 wr3Var = this.x;
        wr3Var.getClass();
        wr3Var.i(null, bool);
    }

    @Override // android.app.Service
    public void onDestroy() {
        StatusBarNotification[] activeNotifications;
        StatusBarNotification statusBarNotification;
        super.onDestroy();
        Object systemService = getSystemService("notification");
        systemService.getClass();
        NotificationManager notificationManager = (NotificationManager) systemService;
        try {
            activeNotifications = notificationManager.getActiveNotifications();
        } catch (Exception unused) {
            activeNotifications = new StatusBarNotification[0];
        }
        activeNotifications.getClass();
        int length = activeNotifications.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                statusBarNotification = null;
                break;
            }
            statusBarNotification = activeNotifications[i];
            if (statusBarNotification.getId() == m()) {
                break;
            } else {
                i++;
            }
        }
        ra3 ra3Var = ez3.a;
        j();
        if (statusBarNotification != null) {
            statusBarNotification.getNotification();
        }
        if (statusBarNotification != null) {
            statusBarNotification.getNotification();
        }
        ra3Var.getClass();
        ra3.c(new Object[0]);
        j();
        ra3.c(new Object[0]);
        stopForeground(1);
        notificationManager.cancel(m());
        j().concat(": onDestroy called. Stopping periodic checks and destroying WebView.");
        ra3.c(new Object[0]);
        dm0.o(this.q, null);
        o().s(false);
        Boolean bool = Boolean.FALSE;
        wr3 wr3Var = this.x;
        wr3Var.getClass();
        wr3Var.i(null, bool);
        this.n.post(new h7(3, this, notificationManager));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:133:0x029c  */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(android.content.Intent r9, int r10, int r11) {
        /*
            Method dump skipped, instruction units count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.sage.a.onStartCommand(android.content.Intent, int, int):int");
    }

    public abstract Class p();

    public abstract y84 q();

    public abstract String r();

    public abstract ps s();

    public abstract String t();

    public final void u() {
        Map mapSingletonMap;
        this.B++;
        ra3 ra3Var = ez3.a;
        j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        this.p = new WebView(this);
        d();
        WebView webView = this.p;
        if (webView != null) {
            wr3 wr3Var = F;
            Map map = (Map) wr3Var.getValue();
            String strR = r();
            map.getClass();
            if (map.isEmpty()) {
                mapSingletonMap = Collections.singletonMap(strR, webView);
                mapSingletonMap.getClass();
            } else {
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.put(strR, webView);
                mapSingletonMap = linkedHashMap;
            }
            wr3Var.i(null, mapSingletonMap);
        }
        j();
        ra3.c(new Object[0]);
        WebView webView2 = this.p;
        if (webView2 != null) {
            webView2.loadUrl(t());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void v(String str) {
        Map map;
        ra3 ra3Var = ez3.a;
        j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        WebView webView = this.p;
        dh0 dh0Var = null;
        if (webView != null) {
            wr3 wr3Var = F;
            Map map2 = (Map) wr3Var.getValue();
            String strR = r();
            map2.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
            linkedHashMap.remove(strR);
            int size = linkedHashMap.size();
            if (size != 0) {
                map = linkedHashMap;
                if (size == 1) {
                    Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
                    Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
                    mapSingletonMap.getClass();
                    map = mapSingletonMap;
                }
            } else {
                map = h01.n;
            }
            wr3Var.i(null, map);
            webView.stopLoading();
            webView.destroy();
        }
        Boolean bool = Boolean.FALSE;
        wr3 wr3Var2 = this.y;
        wr3Var2.getClass();
        wr3Var2.i(null, bool);
        u();
        j();
        ra3.c(new Object[0]);
        ir3 ir3Var = this.t;
        if (ir3Var != null) {
            ir3Var.j(null);
        }
        this.t = ca.y(this.q, null, null, new xt(this, str, dh0Var, 4), 3);
    }

    public final void w(String str) {
        ra3 ra3Var = ez3.a;
        j();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        v(str);
        zp0 zp0Var = zu0.a;
        ca.y(this.q, n92.a, null, new xt(this, str, null, 3), 2);
    }

    public final void x(String str) {
        ca.y(this.q, null, null, new xt(this, str, null, 5), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object y(defpackage.fh0 r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.cu
            if (r0 == 0) goto L13
            r0 = r5
            cu r0 = (defpackage.cu) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            cu r0 = new cu
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            defpackage.gg4.T(r5)
            goto L43
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L2c:
            defpackage.gg4.T(r5)
            yt r5 = new yt
            r1 = 10
            r5.<init>(r4, r2, r1)
            r0.s = r3
            r1 = 8000(0x1f40, double:3.9525E-320)
            java.lang.Object r5 = defpackage.w80.Z(r1, r5, r0)
            ri0 r0 = defpackage.ri0.n
            if (r5 != r0) goto L43
            return r0
        L43:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            r0 = 0
            if (r5 != 0) goto L5c
            ra3 r5 = defpackage.ez3.a
            java.lang.String r4 = r4.j()
            java.lang.String r1 = ": [ScriptInjection] Timed out waiting for script injection flag."
            r4.concat(r1)
            java.lang.Object[] r4 = new java.lang.Object[r0]
            r5.getClass()
            defpackage.ra3.m(r4)
            goto L6f
        L5c:
            ra3 r5 = defpackage.ez3.a
            java.lang.String r4 = r4.j()
            java.lang.String r1 = ": [ScriptInjection] Script injection confirmed. Safe to evaluate."
            r4.concat(r1)
            java.lang.Object[] r4 = new java.lang.Object[r0]
            r5.getClass()
            defpackage.ra3.c(r4)
        L6f:
            t64 r4 = defpackage.t64.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: u.sage.a.y(fh0):java.lang.Object");
    }
}
