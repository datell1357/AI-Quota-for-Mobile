package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qa5 extends ab5 {
    public final AlarmManager d;
    public ea5 e;
    public Integer f;

    public qa5(pb5 pb5Var) {
        super(pb5Var);
        this.d = (AlarmManager) ((r45) this.a).a.getSystemService("alarm");
    }

    public final void A() {
        w();
        r45 r45Var = (r45) this.a;
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.n.a("Unscheduling upload");
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            Context context = r45Var.a;
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), vv4.a));
        }
        z().c();
        B();
    }

    public final void B() {
        JobScheduler jobScheduler = (JobScheduler) ((r45) this.a).a.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(C());
        }
    }

    public final int C() {
        if (this.f == null) {
            this.f = Integer.valueOf("measurement".concat(String.valueOf(((r45) this.a).a.getPackageName())).hashCode());
        }
        return this.f.intValue();
    }

    @Override // defpackage.ab5
    public final void y() {
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            Context context = ((r45) this.a).a;
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), vv4.a));
        }
        B();
    }

    public final et4 z() {
        if (this.e == null) {
            this.e = new ea5(this, this.b.l, 1);
        }
        return this.e;
    }
}
