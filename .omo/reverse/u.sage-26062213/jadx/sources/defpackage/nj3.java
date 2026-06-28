package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nj3 {
    public static final nj3 a = new nj3();
    public static final dd1 b;

    static {
        tv1 tv1Var = new tv1();
        tv1Var.a(mj3.class, fm.a);
        tv1Var.a(wj3.class, gm.a);
        tv1Var.a(fm0.class, dm.a);
        tv1Var.a(jh.class, cm.a);
        tv1Var.a(u8.class, bm.a);
        tv1Var.a(zy2.class, em.a);
        tv1Var.d = true;
        b = new dd1(3, tv1Var);
    }

    public static jh a(e61 e61Var) throws PackageManager.NameNotFoundException {
        e61Var.a();
        Context context = e61Var.a;
        context.getClass();
        String packageName = context.getPackageName();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String strValueOf = Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        e61Var.a();
        String str = e61Var.c.b;
        str.getClass();
        Build.MODEL.getClass();
        Build.VERSION.RELEASE.getClass();
        packageName.getClass();
        String str2 = packageInfo.versionName;
        if (str2 == null) {
            str2 = strValueOf;
        }
        Build.MANUFACTURER.getClass();
        e61Var.a();
        zy2 zy2VarY = k30.y(context);
        e61Var.a();
        return new jh(str, new u8(packageName, str2, strValueOf, zy2VarY, k30.s(context)));
    }
}
