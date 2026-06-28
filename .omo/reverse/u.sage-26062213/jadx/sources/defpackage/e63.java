package defpackage;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import defpackage.g63;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class e63 {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, f22 f22Var) {
        f22Var.getClass();
        if (activity instanceof p22) {
            h22 lifecycle = ((p22) activity).getLifecycle();
            if (lifecycle instanceof r22) {
                ((r22) lifecycle).e(f22Var);
            }
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            g63.a.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new g63.a());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new g63(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
