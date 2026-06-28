package u.sage;

import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.a3;
import defpackage.bh0;
import defpackage.bu3;
import defpackage.ca;
import defpackage.cc;
import defpackage.d01;
import defpackage.dd1;
import defpackage.dh0;
import defpackage.di0;
import defpackage.dm0;
import defpackage.ez3;
import defpackage.hh;
import defpackage.it0;
import defpackage.k30;
import defpackage.k75;
import defpackage.l92;
import defpackage.lp0;
import defpackage.mt1;
import defpackage.n8;
import defpackage.nt1;
import defpackage.nv3;
import defpackage.nx4;
import defpackage.o00;
import defpackage.o70;
import defpackage.oa2;
import defpackage.og1;
import defpackage.p10;
import defpackage.p70;
import defpackage.qi3;
import defpackage.qn0;
import defpackage.ra3;
import defpackage.ri3;
import defpackage.s61;
import defpackage.t11;
import defpackage.tx4;
import defpackage.ur;
import defpackage.us0;
import defpackage.uy4;
import defpackage.vl0;
import defpackage.wc0;
import defpackage.x50;
import defpackage.xw1;
import defpackage.y84;
import defpackage.zp0;
import defpackage.zs3;
import defpackage.zu0;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class MainApplication extends Application implements og1 {
    public static final /* synthetic */ int t = 0;
    public n8 p;
    public ri3 q;
    public boolean n = false;
    public final hh o = new hh(new dd1(2, this));
    public final nv3 r = new nv3(new cc(18, this));
    public final bh0 s = dm0.c(ca.B(k30.f(), zu0.a));

    @Override // defpackage.og1
    public final Object a() {
        return this.o.a();
    }

    public final void b() {
        if (!this.n) {
            this.n = true;
            vl0 vl0Var = (vl0) ((l92) this.o.a());
            this.p = (n8) vl0Var.c.get();
            this.q = (ri3) vl0Var.d.get();
        }
        super.onCreate();
    }

    @Override // android.app.Application
    public final void onCreate() {
        String strQ;
        b();
        SimpleDateFormat simpleDateFormat = it0.a;
        it0.b = new File(getFilesDir(), "diagnostic_log.txt");
        dh0 dh0Var = null;
        Boolean bool = (Boolean) ca.H(d01.n, new x50(new us0(this), dh0Var, 11));
        bool.getClass();
        Object value = this.r.getValue();
        value.getClass();
        uy4 uy4Var = ((FirebaseAnalytics) value).a;
        uy4Var.getClass();
        uy4Var.c(new tx4(uy4Var, bool));
        int i = 0;
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Object value2 = this.r.getValue();
        value2.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("build_type", "release");
        bundle.putString("app_version", "1.260622.7");
        Bundle bundle2 = new Bundle(bundle);
        uy4 uy4Var2 = ((FirebaseAnalytics) value2).a;
        uy4Var2.getClass();
        int i2 = 1;
        uy4Var2.c(new nx4(uy4Var2, bundle2, 1));
        ra3.c(new Object[0]);
        ri3 ri3Var = this.q;
        if (ri3Var == null) {
            nt1.X("serviceAvailabilityManager");
            throw null;
        }
        synchronized (ri3Var) {
            try {
                if (!ri3Var.d) {
                    ri3Var.d = true;
                    s61 s61Var = ri3Var.a;
                    t11<y84> t11Var = y84.x;
                    int iA0 = oa2.a0(p70.a0(t11Var, 10));
                    if (iA0 < 16) {
                        iA0 = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iA0);
                    for (y84 y84Var : t11Var) {
                        Set set = ri3.e;
                        linkedHashMap.put(qn0.F(y84Var), Boolean.TRUE);
                    }
                    s61Var.e(linkedHashMap);
                    o00 o00Var = new o00(1);
                    o00Var.b = 3600L;
                    o00 o00Var2 = new o00(o00Var);
                    s61 s61Var2 = ri3Var.a;
                    mt1.m(s61Var2.b, new wc0(i2, s61Var2, o00Var2));
                    ez3.a.getClass();
                    ra3.h(new Object[0]);
                    ri3Var.a.c().m(new qi3(ri3Var, i));
                    ri3Var.a.b(new ur(2, ri3Var));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ca.y(this.s, null, null, new x50(this, dh0Var, 12), 3);
        n8 n8Var = this.p;
        if (n8Var == null) {
            nt1.X("analyticsManager");
            throw null;
        }
        Context context = n8Var.a;
        if (Build.VERSION.SDK_INT >= 30) {
            Object systemService = context.getSystemService("activity");
            systemService.getClass();
            List historicalProcessExitReasons = ((ActivityManager) systemService).getHistoricalProcessExitReasons(context.getPackageName(), 0, 1);
            historicalProcessExitReasons.getClass();
            if (!historicalProcessExitReasons.isEmpty()) {
                ApplicationExitInfo applicationExitInfoD = a3.d(o70.h0(historicalProcessExitReasons));
                switch (applicationExitInfoD.getReason()) {
                    case 1:
                        strQ = "EXIT_SELF";
                        break;
                    case 2:
                        strQ = "SIGNALED";
                        break;
                    case 3:
                        strQ = "LOW_MEMORY";
                        break;
                    case 4:
                        strQ = "CRASH";
                        break;
                    case 5:
                        strQ = "CRASH_NATIVE";
                        break;
                    case 6:
                        strQ = "ANR";
                        break;
                    case 7:
                        strQ = "INITIALIZATION_FAILURE";
                        break;
                    case 8:
                        strQ = "PERMISSION_CHANGE";
                        break;
                    case ConnectionResult.SERVICE_INVALID /* 9 */:
                        strQ = "EXCESSIVE_RESOURCE_USAGE";
                        break;
                    case 10:
                        strQ = "USER_REQUESTED";
                        break;
                    case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                        strQ = "USER_STOPPED";
                        break;
                    case 12:
                        strQ = "DEPENDENCY_DIED";
                        break;
                    case 13:
                        strQ = "OTHER";
                        break;
                    case 14:
                        strQ = "FREEZER";
                        break;
                    case 15:
                        strQ = "PACKAGE_STATE_CHANGE";
                        break;
                    case 16:
                        strQ = "PACKAGE_UPDATED";
                        break;
                    default:
                        strQ = di0.q(applicationExitInfoD.getReason(), "UNKNOWN_");
                        break;
                }
                ra3 ra3Var = ez3.a;
                applicationExitInfoD.getDescription();
                ra3Var.getClass();
                ra3.c(new Object[0]);
                Bundle bundle3 = new Bundle();
                bundle3.putString("exit_reason", strQ);
                String description = applicationExitInfoD.getDescription();
                bundle3.putString("exit_description", description != null ? zs3.X0(100, description) : "No description");
                bundle3.putInt("exit_importance", applicationExitInfoD.getImportance());
                n8Var.a("app_process_killed_historically", bundle3);
                n8Var.b().a("app_process_killed_historically", bundle3);
            }
        }
        AtomicLong atomicLong = UsageWidgetProvider.b;
        k75.H(this);
        zp0 zp0Var = zu0.a;
        lp0 lp0Var = lp0.p;
        bu3 bu3VarF = k30.f();
        lp0Var.getClass();
        ca.y(dm0.c(ca.B(lp0Var, bu3VarF)), null, null, new p10(this, (dh0) null), 3);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        String strQ = i != 5 ? i != 10 ? i != 15 ? i != 20 ? i != 40 ? i != 60 ? i != 80 ? xw1.q("UNKNOWN(", i, ")") : "COMPLETE" : "MODERATE" : "BACKGROUND" : "UI_HIDDEN" : "RUNNING_CRITICAL" : "RUNNING_LOW" : "RUNNING_MODERATE";
        if (i >= 40) {
            n8 n8Var = this.p;
            if (n8Var == null) {
                nt1.X("analyticsManager");
                throw null;
            }
            Map mapSingletonMap = Collections.singletonMap("level", strQ);
            mapSingletonMap.getClass();
            n8Var.d("trim_memory", mapSingletonMap);
            ra3 ra3Var = ez3.a;
            "App memory trimmed: ".concat(strQ);
            ra3Var.getClass();
            ra3.m(new Object[0]);
        }
    }
}
