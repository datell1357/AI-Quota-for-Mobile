package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface as0 {
    default float G(long j) {
        if (!dy3.a(cy3.b(j), 4294967296L)) {
            cr1.b("Only Sp can convert to Px");
        }
        float[] fArr = lb1.a;
        if (k() < 1.03f) {
            return k() * cy3.c(j);
        }
        kb1 kb1VarA = lb1.a(k());
        if (kb1VarA != null) {
            return kb1VarA.b(cy3.c(j));
        }
        return k() * cy3.c(j);
    }

    default int N(float f) {
        float fV = v(f);
        return Float.isInfinite(fV) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : Math.round(fV);
    }

    default long X(long j) {
        if (j == 9205357640488583168L) {
            return 9205357640488583168L;
        }
        float fV = v(Float.intBitsToFloat((int) (j >> 32)));
        float fV2 = v(Float.intBitsToFloat((int) (j & 4294967295L)));
        return (((long) Float.floatToRawIntBits(fV)) << 32) | (((long) Float.floatToRawIntBits(fV2)) & 4294967295L);
    }

    default float Z(long j) {
        if (!dy3.a(cy3.b(j), 4294967296L)) {
            cr1.b("Only Sp can convert to Px");
        }
        return v(G(j));
    }

    float b();

    default long i0(float f) {
        return s(r0(f));
    }

    float k();

    default float p0(int i) {
        return i / b();
    }

    default float r0(float f) {
        return f / b();
    }

    default long s(float f) {
        float[] fArr = lb1.a;
        if (k() < 1.03f) {
            return on4.F(f / k(), 4294967296L);
        }
        kb1 kb1VarA = lb1.a(k());
        return on4.F(kb1VarA != null ? kb1VarA.a(f) : f / k(), 4294967296L);
    }

    default long t(long j) {
        if (j != 9205357640488583168L) {
            return bi4.a(r0(Float.intBitsToFloat((int) (j >> 32))), r0(Float.intBitsToFloat((int) (j & 4294967295L))));
        }
        return 9205357640488583168L;
    }

    default float v(float f) {
        return b() * f;
    }
}
