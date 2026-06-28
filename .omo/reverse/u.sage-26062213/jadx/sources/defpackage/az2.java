package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class az2 extends b01 {
    final /* synthetic */ bz2 this$0;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class a extends b01 {
        final /* synthetic */ bz2 this$0;

        public a(bz2 bz2Var) {
            this.this$0 = bz2Var;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            activity.getClass();
            this.this$0.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            activity.getClass();
            bz2 bz2Var = this.this$0;
            int i = bz2Var.n + 1;
            bz2Var.n = i;
            if (i == 1 && bz2Var.q) {
                bz2Var.s.e(f22.ON_START);
                bz2Var.q = false;
            }
        }
    }

    public az2(bz2 bz2Var) {
        this.this$0 = bz2Var;
    }

    @Override // defpackage.b01, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        if (Build.VERSION.SDK_INT < 29) {
            int i = g63.o;
            Fragment fragmentFindFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            fragmentFindFragmentByTag.getClass();
            ((g63) fragmentFindFragmentByTag).n = this.this$0.f37u;
        }
    }

    @Override // defpackage.b01, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        activity.getClass();
        bz2 bz2Var = this.this$0;
        int i = bz2Var.o - 1;
        bz2Var.o = i;
        if (i == 0) {
            Handler handler = bz2Var.r;
            handler.getClass();
            handler.postDelayed(bz2Var.t, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        vf.k(activity, new a(this.this$0));
    }

    @Override // defpackage.b01, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        activity.getClass();
        bz2 bz2Var = this.this$0;
        int i = bz2Var.n - 1;
        bz2Var.n = i;
        if (i == 0 && bz2Var.p) {
            bz2Var.s.e(f22.ON_STOP);
            bz2Var.q = true;
        }
    }
}
