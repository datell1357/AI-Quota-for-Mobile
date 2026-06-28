package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dz2 {
    public static final String a = t72.i("ProcessUtils");

    public static final boolean a(Context context, md0 md0Var) {
        String strG;
        Object next;
        Object objInvoke;
        context.getClass();
        md0Var.getClass();
        if (Build.VERSION.SDK_INT >= 28) {
            strG = tf.g();
        } else {
            strG = null;
            try {
                Method declaredMethod = Class.forName("android.app.ActivityThread", false, eg4.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
                declaredMethod.setAccessible(true);
                objInvoke = declaredMethod.invoke(null, null);
                objInvoke.getClass();
            } catch (Throwable th) {
                t72.g().d(a, "Unable to check ActivityThread for processName", th);
            }
            if (objInvoke instanceof String) {
                strG = (String) objInvoke;
            } else {
                int iMyPid = Process.myPid();
                Object systemService = context.getSystemService("activity");
                systemService.getClass();
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    Iterator<T> it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (((ActivityManager.RunningAppProcessInfo) next).pid == iMyPid) {
                            break;
                        }
                    }
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) next;
                    if (runningAppProcessInfo != null) {
                        strG = runningAppProcessInfo.processName;
                    }
                }
            }
        }
        return nt1.g(strG, context.getApplicationInfo().processName);
    }
}
