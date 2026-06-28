package u.sage.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import defpackage.bu3;
import defpackage.ca;
import defpackage.dh0;
import defpackage.di0;
import defpackage.dm0;
import defpackage.ez3;
import defpackage.f61;
import defpackage.fj0;
import defpackage.i70;
import defpackage.ij0;
import defpackage.jg1;
import defpackage.k30;
import defpackage.lp0;
import defpackage.nt1;
import defpackage.og1;
import defpackage.p10;
import defpackage.pf;
import defpackage.qk0;
import defpackage.ra3;
import defpackage.v50;
import defpackage.vl0;
import defpackage.wi3;
import defpackage.xi3;
import defpackage.yh0;
import defpackage.zp0;
import defpackage.zu0;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceRestartReceiver extends BroadcastReceiver {
    public volatile boolean a = false;
    public final Object b = new Object();
    public v50 c;
    public yh0 d;
    public pf e;
    public jg1 f;
    public i70 g;

    public final void a(Context context, Intent intent) {
        if (this.a) {
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.a) {
                    ComponentCallbacks2 componentCallbacks2T = k30.t(context.getApplicationContext());
                    boolean z = componentCallbacks2T instanceof og1;
                    Class<?> cls = componentCallbacks2T.getClass();
                    if (!z) {
                        throw new IllegalArgumentException("Hilt BroadcastReceiver must be attached to an @HiltAndroidApp Application. Found: " + cls);
                    }
                    ((vl0) ((xi3) ((og1) componentCallbacks2T).a())).a(this);
                    this.a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        a(context, intent);
        context.getClass();
        intent.getClass();
        String action = intent.getAction();
        if (nt1.g(action, "android.intent.action.BOOT_COMPLETED") || nt1.g(action, "android.intent.action.MY_PACKAGE_REPLACED")) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
            f61 f61VarA = f61.a();
            String strU = di0.u("ServiceRestartReceiver triggered by ", action);
            ij0 ij0Var = f61VarA.a;
            ((qk0) ij0Var.o.o).b(new fj0(ij0Var, System.currentTimeMillis() - ij0Var.d, strU));
            zp0 zp0Var = zu0.a;
            lp0 lp0Var = lp0.p;
            bu3 bu3VarF = k30.f();
            lp0Var.getClass();
            ca.y(dm0.c(ca.B(lp0Var, bu3VarF)), null, null, new p10(context, (dh0) null), 3);
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            bu3 bu3VarF2 = k30.f();
            lp0Var.getClass();
            ca.y(dm0.c(ca.B(lp0Var, bu3VarF2)), null, null, new wi3(pendingResultGoAsync, this, context, null), 3);
        }
    }
}
