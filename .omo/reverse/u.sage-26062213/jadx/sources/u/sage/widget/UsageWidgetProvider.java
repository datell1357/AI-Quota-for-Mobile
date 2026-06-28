package u.sage.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import defpackage.b94;
import defpackage.bh0;
import defpackage.bu3;
import defpackage.c75;
import defpackage.ca;
import defpackage.dm0;
import defpackage.ez3;
import defpackage.fn3;
import defpackage.gg4;
import defpackage.k30;
import defpackage.lp0;
import defpackage.nt1;
import defpackage.oe3;
import defpackage.p61;
import defpackage.pe3;
import defpackage.qe3;
import defpackage.ra3;
import defpackage.re3;
import defpackage.ri3;
import defpackage.ve3;
import defpackage.vl0;
import defpackage.y84;
import defpackage.zp0;
import defpackage.zu0;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import u.sage.MainActivity;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class UsageWidgetProvider extends AppWidgetProvider {
    public static final AtomicLong b = new AtomicLong(0);
    public final bh0 a;

    public UsageWidgetProvider() {
        bu3 bu3VarF = k30.f();
        zp0 zp0Var = zu0.a;
        this.a = dm0.c(ca.B(bu3VarF, lp0.p));
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0171  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.widget.RemoteViews a(u.sage.widget.UsageWidgetProvider r21, android.content.Context r22, int r23, defpackage.y84 r24, boolean r25, defpackage.d84 r26, float r27, float r28, boolean r29) {
        /*
            Method dump skipped, instruction units count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.sage.widget.UsageWidgetProvider.a(u.sage.widget.UsageWidgetProvider, android.content.Context, int, y84, boolean, d84, float, float, boolean):android.widget.RemoteViews");
    }

    public static Intent b(Context context, y84 y84Var) {
        String str;
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.setFlags(872415232);
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            str = (String) pe3.c.a;
        } else if (iOrdinal == 1) {
            str = (String) ve3.c.a;
        } else if (iOrdinal == 2) {
            str = (String) oe3.c.a;
        } else if (iOrdinal == 3) {
            str = (String) qe3.c.a;
        } else {
            if (iOrdinal != 4) {
                p61.x();
                return null;
            }
            str = (String) re3.c.a;
        }
        intent.putExtra("extra_nav_route", str);
        intent.putExtra("extra_source", "widget");
        return intent;
    }

    public final void c(Context context, AppWidgetManager appWidgetManager, int i) {
        long jIncrementAndGet = b.incrementAndGet();
        ra3 ra3Var = ez3.a;
        Thread.currentThread().getName();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i);
        int i2 = appWidgetOptions.getInt("appWidgetMinHeight", 110);
        int i3 = appWidgetOptions.getInt("appWidgetMinWidth", 110);
        String strG = c75.G(context, i);
        if (strG == null) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_not_configured);
            Intent intent = new Intent(context, (Class<?>) UsageWidgetConfigActivity.class);
            intent.putExtra("appWidgetId", i);
            remoteViews.setOnClickPendingIntent(R.id.widget_not_config_root, PendingIntent.getActivity(context, i, intent, 201326592));
            appWidgetManager.updateAppWidget(i, remoteViews);
            return;
        }
        try {
            y84 y84VarValueOf = y84.valueOf(strG);
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ri3 ri3Var = (ri3) ((vl0) ((fn3) gg4.w(applicationContext, fn3.class))).d.get();
            ri3Var.getClass();
            y84VarValueOf.getClass();
            Boolean bool = (Boolean) ((Map) ri3Var.b.getValue()).get(y84VarValueOf);
            if (bool != null ? bool.booleanValue() : true) {
                boolean zK = c75.K(context, i);
                Thread.currentThread().getName();
                ra3.c(new Object[0]);
                ca.y(this.a, null, null, new b94(i, jIncrementAndGet, context, y84VarValueOf, zK, appWidgetOptions, appWidgetManager, this, i2, i3, null), 3);
                return;
            }
            y84VarValueOf.name();
            ra3.c(new Object[0]);
            RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), R.layout.widget_service_unavailable);
            remoteViews2.setImageViewResource(R.id.widget_unavailable_icon, y84VarValueOf.o);
            remoteViews2.setTextViewText(R.id.widget_unavailable_text, context.getString(R.string.widget_service_unavailable, y84VarValueOf.n));
            Intent intent2 = new Intent(context, (Class<?>) UsageWidgetConfigActivity.class);
            intent2.putExtra("appWidgetId", i);
            remoteViews2.setOnClickPendingIntent(R.id.widget_unavailable_root, PendingIntent.getActivity(context, i, intent2, 201326592));
            appWidgetManager.updateAppWidget(i, remoteViews2);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        context.getClass();
        appWidgetManager.getClass();
        bundle.getClass();
        super.onAppWidgetOptionsChanged(context, appWidgetManager, i, bundle);
        int i2 = Build.VERSION.SDK_INT;
        ArrayList parcelableArrayList = i2 >= 31 ? bundle.getParcelableArrayList("appWidgetSizes") : null;
        bundle.getInt("appWidgetMinHeight", -1);
        bundle.getInt("appWidgetMaxHeight", -1);
        ra3 ra3Var = ez3.a;
        Thread.currentThread().getName();
        Objects.toString(parcelableArrayList);
        ra3Var.getClass();
        ra3.c(new Object[0]);
        if (i2 < 31) {
            appWidgetManager.notifyAppWidgetViewDataChanged(i, R.id.widget_limit_list);
        }
        c(context, appWidgetManager, i);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDeleted(Context context, int[] iArr) {
        context.getClass();
        iArr.getClass();
        for (int i : iArr) {
            context.getSharedPreferences("widget_preferences", 0).edit().remove("service_type_" + i).remove("is_refreshing_" + i).remove("last_processed_nonce_" + i).apply();
            ez3.a.getClass();
            ra3.c(new Object[0]);
        }
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        super.onReceive(context, intent);
        if (nt1.g(intent.getAction(), "u.sage.widget.action.REFRESH")) {
            int intExtra = intent.getIntExtra("u.sage.widget.extra.APPWIDGET_ID", 0);
            String stringExtra = intent.getStringExtra("u.sage.widget.extra.REFRESH_NONCE");
            ra3 ra3Var = ez3.a;
            Thread.currentThread().getName();
            ra3Var.getClass();
            ra3.c(new Object[0]);
            if (intExtra != 0) {
                String string = context.getSharedPreferences("widget_preferences", 0).getString("last_processed_nonce_" + intExtra, null);
                if (stringExtra != null && stringExtra.equals(string)) {
                    ra3.m(new Object[0]);
                    return;
                }
                if (c75.K(context, intExtra)) {
                    ra3.m(new Object[0]);
                    return;
                }
                if (stringExtra != null) {
                    context.getSharedPreferences("widget_preferences", 0).edit().putString("last_processed_nonce_" + intExtra, stringExtra).apply();
                }
                AtomicLong atomicLong = b;
                atomicLong.get();
                Thread.currentThread().getName();
                ra3.c(new Object[0]);
                c75.P(context, intExtra, true);
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                appWidgetManager.getClass();
                c(context, appWidgetManager, intExtra);
                String strG = c75.G(context, intExtra);
                if (strG == null) {
                    ra3.m(new Object[0]);
                    c75.P(context, intExtra, false);
                    return;
                }
                atomicLong.get();
                Thread.currentThread().getName();
                ra3.c(new Object[0]);
                Intent intent2 = new Intent(context, (Class<?>) RefreshActionReceiver.class);
                intent2.putExtra("u.sage.widget.extra.SERVICE_TYPE", strG);
                intent2.putExtra("u.sage.widget.extra.APPWIDGET_ID", intExtra);
                context.sendBroadcast(intent2);
            }
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        context.getClass();
        appWidgetManager.getClass();
        iArr.getClass();
        for (int i : iArr) {
            c(context, appWidgetManager, i);
        }
    }
}
