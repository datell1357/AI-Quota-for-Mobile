package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y71 implements s71 {
    public final float a;
    public final xq3 b;

    public y71(float f, float f2, float f3) {
        this.a = f3;
        xq3 xq3Var = new xq3();
        xq3Var.a = 1.0f;
        xq3Var.b = Math.sqrt(50.0d);
        xq3Var.c = 1.0f;
        if (f < 0.0f) {
            kx2.a("Damping ratio must be non-negative");
        }
        xq3Var.c = f;
        double d = xq3Var.b;
        if (((float) (d * d)) <= 0.0f) {
            kx2.a("Spring stiffness constant must be positive.");
        }
        xq3Var.b = Math.sqrt(f2);
        this.b = xq3Var;
    }

    @Override // defpackage.s71
    public final float b(long j, float f, float f2, float f3) {
        xq3 xq3Var = this.b;
        xq3Var.a = f2;
        return Float.intBitsToFloat((int) (xq3Var.a(f, f3, j / 1000000) >> 32));
    }

    @Override // defpackage.s71
    public final float c(long j, float f, float f2, float f3) {
        xq3 xq3Var = this.b;
        xq3Var.a = f2;
        return Float.intBitsToFloat((int) (xq3Var.a(f, f3, j / 1000000) & 4294967295L));
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0132  */
    @Override // defpackage.s71
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d(float r34, float r35, float r36) {
        /*
            Method dump skipped, instruction units count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y71.d(float, float, float):long");
    }

    @Override // defpackage.s71
    public final float e(float f, float f2, float f3) {
        return 0.0f;
    }
}
