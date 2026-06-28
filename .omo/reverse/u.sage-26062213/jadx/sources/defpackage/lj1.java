package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lj1 implements bp2 {
    public long n;
    public Object o;

    public lj1(hr2 hr2Var, int i) {
        this.o = hr2Var;
        this.n = 0L;
    }

    public static long a(lj1 lj1Var, long j, float f) {
        long jE = go2.e(lj1Var.n, j);
        lj1Var.n = jE;
        if ((((hr2) lj1Var.o) == null ? go2.c(jE) : Math.abs(lj1Var.b(jE))) < f) {
            return 9205357640488583168L;
        }
        hr2 hr2Var = (hr2) lj1Var.o;
        long j2 = lj1Var.n;
        if (hr2Var == null) {
            float fC = go2.c(j2);
            return go2.d(lj1Var.n, go2.f(f, (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 >> 32)) / fC)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & 4294967295L)) / fC)) & 4294967295L)));
        }
        float fB = lj1Var.b(j2) - (Math.signum(lj1Var.b(lj1Var.n)) * f);
        long j3 = lj1Var.n;
        hr2 hr2Var2 = (hr2) lj1Var.o;
        hr2 hr2Var3 = hr2.o;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (hr2Var2 == hr2Var3 ? j3 & 4294967295L : j3 >> 32));
        if (((hr2) lj1Var.o) == hr2Var3) {
            return (((long) Float.floatToRawIntBits(fB)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & 4294967295L);
        }
        return (((long) Float.floatToRawIntBits(fB)) & 4294967295L) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32);
    }

    public float b(long j) {
        return Float.intBitsToFloat((int) (((hr2) this.o) == hr2.o ? j >> 32 : j & 4294967295L));
    }

    @Override // defpackage.bp2
    public /* synthetic */ void c(Exception exc) {
        t15 t15Var = (t15) this.o;
        t15Var.c.set(this.n);
    }

    public kj1 d() {
        dh1 dh1Var = new dh1(19, false);
        while (true) {
            String strQ = ((fz) this.o).Q(this.n);
            this.n -= (long) strQ.length();
            if (strQ.length() == 0) {
                return dh1Var.m();
            }
            int iF0 = zs3.F0(strQ, ':', 1, 4);
            if (iF0 != -1) {
                ci4.a(dh1Var, strQ.substring(0, iF0), strQ.substring(iF0 + 1));
            } else if (strQ.charAt(0) == ':') {
                ci4.a(dh1Var, "", strQ.substring(1));
            } else {
                ci4.a(dh1Var, "", strQ);
            }
        }
    }

    public lj1(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.o = clock;
    }
}
