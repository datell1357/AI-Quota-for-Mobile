package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import defpackage.bg4;
import defpackage.di0;
import defpackage.eg4;
import defpackage.ez2;
import defpackage.f31;
import defpackage.k21;
import defpackage.ls3;
import defpackage.nr3;
import defpackage.pc4;
import defpackage.t72;
import defpackage.tf;
import defpackage.yl0;
import defpackage.zf;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements f31 {
    public static final String r = t72.i("SystemJobService");
    public eg4 n;
    public final HashMap o = new HashMap();
    public final yl0 p = new yl0(3);
    public pc4 q;

    public static void a(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        k21.n(di0.v("Cannot invoke ", str, " on a background thread"));
    }

    public static bg4 b(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new bg4(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // defpackage.f31
    public final void d(bg4 bg4Var, boolean z) {
        a("onExecuted");
        t72.g().c(r, bg4Var.a + " executed on JobScheduler");
        JobParameters jobParameters = (JobParameters) this.o.remove(bg4Var);
        this.p.b(bg4Var);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            eg4 eg4VarC = eg4.c(getApplicationContext());
            this.n = eg4VarC;
            ez2 ez2Var = eg4VarC.f;
            this.q = new pc4(ez2Var, eg4VarC.d);
            ez2Var.a(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
            t72.g().j(r, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        eg4 eg4Var = this.n;
        if (eg4Var != null) {
            ez2 ez2Var = eg4Var.f;
            synchronized (ez2Var.k) {
                ez2Var.j.remove(this);
            }
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        a("onStartJob");
        eg4 eg4Var = this.n;
        String str = r;
        if (eg4Var == null) {
            t72.g().c(str, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        bg4 bg4VarB = b(jobParameters);
        if (bg4VarB == null) {
            t72.g().e(str, "WorkSpec id not found!");
            return false;
        }
        HashMap map = this.o;
        if (map.containsKey(bg4VarB)) {
            t72.g().c(str, "Job is already being executed by SystemJobService: " + bg4VarB);
            return false;
        }
        t72.g().c(str, "onStartJob for " + bg4VarB);
        map.put(bg4VarB, jobParameters);
        ls3 ls3Var = new ls3();
        if (jobParameters.getTriggeredContentUris() != null) {
            Arrays.asList(jobParameters.getTriggeredContentUris());
        }
        if (jobParameters.getTriggeredContentAuthorities() != null) {
            Arrays.asList(jobParameters.getTriggeredContentAuthorities());
        }
        if (Build.VERSION.SDK_INT >= 28) {
            tf.f(jobParameters);
        }
        this.q.c(this.p.e(bg4VarB), ls3Var);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean zContains;
        a("onStopJob");
        if (this.n == null) {
            t72.g().c(r, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        bg4 bg4VarB = b(jobParameters);
        if (bg4VarB == null) {
            t72.g().e(r, "WorkSpec id not found!");
            return false;
        }
        t72.g().c(r, "onStopJob for " + bg4VarB);
        this.o.remove(bg4VarB);
        nr3 nr3VarB = this.p.b(bg4VarB);
        if (nr3VarB != null) {
            int iD = Build.VERSION.SDK_INT >= 31 ? zf.d(jobParameters) : -512;
            pc4 pc4Var = this.q;
            pc4Var.getClass();
            pc4Var.d(nr3VarB, iD);
        }
        ez2 ez2Var = this.n.f;
        String str = bg4VarB.a;
        synchronized (ez2Var.k) {
            zContains = ez2Var.i.contains(str);
        }
        return !zContains;
    }
}
