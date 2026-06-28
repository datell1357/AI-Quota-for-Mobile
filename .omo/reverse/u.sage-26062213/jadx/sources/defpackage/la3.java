package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class la3 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final float f;
    public final float g;
    public final float h;
    public long i;

    public la3(long j, long j2, long j3, bi0 bi0Var) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        long jU = ix.u(ix.D(j, j2));
        this.d = jU;
        long jU2 = ix.u(ix.D(j3, j2));
        this.e = jU2;
        float f = bi0Var.a;
        this.f = f;
        this.g = 0.0f;
        float fP = ix.p(jU, jU2);
        float f2 = k94.b;
        float fSqrt = (float) Math.sqrt(1.0f - (fP * fP));
        this.h = ((double) fSqrt) > 0.001d ? ((fP + 1.0f) * f) / fSqrt : 0.0f;
        this.i = v71.a(0.0f, 0.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.cl0 b(float r15, float r16, long r17, long r19, long r21, long r23, long r25, float r27) {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.la3.b(float, float, long, long, long, long, long, float):cl0");
    }

    public final float a(float f) {
        float fC = c();
        float f2 = this.g;
        if (f > fC) {
            return f2;
        }
        float f3 = this.h;
        if (f > f3) {
            return ((f - f3) * f2) / (c() - f3);
        }
        return 0.0f;
    }

    public final float c() {
        return (1.0f + this.g) * this.h;
    }
}
