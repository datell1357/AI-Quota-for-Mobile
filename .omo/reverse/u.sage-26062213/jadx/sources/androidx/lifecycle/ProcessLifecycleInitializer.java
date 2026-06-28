package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import defpackage.az2;
import defpackage.bz2;
import defpackage.eh;
import defpackage.f22;
import defpackage.g01;
import defpackage.j22;
import defpackage.k21;
import defpackage.k22;
import defpackage.uq1;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements uq1 {
    @Override // defpackage.uq1
    public final List a() {
        return g01.n;
    }

    @Override // defpackage.uq1
    public final Object b(Context context) {
        context.getClass();
        eh ehVarW = eh.w(context);
        ehVarW.getClass();
        if (!((HashSet) ehVarW.p).contains(ProcessLifecycleInitializer.class)) {
            k21.n("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
            return null;
        }
        if (!k22.a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new j22());
        }
        bz2 bz2Var = bz2.v;
        bz2Var.getClass();
        bz2Var.r = new Handler();
        bz2Var.s.e(f22.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new az2(bz2Var));
        return bz2Var;
    }
}
