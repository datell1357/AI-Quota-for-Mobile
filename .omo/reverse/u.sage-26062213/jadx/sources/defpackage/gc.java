package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gc implements Application.ActivityLifecycleCallbacks {
    public final double n;
    public final /* synthetic */ ic o;

    public gc(ic icVar, o23 o23Var) {
        this.o = icVar;
        m23 m23Var = o23Var.a;
        i3 i3Var = eo1.a;
        Object obj = m23Var.b.n.a.get(eo1.d);
        this.n = ((Number) (obj == null ? Double.valueOf(1.0d) : obj)).doubleValue();
    }

    public final void a(Context context) {
        long j;
        double d = this.n;
        if (d == 1.0d) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
        ic icVar = this.o;
        o23 o23Var = (o23) ((WeakReference) icVar.b).get();
        if (o23Var == null) {
            icVar.e();
            return;
        }
        s23 s23VarC = o23Var.c();
        if (s23VarC != null) {
            synchronized (s23VarC.c) {
                j = s23VarC.a.a;
            }
            s23VarC.a((long) (d * j));
        }
    }

    public final void b(Context context) {
        long j;
        if (this.n == 1.0d) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
        ic icVar = this.o;
        o23 o23Var = (o23) ((WeakReference) icVar.b).get();
        if (o23Var == null) {
            icVar.e();
            return;
        }
        s23 s23VarC = o23Var.c();
        if (s23VarC != null) {
            synchronized (s23VarC.c) {
                j = s23VarC.a.a;
            }
            s23VarC.a(j);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
