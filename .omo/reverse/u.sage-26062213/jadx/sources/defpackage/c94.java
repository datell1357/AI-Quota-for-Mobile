package defpackage;

import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import java.util.List;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c94 implements RemoteViewsService.RemoteViewsFactory {
    public final Context a;
    public final Intent b;
    public final String c;
    public d84 d;
    public y84 e;

    public c94(Context context, Intent intent) {
        this.a = context;
        this.b = intent;
        this.c = intent.getStringExtra("u.sage.widget.extra.SERVICE_TYPE");
        intent.getIntExtra("appWidgetId", 0);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final int getCount() {
        List listC;
        d84 d84Var = this.d;
        if (d84Var == null || (listC = d84Var.c()) == null) {
            return 0;
        }
        return listC.size();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final RemoteViews getLoadingView() {
        return null;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final RemoteViews getViewAt(int i) {
        y84 y84Var = this.e;
        Context context = this.a;
        if (y84Var == null) {
            return new RemoteViews(context.getPackageName(), R.layout.widget_limit_item);
        }
        d84 d84Var = this.d;
        if (d84Var == null) {
            return new RemoteViews(context.getPackageName(), R.layout.widget_limit_item);
        }
        p84 p84Var = (p84) o70.j0(i, d84Var.c());
        if (p84Var == null) {
            return new RemoteViews(context.getPackageName(), R.layout.widget_limit_item);
        }
        Intent intent = this.b;
        float floatExtra = intent.getFloatExtra("u.sage.widget.extra.WIDGET_HEIGHT", -1.0f);
        float floatExtra2 = intent.getFloatExtra("u.sage.widget.extra.WIDGET_WIDTH", -1.0f);
        int i2 = floatExtra > 0.0f ? (int) floatExtra : 110;
        int i3 = floatExtra2 > 0.0f ? (int) floatExtra2 : 110;
        int size = d84Var.c().size();
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        return c75.m(context, y84Var, p84Var, i2, i3, size, d84Var.b());
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onCreate() {
        y84 y84VarValueOf = null;
        String str = this.c;
        if (str != null) {
            try {
                y84VarValueOf = y84.valueOf(str);
            } catch (Exception unused) {
            }
        }
        this.e = y84VarValueOf;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onDataSetChanged() throws Throwable {
        y84 y84Var = this.e;
        if (y84Var == null) {
            return;
        }
        Thread.currentThread().getName();
        this.b.getFloatExtra("u.sage.widget.extra.WIDGET_HEIGHT", -1.0f);
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        ca.H(d01.n, new r4(this, y84Var, null));
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public final void onDestroy() {
        this.d = null;
    }
}
