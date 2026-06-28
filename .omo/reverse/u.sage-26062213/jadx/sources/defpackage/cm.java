package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cm implements pn2 {
    public static final cm a = new cm();
    public static final a51 b = a51.a("appId");
    public static final a51 c = a51.a("deviceModel");
    public static final a51 d = a51.a("sessionSdkVersion");
    public static final a51 e = a51.a("osVersion");
    public static final a51 f = a51.a("logEnvironment");
    public static final a51 g = a51.a("androidAppInfo");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        jh jhVar = (jh) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, jhVar.a);
        qn2Var.a(c, Build.MODEL);
        qn2Var.a(d, "3.0.6");
        qn2Var.a(e, Build.VERSION.RELEASE);
        qn2Var.a(f, m72.o);
        qn2Var.a(g, jhVar.b);
    }
}
