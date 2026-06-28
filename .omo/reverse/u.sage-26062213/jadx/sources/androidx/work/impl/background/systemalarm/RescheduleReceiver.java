package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.eg4;
import defpackage.t72;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    public static final String a = t72.i("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        t72.g().c(a, "Received intent " + intent);
        try {
            eg4 eg4VarC = eg4.c(context);
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            synchronized (eg4.m) {
                try {
                    BroadcastReceiver.PendingResult pendingResult = eg4VarC.i;
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    eg4VarC.i = pendingResultGoAsync;
                    if (eg4VarC.h) {
                        pendingResultGoAsync.finish();
                        eg4VarC.i = null;
                    }
                } finally {
                }
            }
        } catch (IllegalStateException e) {
            t72.g().f(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
