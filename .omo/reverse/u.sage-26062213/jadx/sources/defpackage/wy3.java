package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wy3 {
    public final tf2 a;
    public vy3 b;
    public long c;
    public long d;
    public long e;
    public long f;
    public float[] g;

    public wy3() {
        tf2 tf2Var = is1.a;
        this.a = new tf2();
        this.c = -1L;
        this.d = 0L;
        this.e = 0L;
    }

    public static long a(vy3 vy3Var, long j, long j2, float[] fArr, long j3, long j4) {
        long j5 = vy3Var.c;
        if (j5 > 0) {
            long j6 = vy3Var.j;
            if (j6 > 0) {
                if (j3 - j6 < j5) {
                    return Math.min(j4, j6 + j5);
                }
                vy3Var.i = j3;
                vy3Var.j = -1L;
                vy3Var.a(vy3Var.g, vy3Var.h, j, j2, fArr);
                return j4;
            }
        }
        return j4;
    }

    public final void b(vy3 vy3Var, long j, long j2, float[] fArr, long j3) {
        long j4 = vy3Var.i;
        long j5 = vy3Var.c;
        boolean z = j3 - j4 > vy3Var.b || j4 == Long.MIN_VALUE;
        boolean z2 = j5 == 0;
        vy3Var.j = j3;
        if (z && z2) {
            vy3Var.i = j3;
            vy3Var.a(vy3Var.g, vy3Var.h, j, j2, fArr);
        }
        if (z2) {
            return;
        }
        long j6 = this.c;
        long j7 = j3 + j5;
        if (j6 <= 0 || j7 >= j6) {
            return;
        }
        this.c = j6;
    }

    public final boolean c(long j, long j2, float[] fArr, int i, int i2) {
        boolean z;
        if (js1.a(j2, this.d)) {
            z = false;
        } else {
            this.d = j2;
            z = true;
        }
        if (!js1.a(j, this.e)) {
            this.e = j;
            z = true;
        }
        if (fArr != null) {
            this.g = fArr;
            z = true;
        }
        long j3 = (((long) i) << 32) | (((long) i2) & 4294967295L);
        if (j3 == this.f) {
            return z;
        }
        this.f = j3;
        return true;
    }
}
