package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import android.view.Display;
import androidx.work.WorkerParameters;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w13 implements mx, gi0, m02, aa0, l83, oi3 {
    public final /* synthetic */ int n;
    public static final w13 o = new w13(1);
    public static final w13 p = new w13(2);
    public static final w13 q = new w13(3);
    public static final w13 r = new w13(4);
    public static final /* synthetic */ w13 s = new w13(5);
    public static final /* synthetic */ w13 t = new w13(6);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final w13 f388u = new w13(7);
    public static final w13 v = new w13(8);
    public static final w13 w = new w13(9);
    public static final w13 x = new w13(10);
    public static final w13 y = new w13(11);
    public static final w13 z = new w13(12);
    public static final w13 A = new w13(13);
    public static final w13 B = new w13(14);
    public static final w13 C = new w13(15);
    public static final w13 D = new w13(16);
    public static final w13 E = new w13(17);
    public static final /* synthetic */ w13 F = new w13(18);
    public static final w13 G = new w13(19);
    public static final w13 H = new w13(20);
    public static final /* synthetic */ w13 I = new w13(21);
    public static final w13 J = new w13(22);
    public static final w13 K = new w13(23);
    public static final tq2 L = new tq2(1);
    public static final tq2 M = new tq2(0);
    public static final /* synthetic */ w13 N = new w13(25);
    public static final w13 O = new w13(26);
    public static final w13 P = new w13(27);
    public static final w13 Q = new w13(28);
    public static final dj3 R = new dj3(null, null, null, null, null);
    public static final w13 S = new w13(29);

    public /* synthetic */ w13(int i) {
        this.n = i;
    }

    public static ArrayList h(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        context.getClass();
        int i = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            runningAppProcesses = g01.n;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : runningAppProcesses) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayList.get(i3);
            i3++;
            if (((ActivityManager.RunningAppProcessInfo) obj2).uid == i) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList(p70.a0(arrayList2, 10));
        int size2 = arrayList2.size();
        while (i2 < size2) {
            Object obj3 = arrayList2.get(i2);
            i2++;
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj3;
            mn mnVar = new mn();
            String str2 = runningAppProcessInfo.processName;
            if (str2 == null) {
                q73.r("Null processName");
                return null;
            }
            mnVar.a = str2;
            mnVar.b = runningAppProcessInfo.pid;
            byte b = (byte) (mnVar.e | 1);
            mnVar.c = runningAppProcessInfo.importance;
            mnVar.e = (byte) (b | 2);
            mnVar.d = nt1.g(str2, str);
            mnVar.e = (byte) (mnVar.e | 4);
            arrayList3.add(mnVar.a());
        }
        return arrayList3;
    }

    public boolean b(int i) {
        return 4 <= i || Log.isLoggable("FirebaseCrashlytics", i);
    }

    @Override // defpackage.oi3
    public /* bridge */ /* synthetic */ Object c() {
        return R;
    }

    public v42 d(Context context, String str, WorkerParameters workerParameters) {
        context.getClass();
        str.getClass();
        workerParameters.getClass();
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str).asSubclass(v42.class);
            clsAsSubclass.getClass();
            try {
                Object objNewInstance = clsAsSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                objNewInstance.getClass();
                v42 v42Var = (v42) objNewInstance;
                if (!v42Var.d) {
                    return v42Var;
                }
                throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
            } catch (Throwable th) {
                t72.g().f(vg4.a, "Could not instantiate ".concat(str), th);
                throw th;
            }
        } catch (Throwable th2) {
            t72.g().f(vg4.a, "Invalid class: ".concat(str), th2);
            throw th2;
        }
    }

    public void e(String str) {
        if (b(3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    @Override // defpackage.mx
    public Rect f(Activity activity) throws Exception {
        switch (this.n) {
            case 2:
                Rect rect = new Rect();
                Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
                defaultDisplay.getRectSize(rect);
                if (!activity.isInMultiWindowMode()) {
                    Point point = new Point();
                    defaultDisplay.getRealSize(point);
                    Resources resources = activity.getResources();
                    int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    int i = rect.bottom + dimensionPixelSize;
                    if (i == point.y) {
                        rect.bottom = i;
                    } else {
                        int i2 = rect.right + dimensionPixelSize;
                        if (i2 == point.x) {
                            rect.right = i2;
                        }
                    }
                }
                return rect;
            default:
                Configuration configuration = activity.getResources().getConfiguration();
                try {
                    Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(configuration);
                    Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", null).invoke(obj, null);
                    objInvoke.getClass();
                    return new Rect((Rect) objInvoke);
                } catch (Exception e) {
                    if (!(e instanceof NoSuchFieldException) && !(e instanceof NoSuchMethodException) && !(e instanceof IllegalAccessException) && !(e instanceof InvocationTargetException)) {
                        throw e;
                    }
                    mx.a.getClass();
                    Log.w(lx.b, e);
                    return mj1.D.f(activity);
                }
        }
    }

    public boolean g(Object obj, Object obj2) {
        switch (this.n) {
            case 22:
                return false;
            case 27:
                return obj == obj2;
            default:
                return nt1.g(obj, obj2);
        }
    }

    @Override // defpackage.oi3
    public void i(Object obj, l64 l64Var) throws IOException {
        byte[] bytes = fv1.d.b(dj3.Companion.serializer(), (dj3) obj).getBytes(k40.a);
        bytes.getClass();
        l64Var.n.write(bytes);
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        switch (this.n) {
            case 14:
                Object objL = hgVar.l(new z03(a32.class, Executor.class));
                objL.getClass();
                return ht4.p((Executor) objL);
            default:
                Object objL2 = hgVar.l(new z03(i64.class, Executor.class));
                objL2.getClass();
                return ht4.p((Executor) objL2);
        }
    }

    @Override // defpackage.oi3
    public Object k(FileInputStream fileInputStream) throws xi0 {
        try {
            fv1 fv1Var = fv1.d;
            String str = new String(qn0.D(fileInputStream), k40.a);
            fv1Var.getClass();
            return (dj3) fv1Var.a(dj3.Companion.serializer(), str);
        } catch (Exception e) {
            throw new xi0("Cannot parse session configs", e);
        }
    }

    public zj0 l(Context context) {
        Object obj;
        String processName;
        context.getClass();
        int iMyPid = Process.myPid();
        ArrayList arrayListH = h(context);
        int size = arrayListH.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayListH.get(i);
            i++;
            if (((nn) ((zj0) obj)).b == iMyPid) {
                break;
            }
        }
        zj0 zj0Var = (zj0) obj;
        if (zj0Var != null) {
            return zj0Var;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 33) {
            processName = Process.myProcessName();
            processName.getClass();
        } else if (i2 < 28 || (processName = Application.getProcessName()) == null) {
            processName = "";
        }
        mn mnVar = new mn();
        mnVar.a = processName;
        mnVar.b = iMyPid;
        byte b = (byte) (mnVar.e | 1);
        mnVar.c = 0;
        mnVar.d = false;
        mnVar.e = (byte) (((byte) (b | 2)) | 4);
        return mnVar.a();
    }

    public void m(String str) {
        if (b(2)) {
            Log.v("FirebaseCrashlytics", str, null);
        }
    }

    public void n(String str, Exception exc) {
        if (b(5)) {
            Log.w("FirebaseCrashlytics", str, exc);
        }
    }

    public String toString() {
        switch (this.n) {
            case 22:
                return "NeverEqualPolicy";
            case 27:
                return "ReferentialEqualityPolicy";
            case 29:
                return "StructuralEqualityPolicy";
            default:
                return super.toString();
        }
    }

    @Override // defpackage.m02
    public void a() {
    }

    @Override // defpackage.m02
    public void cancel() {
    }
}
