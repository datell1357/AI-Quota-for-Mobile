package com.google.android.gms.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import defpackage.a25;
import defpackage.oc4;
import defpackage.r45;
import defpackage.ra3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementReceiver extends oc4 {
    public ra3 c;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.c == null) {
            this.c = new ra3(this);
        }
        ra3 ra3Var = this.c;
        ra3Var.getClass();
        a25 a25Var = r45.r(context, null, null, null).f;
        r45.l(a25Var);
        if (intent == null) {
            a25Var.i.a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        a25Var.n.b(action, "Local receiver got");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                a25Var.i.a("Install Referrer Broadcasts are deprecated");
                return;
            }
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        a25Var.n.a("Starting wakeful intent.");
        ((AppMeasurementReceiver) ra3Var.o).getClass();
        SparseArray sparseArray = oc4.a;
        synchronized (sparseArray) {
            try {
                int i = oc4.b;
                int i2 = i + 1;
                oc4.b = i2;
                if (i2 <= 0) {
                    oc4.b = 1;
                }
                className.putExtra("androidx.contentpager.content.wakelockid", i);
                ComponentName componentNameStartService = context.startService(className);
                if (componentNameStartService == null) {
                    return;
                }
                PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + componentNameStartService.flattenToShortString());
                wakeLockNewWakeLock.setReferenceCounted(false);
                wakeLockNewWakeLock.acquire(60000L);
                sparseArray.put(i, wakeLockNewWakeLock);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
