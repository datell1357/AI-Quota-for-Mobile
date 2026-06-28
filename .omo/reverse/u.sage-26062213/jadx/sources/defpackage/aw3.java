package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aw3 implements wd3 {
    public static final String s = t72.i("SystemJobScheduler");
    public final Context n;
    public final JobScheduler o;
    public final zv3 p;
    public final WorkDatabase q;
    public final md0 r;

    public aw3(Context context, WorkDatabase workDatabase, md0 md0Var) {
        JobScheduler jobSchedulerA = xu1.a(context);
        zv3 zv3Var = new zv3(context, md0Var.d, md0Var.l);
        this.n = context;
        this.o = jobSchedulerA;
        this.p = zv3Var;
        this.q = workDatabase;
        this.r = md0Var;
    }

    public static void b(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            t72.g().f(s, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    public static ArrayList d(Context context, JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        String str = xu1.a;
        jobScheduler.getClass();
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
            allPendingJobs.getClass();
        } catch (Throwable th) {
            t72.g().f(xu1.a, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static bg4 f(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new bg4(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // defpackage.wd3
    public final void a(String str) {
        ArrayList arrayList;
        Context context = this.n;
        JobScheduler jobScheduler = this.o;
        ArrayList arrayListD = d(context, jobScheduler);
        if (arrayListD == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(2);
            int size = arrayListD.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayListD.get(i);
                i++;
                JobInfo jobInfo = (JobInfo) obj;
                bg4 bg4VarF = f(jobInfo);
                if (bg4VarF != null && str.equals(bg4VarF.a)) {
                    arrayList2.add(Integer.valueOf(jobInfo.getId()));
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size2 = arrayList.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList.get(i2);
            i2++;
            b(jobScheduler, ((Integer) obj2).intValue());
        }
        xv3 xv3VarT = this.q.t();
        xv3VarT.getClass();
        str.getClass();
        gg4.N(xv3VarT.a, false, true, new ao0(str, 11));
    }

    @Override // defpackage.wd3
    public final void c(og4... og4VarArr) {
        int iIntValue;
        md0 md0Var = this.r;
        WorkDatabase workDatabase = this.q;
        workDatabase.getClass();
        final dh1 dh1Var = new dh1();
        dh1Var.n = workDatabase;
        int i = 0;
        for (og4 og4Var : og4VarArr) {
            workDatabase.b();
            try {
                qg4 qg4VarW = workDatabase.w();
                String str = og4Var.a;
                og4 og4VarC = qg4VarW.c(str);
                String str2 = s;
                if (og4VarC == null) {
                    t72.g().j(str2, "Skipping scheduling " + str + " because it's no longer in the DB");
                    workDatabase.p();
                } else if (og4VarC.b != cg4.n) {
                    t72.g().j(str2, "Skipping scheduling " + str + " because it is no longer enqueued");
                    workDatabase.p();
                } else {
                    bg4 bg4VarA = rg4.a(og4Var);
                    int i2 = bg4VarA.b;
                    String str3 = bg4VarA.a;
                    xv3 xv3VarT = workDatabase.t();
                    xv3VarT.getClass();
                    str3.getClass();
                    vv3 vv3Var = (vv3) gg4.N(xv3VarT.a, true, false, new wv3(i2, str3, i));
                    if (vv3Var != null) {
                        iIntValue = vv3Var.c;
                    } else {
                        md0Var.getClass();
                        final int i3 = md0Var.i;
                        Object objN = ((WorkDatabase) dh1Var.n).n(new Callable() { // from class: rn1
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                WorkDatabase workDatabase2 = (WorkDatabase) dh1Var.n;
                                Long lA = workDatabase2.s().a("next_job_scheduler_id");
                                int i4 = 0;
                                int iLongValue = lA != null ? (int) lA.longValue() : 0;
                                int i5 = iLongValue == Integer.MAX_VALUE ? 0 : iLongValue + 1;
                                nx2 nx2VarS = workDatabase2.s();
                                gg4.N(nx2VarS.a, false, true, new m(22, nx2VarS, new mx2("next_job_scheduler_id", Long.valueOf(i5))));
                                if (iLongValue < 0 || iLongValue > i3) {
                                    nx2 nx2VarS2 = workDatabase2.s();
                                    gg4.N(nx2VarS2.a, false, true, new m(22, nx2VarS2, new mx2("next_job_scheduler_id", 1L)));
                                } else {
                                    i4 = iLongValue;
                                }
                                return Integer.valueOf(i4);
                            }
                        });
                        objN.getClass();
                        iIntValue = ((Number) objN).intValue();
                    }
                    if (vv3Var == null) {
                        vv3 vv3Var2 = new vv3(i2, str3, iIntValue);
                        xv3 xv3VarT2 = workDatabase.t();
                        xv3VarT2.getClass();
                        gg4.N(xv3VarT2.a, false, true, new m(27, xv3VarT2, vv3Var2));
                    }
                    g(og4Var, iIntValue);
                    workDatabase.p();
                }
            } finally {
                workDatabase.l();
            }
        }
    }

    @Override // defpackage.wd3
    public final boolean e() {
        return true;
    }

    public final void g(og4 og4Var, int i) {
        int i2;
        List<JobInfo> allPendingJobs;
        String str;
        zv3 zv3Var = this.p;
        zv3Var.getClass();
        lf0 lf0Var = og4Var.j;
        PersistableBundle persistableBundle = new PersistableBundle();
        String str2 = og4Var.a;
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", str2);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", og4Var.t);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", og4Var.c());
        JobInfo.Builder builder = new JobInfo.Builder(i, zv3Var.a);
        boolean z = lf0Var.c;
        Set<kf0> set = lf0Var.i;
        JobInfo.Builder requiresCharging = builder.setRequiresCharging(z);
        boolean z2 = lf0Var.d;
        JobInfo.Builder extras = requiresCharging.setRequiresDeviceIdle(z2).setExtras(persistableBundle);
        NetworkRequest networkRequestA = lf0Var.a();
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 28 || networkRequestA == null) {
            zl2 zl2Var = lf0Var.a;
            if (i3 < 30 || zl2Var != zl2.s) {
                int iOrdinal = zl2Var.ordinal();
                if (iOrdinal == 0) {
                    i2 = 0;
                } else if (iOrdinal != 1) {
                    i2 = 2;
                    if (iOrdinal != 2) {
                        i2 = 3;
                        if (iOrdinal != 3) {
                            i2 = 4;
                            if (iOrdinal != 4 || i3 < 26) {
                                t72.g().c(zv3.d, "API version too low. Cannot convert network type value " + zl2Var);
                                i2 = 1;
                            }
                        }
                    }
                } else {
                    i2 = 1;
                }
                extras.setRequiredNetworkType(i2);
            } else {
                extras.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
            }
        } else {
            extras.getClass();
            extras.setRequiredNetwork(networkRequestA);
        }
        if (!z2) {
            extras.setBackoffCriteria(og4Var.m, og4Var.l == jq.o ? 0 : 1);
        }
        long jA = og4Var.a();
        zv3Var.b.getClass();
        long jMax = Math.max(jA - System.currentTimeMillis(), 0L);
        if (i3 <= 28 || jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!og4Var.q && zv3Var.c) {
            extras.setImportantWhileForeground(true);
        }
        if (!set.isEmpty()) {
            for (kf0 kf0Var : set) {
                extras.addTriggerContentUri(new JobInfo.TriggerContentUri(kf0Var.a, kf0Var.b ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(lf0Var.g);
            extras.setTriggerContentMaxDelay(lf0Var.h);
        }
        extras.setPersisted(false);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            extras.setRequiresBatteryNotLow(lf0Var.e);
            extras.setRequiresStorageNotLow(lf0Var.f);
        }
        boolean z3 = og4Var.k > 0;
        boolean z4 = jMax > 0;
        if (i4 >= 31 && og4Var.q && !z3 && !z4) {
            extras.setExpedited(true);
        }
        if (i4 >= 35 && (str = og4Var.x) != null) {
            extras.setTraceTag(str);
        }
        JobInfo jobInfoBuild = extras.build();
        String str3 = s;
        t72.g().c(str3, "Scheduling work ID " + str2 + "Job ID " + i);
        try {
            if (this.o.schedule(jobInfoBuild) == 0) {
                t72.g().j(str3, "Unable to schedule work ID " + str2);
                if (og4Var.q && og4Var.r == jr2.n) {
                    og4Var.q = false;
                    t72.g().c(str3, "Scheduling a non-expedited job (work ID " + str2 + ")");
                    g(og4Var, i);
                }
            }
        } catch (IllegalStateException e) {
            String str4 = xu1.a;
            Context context = this.n;
            context.getClass();
            WorkDatabase workDatabase = this.q;
            workDatabase.getClass();
            md0 md0Var = this.r;
            md0Var.getClass();
            int i5 = Build.VERSION.SDK_INT;
            int i6 = i5 >= 31 ? 150 : 100;
            int size = ((List) gg4.N(workDatabase.w().a, true, false, new ba4(13))).size();
            String strN0 = "<faulty JobScheduler failed to getPendingJobs>";
            if (i5 >= 34) {
                JobScheduler jobSchedulerA = xu1.a(context);
                try {
                    allPendingJobs = jobSchedulerA.getAllPendingJobs();
                    allPendingJobs.getClass();
                } catch (Throwable th) {
                    t72.g().f(xu1.a, "getAllPendingJobs() is not reliable on this device.", th);
                    allPendingJobs = null;
                }
                if (allPendingJobs != null) {
                    ArrayList arrayListD = d(context, jobSchedulerA);
                    int size2 = arrayListD != null ? allPendingJobs.size() - arrayListD.size() : 0;
                    String str5 = size2 == 0 ? null : size2 + " of which are not owned by WorkManager";
                    Object systemService = context.getSystemService("jobscheduler");
                    systemService.getClass();
                    ArrayList arrayListD2 = d(context, (JobScheduler) systemService);
                    int size3 = arrayListD2 != null ? arrayListD2.size() : 0;
                    strN0 = o70.n0(ji.X(new String[]{allPendingJobs.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str5, size3 != 0 ? size3 + " from WorkManager in the default namespace" : null}), ",\n", null, null, null, 62);
                }
            } else {
                ArrayList arrayListD3 = d(context, xu1.a(context));
                if (arrayListD3 != null) {
                    strN0 = arrayListD3.size() + " jobs from WorkManager";
                }
            }
            String str6 = "JobScheduler " + i6 + " job limit exceeded.\nIn JobScheduler there are " + strN0 + ".\nThere are " + size + " jobs tracked by WorkManager's database;\nthe Configuration limit is " + md0Var.k + '.';
            t72.g().e(str3, str6);
            throw new IllegalStateException(str6, e);
        } catch (Throwable th2) {
            t72.g().f(str3, "Unable to schedule " + og4Var, th2);
        }
    }
}
