package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import defpackage.ed0;
import defpackage.eh;
import defpackage.h7;
import defpackage.hp;
import defpackage.sy2;
import defpackage.v74;
import defpackage.y14;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    public static final /* synthetic */ int n = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        y14.b(getApplicationContext());
        eh ehVarA = hp.a();
        ehVarA.G(string);
        ehVarA.q = sy2.b(i);
        if (string2 != null) {
            ehVarA.p = Base64.decode(string2, 0);
        }
        ed0 ed0Var = y14.a().d;
        ((Executor) ed0Var.c).execute(new v74(ed0Var, ehVarA.k(), i2, new h7(14, this, jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
