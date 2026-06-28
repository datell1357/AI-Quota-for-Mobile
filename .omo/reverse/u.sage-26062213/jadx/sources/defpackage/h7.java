package defpackage;

import android.app.NotificationManager;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Process;
import android.os.StrictMode;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.util.LongSparseArray;
import android.webkit.WebView;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import u.sage.a;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h7 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ h7(ij0 ij0Var, Exception exc) {
        this.n = 10;
        Map map = Collections.EMPTY_MAP;
        this.o = ij0Var;
        this.p = exc;
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
    @Override // java.lang.Runnable
    public final void run() throws ru0 {
        StatusBarNotification[] activeNotifications;
        xq0 xq0Var;
        int i = 0;
        switch (this.n) {
            case 0:
                ((s80) this.o).t((ListenableFuture) this.p);
                return;
            case 1:
                ((s80) this.o).q((dp1) this.p);
                return;
            case 2:
                nt1.t((ha) this.o, (LongSparseArray) this.p);
                return;
            case 3:
                a aVar = (a) this.o;
                NotificationManager notificationManager = (NotificationManager) this.p;
                wr3 wr3Var = a.F;
                Map map = (Map) wr3Var.getValue();
                String strR = aVar.r();
                map.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.remove(strR);
                int size = linkedHashMap.size();
                Map map2 = linkedHashMap;
                if (size == 0) {
                    map2 = h01.n;
                } else if (size == 1) {
                    Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
                    Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
                    mapSingletonMap.getClass();
                    map2 = mapSingletonMap;
                }
                wr3Var.i(null, map2);
                WebView webView = aVar.p;
                if (webView != null) {
                    webView.destroy();
                }
                aVar.p = null;
                try {
                    activeNotifications = notificationManager.getActiveNotifications();
                    break;
                } catch (Exception unused) {
                    activeNotifications = new StatusBarNotification[0];
                }
                activeNotifications.getClass();
                int length = activeNotifications.length;
                for (int i2 = 0; i2 < length && activeNotifications[i2].getId() != aVar.m(); i2++) {
                }
                ra3 ra3Var = ez3.a;
                aVar.j();
                ra3Var.getClass();
                ra3.c(new Object[0]);
                return;
            case 4:
                eg4 eg4Var = (eg4) this.o;
                String string = ((UUID) this.p).toString();
                string.getClass();
                ht4.h(eg4Var, string);
                return;
            case 5:
                u90 u90Var = (u90) this.o;
                u90Var.getLifecycle().a(new l90(i, (uo2) this.p, u90Var));
                return;
            case 6:
                dr2 dr2Var = (dr2) this.o;
                n03 n03Var = (n03) this.p;
                if (dr2Var.b != dr2.d) {
                    k21.n("provide() can be called only once.");
                    return;
                }
                synchronized (dr2Var) {
                    xq0Var = dr2Var.a;
                    dr2Var.a = null;
                    dr2Var.b = n03Var;
                    break;
                }
                xq0Var.a(n03Var);
                return;
            case 7:
                s12 s12Var = (s12) this.o;
                n03 n03Var2 = (n03) this.p;
                synchronized (s12Var) {
                    try {
                        if (s12Var.b == null) {
                            s12Var.a.add(n03Var2);
                        } else {
                            s12Var.b.add(n03Var2.get());
                        }
                    } finally {
                    }
                }
                return;
            case 8:
                List<br> list = (List) this.o;
                cf0 cf0Var = (cf0) this.p;
                for (br brVar : list) {
                    Object obj = cf0Var.d;
                    cr crVar = brVar.a;
                    Object rf0Var = crVar.e(obj) ? new rf0(crVar.d()) : qf0.a;
                    hz2 hz2Var = brVar.b;
                    hz2Var.getClass();
                    hz2Var.n(rf0Var);
                }
                return;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((dj0) this.o).c((String) this.p, Boolean.FALSE);
                return;
            case 10:
                ij0 ij0Var = (ij0) this.o;
                Exception exc = (Exception) this.p;
                Map map3 = Collections.EMPTY_MAP;
                dj0 dj0Var = ij0Var.g;
                Thread threadCurrentThread = Thread.currentThread();
                dj0Var.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                pk0 pk0Var = dj0Var.n;
                if (pk0Var == null || !pk0Var.e.get()) {
                    long j = jCurrentTimeMillis / 1000;
                    String strE = dj0Var.e();
                    if (strE == null) {
                        Log.w("FirebaseCrashlytics", "Tried to write a non-fatal exception while no session was open.", null);
                        return;
                    }
                    s21 s21Var = new s21(strE, j, map3);
                    ga0 ga0Var = dj0Var.m;
                    ga0Var.getClass();
                    String strConcat = "Persisting non-fatal event for session ".concat(strE);
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", strConcat, null);
                    }
                    ga0Var.n(exc, threadCurrentThread, "error", s21Var, false);
                    return;
                }
                return;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                gl0 gl0Var = (gl0) this.o;
                Runnable runnable = (Runnable) this.p;
                Process.setThreadPriority(gl0Var.c);
                StrictMode.ThreadPolicy threadPolicy = gl0Var.d;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable.run();
                return;
            case 12:
                Callable callable = (Callable) this.o;
                sr0 sr0Var = (sr0) ((wu4) this.p).o;
                try {
                    sr0Var.j(callable.call());
                    return;
                } catch (Exception e) {
                    sr0Var.k(e);
                    return;
                }
            case 13:
                ((o20) this.o).H((xi1) this.p);
                return;
            case 14:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.o;
                JobParameters jobParameters = (JobParameters) this.p;
                int i3 = JobInfoSchedulerService.n;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 15:
                ez2 ez2Var = (ez2) this.o;
                bg4 bg4Var = (bg4) this.p;
                synchronized (ez2Var.k) {
                    try {
                        ArrayList arrayList = ez2Var.j;
                        int size2 = arrayList.size();
                        int i4 = 0;
                        while (i4 < size2) {
                            Object obj2 = arrayList.get(i4);
                            i4++;
                            ((f31) obj2).d(bg4Var, false);
                        }
                    } finally {
                    }
                    break;
                }
                return;
            case 16:
                j63 j63Var = (j63) this.o;
                CountDownLatch countDownLatch = (CountDownLatch) this.p;
                try {
                    y14.a().d.g(((hp) j63Var.h.b).b(ry2.p), 1);
                    break;
                } catch (Exception unused2) {
                }
                countDownLatch.countDown();
                return;
            case 17:
                ((og) this.o).b((Typeface) this.p);
                return;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                ((pc4) ((qd1) this.o).p).d((nr3) this.p, 3);
                return;
            case 19:
                Runnable runnable2 = (Runnable) this.o;
                ji3 ji3Var = (ji3) this.p;
                try {
                    runnable2.run();
                    return;
                } finally {
                    ji3Var.a();
                }
            case 20:
                ArrayList arrayList2 = (ArrayList) this.o;
                Context context = (Context) this.p;
                System.currentTimeMillis();
                ra3 ra3Var2 = ez3.a;
                Thread.currentThread().getName();
                arrayList2.toString();
                ra3Var2.getClass();
                ra3.c(new Object[0]);
                Intent intent = new Intent(context, (Class<?>) UsageWidgetProvider.class);
                intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
                intent.putExtra("appWidgetIds", o70.B0(arrayList2));
                context.sendBroadcast(intent);
                return;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                q51 q51Var = (q51) this.o;
                ((uc2) q51Var.b).i(q51Var.a, (List) this.p);
                return;
            default:
                mh4 mh4Var = (mh4) this.o;
                h22 h22Var = (h22) this.p;
                if (mh4Var.p) {
                    return;
                }
                mh4Var.q = h22Var;
                h22Var.a(mh4Var);
                return;
        }
    }

    public /* synthetic */ h7(long j, ArrayList arrayList, Context context) {
        this.n = 20;
        this.o = arrayList;
        this.p = context;
    }

    public /* synthetic */ h7(s80 s80Var, int i, ListenableFuture listenableFuture) {
        this.n = 0;
        this.o = s80Var;
        this.p = listenableFuture;
    }

    public /* synthetic */ h7(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }
}
