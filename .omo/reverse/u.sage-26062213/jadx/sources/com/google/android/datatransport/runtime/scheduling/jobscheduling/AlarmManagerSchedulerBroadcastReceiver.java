package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import defpackage.ed0;
import defpackage.eh;
import defpackage.hp;
import defpackage.l7;
import defpackage.sy2;
import defpackage.v74;
import defpackage.y14;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        y14.b(context);
        eh ehVarA = hp.a();
        ehVarA.G(queryParameter);
        ehVarA.q = sy2.b(iIntValue);
        if (queryParameter2 != null) {
            ehVarA.p = Base64.decode(queryParameter2, 0);
        }
        ed0 ed0Var = y14.a().d;
        ((Executor) ed0Var.c).execute(new v74(ed0Var, ehVarA.k(), i, new l7(0)));
    }
}
