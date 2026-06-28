package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bm implements pn2 {
    public static final bm a = new bm();
    public static final a51 b = a51.a("packageName");
    public static final a51 c = a51.a("versionName");
    public static final a51 d = a51.a("appBuildVersion");
    public static final a51 e = a51.a("deviceManufacturer");
    public static final a51 f = a51.a("currentProcessDetails");
    public static final a51 g = a51.a("appProcessDetails");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        u8 u8Var = (u8) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, u8Var.a);
        qn2Var.a(c, u8Var.b);
        qn2Var.a(d, u8Var.c);
        qn2Var.a(e, Build.MANUFACTURER);
        qn2Var.a(f, u8Var.d);
        qn2Var.a(g, u8Var.e);
    }
}
