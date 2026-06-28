package u.sage.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.bh0;
import defpackage.bu3;
import defpackage.ca;
import defpackage.dm0;
import defpackage.ez3;
import defpackage.k30;
import defpackage.k43;
import defpackage.lp0;
import defpackage.ra3;
import defpackage.y84;
import defpackage.zp0;
import defpackage.zu0;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class RefreshActionReceiver extends BroadcastReceiver {
    public final bh0 a;

    public RefreshActionReceiver() {
        bu3 bu3VarF = k30.f();
        zp0 zp0Var = zu0.a;
        this.a = dm0.c(ca.B(bu3VarF, lp0.p));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        String stringExtra = intent.getStringExtra("u.sage.widget.extra.SERVICE_TYPE");
        if (stringExtra == null) {
            return;
        }
        int intExtra = intent.getIntExtra("u.sage.widget.extra.APPWIDGET_ID", 0);
        try {
            y84 y84VarValueOf = y84.valueOf(stringExtra);
            ra3 ra3Var = ez3.a;
            Thread.currentThread().getName();
            ra3Var.getClass();
            ra3.c(new Object[0]);
            ca.y(this.a, null, null, new k43(stringExtra, System.currentTimeMillis(), context, y84VarValueOf, intExtra, goAsync(), null), 3);
        } catch (IllegalArgumentException unused) {
        }
    }
}
