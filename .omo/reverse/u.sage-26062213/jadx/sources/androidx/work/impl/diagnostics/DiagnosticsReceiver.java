package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import defpackage.eg4;
import defpackage.np2;
import defpackage.op2;
import defpackage.t72;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    public static final String a = t72.i("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        t72 t72VarG = t72.g();
        String str = a;
        t72VarG.c(str, "Requesting diagnostics");
        try {
            context.getClass();
            eg4.c(context).a((op2) new np2(DiagnosticsWorker.class, 0).a());
        } catch (IllegalStateException e) {
            t72.g().f(str, "WorkManager is not initialized", e);
        }
    }
}
