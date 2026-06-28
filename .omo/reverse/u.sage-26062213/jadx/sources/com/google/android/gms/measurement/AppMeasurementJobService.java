package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.a25;
import defpackage.i63;
import defpackage.pb5;
import defpackage.pr3;
import defpackage.ra3;
import defpackage.tx4;
import defpackage.u95;
import defpackage.uy4;
import defpackage.w85;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements u95 {
    public ra3 n;

    @Override // defpackage.u95
    public final boolean a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.u95
    public final void c(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    public final ra3 d() {
        if (this.n == null) {
            this.n = new ra3(this);
        }
        return this.n;
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        JobParameters jobParameters2;
        ra3 ra3VarD = d();
        Service service = (Service) ra3VarD.o;
        String string = jobParameters.getExtras().getString("action");
        Log.v("FA", "onStartJob received action: ".concat(String.valueOf(string)));
        if (Objects.equals(string, "com.google.android.gms.measurement.UPLOAD")) {
            String str = (String) Preconditions.checkNotNull(string);
            pb5 pb5VarC = pb5.C(service);
            a25 a25VarC = pb5VarC.c();
            pr3 pr3Var = pb5VarC.l.c;
            a25VarC.n.b(str, "Local AppMeasurementJobService called. action");
            jobParameters2 = jobParameters;
            pb5VarC.d().E(new w85(ra3VarD, pb5VarC, new i63(ra3VarD, a25VarC, jobParameters2, 10, false)));
        } else {
            jobParameters2 = jobParameters;
        }
        if (Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            uy4 uy4VarE = uy4.e(service, null);
            w85 w85Var = new w85(4, ra3VarD, jobParameters2, false);
            uy4VarE.getClass();
            uy4VarE.c(new tx4(uy4VarE, w85Var, 1));
        }
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
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

    @Override // defpackage.u95
    public final void b(Intent intent) {
    }
}
