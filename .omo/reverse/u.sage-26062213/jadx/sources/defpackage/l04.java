package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class l04 {
    public static final ds2 a = new ds2(0.0f, 0.0f, 0.0f, 0.0f);
    public static final float b = 64.0f;

    public static k04 a(long j, long j2, ag1 ag1Var, int i) {
        long j3 = t70.f;
        long j4 = (i & 8) != 0 ? j3 : j2;
        y70 y70Var = ((ua2) ag1Var.j(wa2.a)).a;
        k04 k04Var = y70Var.b0;
        if (k04Var == null) {
            k04 k04Var2 = new k04(a80.c(y70Var, is0.b), a80.c(y70Var, is0.d), a80.c(y70Var, is0.c), a80.c(y70Var, is0.f), a80.c(y70Var, is0.g), a80.c(y70Var, is0.e));
            y70Var.b0 = k04Var2;
            k04Var = k04Var2;
        }
        long j5 = j != 16 ? j : k04Var.a;
        long j6 = j3 != 16 ? j3 : k04Var.b;
        long j7 = j3 != 16 ? j3 : k04Var.c;
        if (j4 == 16) {
            j4 = k04Var.d;
        }
        long j8 = j4;
        long j9 = j3 != 16 ? j3 : k04Var.e;
        if (j3 == 16) {
            j3 = k04Var.f;
        }
        return new k04(j5, j6, j7, j8, j9, j3);
    }
}
