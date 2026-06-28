package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.PersistableBundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s75 extends j05 {
    public JobScheduler c;

    public final e55 A() {
        ServiceInfo serviceInfo;
        r45 r45Var = (r45) this.a;
        w();
        v();
        if (this.c == null) {
            return e55.f79u;
        }
        Boolean boolI = r45Var.d.I("google_analytics_sgtm_upload_enabled");
        if (!(boolI == null ? false : boolI.booleanValue())) {
            return e55.v;
        }
        if (r45Var.q().j < 119000) {
            return e55.t;
        }
        Context context = r45Var.a;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) != null) {
                if (serviceInfo.enabled) {
                    return !r45Var.o().C() ? e55.s : e55.p;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return e55.q;
    }

    @Override // defpackage.j05
    public final boolean y() {
        return true;
    }

    public final void z(long j) {
        r45 r45Var = (r45) this.a;
        w();
        v();
        JobScheduler jobScheduler = this.c;
        if (jobScheduler != null && jobScheduler.getPendingJob("measurement-client".concat(String.valueOf(r45Var.a.getPackageName())).hashCode()) != null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.a("[sgtm] There's an existing pending job, skip this schedule.");
            return;
        }
        e55 e55VarA = A();
        if (e55VarA != e55.p) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.n.b(e55VarA.name(), "[sgtm] Not eligible for Scion upload");
            return;
        }
        a25 a25Var3 = r45Var.f;
        r45.l(a25Var3);
        a25Var3.n.b(Long.valueOf(j), "[sgtm] Scheduling Scion upload, millis");
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.SCION_UPLOAD");
        int iSchedule = ((JobScheduler) Preconditions.checkNotNull(this.c)).schedule(new JobInfo.Builder("measurement-client".concat(String.valueOf(r45Var.a.getPackageName())).hashCode(), new ComponentName(r45Var.a, "com.google.android.gms.measurement.AppMeasurementJobService")).setRequiredNetworkType(1).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build());
        a25 a25Var4 = r45Var.f;
        r45.l(a25Var4);
        a25Var4.n.b(iSchedule == 1 ? "SUCCESS" : "FAILURE", "[sgtm] Scion upload job scheduled with result");
    }
}
