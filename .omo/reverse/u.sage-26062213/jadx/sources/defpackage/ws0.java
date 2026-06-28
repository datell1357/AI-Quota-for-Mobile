package defpackage;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import u.sage.ClaudeUsageService;
import u.sage.CopilotUsageService;
import u.sage.R;
import u.sage.widget.UsageWidgetConfigActivity;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ws0 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Context o;

    public /* synthetic */ ws0(Context context, int i) {
        this.n = i;
        this.o = context;
    }

    @Override // defpackage.ne1
    public final Object a() throws IOException {
        int i = this.n;
        t64 t64Var = t64.a;
        Context context = this.o;
        switch (i) {
            case 0:
                on4.g(10L, context);
                return t64Var;
            case 1:
                on4.g(60L, context);
                return t64Var;
            case 2:
                on4.i(context, ClaudeUsageService.class);
                return t64Var;
            case 3:
                on4.i(context, CopilotUsageService.class);
                return t64Var;
            case 4:
                File fileQ = on4.q(context, "firebaseSessions/sessionConfigsDataStore.data");
                mj1.s(fileQ);
                return fileQ;
            case 5:
                File fileQ2 = on4.q(context, "firebaseSessions/sessionDataStore.data");
                mj1.s(fileQ2);
                return fileQ2;
            case 6:
                return is0.w(context);
            default:
                context.getClass();
                boolean z = false;
                if (Build.VERSION.SDK_INT < 26 ? false : AppWidgetManager.getInstance(context).isRequestPinAppWidgetSupported()) {
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                    ComponentName componentName = new ComponentName(context, (Class<?>) UsageWidgetProvider.class);
                    Intent intent = new Intent(context, (Class<?>) UsageWidgetConfigActivity.class);
                    intent.addFlags(268435456);
                    try {
                        boolean zRequestPinAppWidget = appWidgetManager.requestPinAppWidget(componentName, null, PendingIntent.getActivity(context, 0, intent, 167772160));
                        ez3.a.getClass();
                        ra3.c(new Object[0]);
                        z = zRequestPinAppWidget;
                    } catch (Exception unused) {
                        ez3.a.getClass();
                        ra3.g(new Object[0]);
                    }
                } else {
                    ez3.a.getClass();
                    ra3.m(new Object[0]);
                }
                if (!z) {
                    Toast.makeText(context, context.getString(R.string.settings_unable_to_add_widget), 1).show();
                }
                return t64Var;
        }
    }
}
