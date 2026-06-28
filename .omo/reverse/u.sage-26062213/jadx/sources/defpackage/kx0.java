package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface kx0 extends as0 {
    static /* synthetic */ void C(kx0 kx0Var, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = t0(kx0Var.d(), 0L);
        }
        kx0Var.u(j, 0L, j2, t51.f, (i & 64) != 0 ? 3 : 0);
    }

    static /* synthetic */ void D(kx0 kx0Var, zf5 zf5Var, long j, long j2, long j3, tv4 tv4Var, int i) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j4 = j;
        kx0Var.p(zf5Var, j4, (i & 4) != 0 ? t0(kx0Var.d(), j4) : j2, j3, 1.0f, (i & 32) != 0 ? t51.f : tv4Var);
    }

    static void P(kx0 kx0Var, gb gbVar, long j, long j2, float f, ow owVar, int i, int i2) {
        kx0Var.M(gbVar, 0L, j, (i2 & 16) != 0 ? j : j2, (i2 & 32) != 0 ? 1.0f : f, owVar, (i2 & 512) != 0 ? 1 : i);
    }

    static /* synthetic */ void S(kx0 kx0Var, sb sbVar, zf5 zf5Var, float f, ht3 ht3Var, int i) {
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        tv4 tv4Var = ht3Var;
        if ((i & 8) != 0) {
            tv4Var = t51.f;
        }
        kx0Var.A(sbVar, zf5Var, f2, tv4Var, (i & 32) != 0 ? 3 : 0);
    }

    static void f0(zy1 zy1Var, long j, float f) {
        long jU = zy1Var.n.U();
        x20 x20Var = zy1Var.n;
        x20Var.n.c.c(f, jU, x20.a(x20Var, j, t51.f, 3));
    }

    static long t0(long j, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L));
        return (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L);
    }

    void A(sb sbVar, zf5 zf5Var, float f, tv4 tv4Var, int i);

    void E(zf5 zf5Var, long j, long j2, float f, tv4 tv4Var);

    void M(gb gbVar, long j, long j2, long j3, float f, ow owVar, int i);

    default long U() {
        return kt4.C(z().z());
    }

    void b0(long j, long j2, long j3, float f);

    default long d() {
        return z().z();
    }

    void f(sb sbVar, long j, tv4 tv4Var);

    hy1 getLayoutDirection();

    void p(zf5 zf5Var, long j, long j2, long j3, float f, tv4 tv4Var);

    void s0(long j, float f, float f2, long j2, long j3, tv4 tv4Var);

    void u(long j, long j2, long j3, tv4 tv4Var, int i);

    eh z();
}
