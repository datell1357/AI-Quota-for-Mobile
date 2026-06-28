package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ue4 {
    public static final hr1[] b;
    public static final tf2 c;
    public static final tf2 d;
    public static final tf2 e;
    public final xe4 a;

    static {
        hr1[] hr1VarArr = new hr1[4];
        for (int i = 0; i < 4; i++) {
            hr1VarArr[i] = new hr1((String) null);
        }
        b = hr1VarArr;
        tf2 tf2Var = new tf2(8);
        tf2Var.h(1, new hr1("status bars source"));
        tf2Var.h(2, new hr1("navigation bars source"));
        tf2Var.h(4, new hr1("caption bar source"));
        tf2Var.h(8, new hr1("IME source"));
        tf2Var.h(16, new hr1("system gestures source"));
        tf2Var.h(32, new hr1("mandatory system gestures source"));
        tf2Var.h(64, new hr1("tappable element source"));
        tf2Var.h(128, new hr1("display cutout source"));
        c = tf2Var;
        tf2 tf2Var2 = new tf2(8);
        tf2Var2.h(1, new hr1("status bars target"));
        tf2Var2.h(2, new hr1("navigation bars target"));
        tf2Var2.h(4, new hr1("caption bar target"));
        tf2Var2.h(8, new hr1("IME target"));
        tf2Var2.h(16, new hr1("system gestures target"));
        tf2Var2.h(32, new hr1("mandatory system gestures target"));
        tf2Var2.h(64, new hr1("tappable element target"));
        tf2Var2.h(128, new hr1("display cutout target"));
        d = tf2Var2;
        tf2 tf2Var3 = new tf2(8);
        se4.a.getClass();
        tf2Var3.h(1, re4.g);
        tf2Var3.h(2, re4.f);
        tf2Var3.h(4, re4.b);
        tf2Var3.h(8, re4.d);
        tf2Var3.h(16, re4.h);
        tf2Var3.h(32, re4.e);
        tf2Var3.h(64, re4.i);
        tf2Var3.h(128, re4.c);
        e = tf2Var3;
    }

    public ue4(xe4 xe4Var) {
        this.a = xe4Var;
        is1.a();
    }

    public static boolean a(ek1 ek1Var, hr1 hr1Var) {
        return ek1Var == hr1Var.b() || ek1Var == hr1Var.d() || ek1Var == hr1Var.c() || ek1Var == hr1Var.a();
    }

    public static void b(f82 f82Var, hr1 hr1Var, nr1 nr1Var) {
        long jI = f82Var.a().I();
        f82Var.c(hr1Var.b(), nr1Var.a);
        f82Var.c(hr1Var.d(), nr1Var.b);
        f82Var.c(hr1Var.c(), ((int) (jI >> 32)) - nr1Var.c);
        f82Var.c(hr1Var.a(), ((int) (jI & 4294967295L)) - nr1Var.d);
    }
}
