package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import defpackage.a25;
import defpackage.o55;
import defpackage.oc4;
import defpackage.pb5;
import defpackage.q75;
import defpackage.r45;
import defpackage.ra3;
import defpackage.u95;
import defpackage.w85;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementService extends Service implements u95 {
    public ra3 n;

    @Override // defpackage.u95
    public final boolean a(int i) {
        return stopSelfResult(i);
    }

    @Override // defpackage.u95
    public final void b(Intent intent) {
        SparseArray sparseArray = oc4.a;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return;
        }
        SparseArray sparseArray2 = oc4.a;
        synchronized (sparseArray2) {
            try {
                PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) sparseArray2.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    sparseArray2.remove(intExtra);
                } else {
                    Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.u95
    public final void c(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    public final ra3 d() {
        if (this.n == null) {
            this.n = new ra3(this);
        }
        return this.n;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        ra3 ra3VarD = d();
        ra3VarD.getClass();
        if (intent == null) {
            Log.e("FA", "onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new o55(pb5.C((Service) ra3VarD.o));
        }
        Log.w("FA", "onBind received unknown action: ".concat(String.valueOf(action)));
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Log.v("FA", ((Service) d().o).getClass().getSimpleName().concat(" is starting up."));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        Log.v("FA", ((Service) d().o).getClass().getSimpleName().concat(" is shutting down."));
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        d();
        if (intent == null) {
            Log.e("FA", "onRebind called with null intent");
        } else {
            Log.v("FA", "onRebind called. action: ".concat(String.valueOf(intent.getAction())));
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        ra3 ra3VarD = d();
        if (intent == null) {
            ra3VarD.getClass();
            Log.w("FA", "AppMeasurementService started with null intent");
            return 2;
        }
        Service service = (Service) ra3VarD.o;
        a25 a25Var = r45.r(service, null, null, null).f;
        r45.l(a25Var);
        String action = intent.getAction();
        a25Var.n.c(Integer.valueOf(i2), action, "Local AppMeasurementService called. startId, action");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        q75 q75Var = new q75(ra3VarD, i2, a25Var, intent);
        pb5 pb5VarC = pb5.C(service);
        pb5VarC.d().E(new w85(ra3VarD, pb5VarC, q75Var));
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        d();
        if (intent == null) {
            Log.e("FA", "onUnbind called with null intent");
            return true;
        }
        Log.v("FA", "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction())));
        return true;
    }
}
