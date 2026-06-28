package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xa2 {
    public final float[] a;

    public /* synthetic */ xa2(float[] fArr) {
        this.a = fArr;
    }

    public static float[] a() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    public static final long b(float[] fArr, long j) {
        if (fArr.length < 16) {
            return j;
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[3];
        float f4 = fArr[4];
        float f5 = fArr[5];
        float f6 = fArr[7];
        float f7 = fArr[12];
        float f8 = fArr[13];
        float f9 = fArr[15];
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        float f10 = 1.0f / (((f6 * fIntBitsToFloat2) + (f3 * fIntBitsToFloat)) + f9);
        if ((Float.floatToRawIntBits(f10) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040) {
            f10 = 0.0f;
        }
        float f11 = ((f5 * fIntBitsToFloat2) + (f2 * fIntBitsToFloat) + f8) * f10;
        return (((long) Float.floatToRawIntBits((((f4 * fIntBitsToFloat2) + (f * fIntBitsToFloat)) + f7) * f10)) << 32) | (((long) Float.floatToRawIntBits(f11)) & 4294967295L);
    }

    public static final void c(float[] fArr, jg2 jg2Var) {
        if (fArr.length < 16) {
            return;
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[3];
        float f4 = fArr[4];
        float f5 = fArr[5];
        float f6 = fArr[7];
        float f7 = fArr[12];
        float f8 = fArr[13];
        float f9 = fArr[15];
        float f10 = jg2Var.a;
        float f11 = jg2Var.b;
        float f12 = jg2Var.c;
        float f13 = jg2Var.d;
        float f14 = f3 * f10;
        float f15 = f6 * f11;
        float f16 = 1.0f / ((f14 + f15) + f9);
        if ((Float.floatToRawIntBits(f16) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040) {
            f16 = 0.0f;
        }
        float f17 = f * f10;
        float f18 = f4 * f11;
        float f19 = (f17 + f18 + f7) * f16;
        float f20 = f10 * f2;
        float f21 = f11 * f5;
        float f22 = (f20 + f21 + f8) * f16;
        float f23 = f6 * f13;
        float f24 = 1.0f / ((f14 + f23) + f9);
        if ((Float.floatToRawIntBits(f24) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040) {
            f24 = 0.0f;
        }
        float f25 = f4 * f13;
        float f26 = (f17 + f25 + f7) * f24;
        float f27 = f5 * f13;
        float f28 = (f20 + f27 + f8) * f24;
        float f29 = f3 * f12;
        float f30 = 1.0f / ((f15 + f29) + f9);
        if ((Float.floatToRawIntBits(f30) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040) {
            f30 = 0.0f;
        }
        float f31 = f * f12;
        float f32 = (f31 + f18 + f7) * f30;
        float f33 = f12 * f2;
        float f34 = (f21 + f33 + f8) * f30;
        float f35 = 1.0f / ((f29 + f23) + f9);
        float f36 = (Float.floatToRawIntBits(f35) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040 ? f35 : 0.0f;
        float f37 = (f31 + f25 + f7) * f36;
        float f38 = (f33 + f27 + f8) * f36;
        jg2Var.a = Math.min(f19, Math.min(f26, Math.min(f32, f37)));
        jg2Var.b = Math.min(f22, Math.min(f28, Math.min(f34, f38)));
        jg2Var.c = Math.max(f19, Math.max(f26, Math.max(f32, f37)));
        jg2Var.d = Math.max(f22, Math.max(f28, Math.max(f34, f38)));
    }

    public static final void d(float[] fArr) {
        if (fArr.length < 16) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public static final void e(float[] fArr, float f) {
        if (fArr.length < 16) {
            return;
        }
        double d = ((double) f) * 0.017453292519943295d;
        float fSin = (float) Math.sin(d);
        float fCos = (float) Math.cos(d);
        float f2 = fArr[0];
        float f3 = fArr[4];
        float f4 = (fSin * f3) + (fCos * f2);
        float f5 = -fSin;
        float f6 = (f3 * fCos) + (f2 * f5);
        float f7 = fArr[1];
        float f8 = fArr[5];
        float f9 = (fSin * f8) + (fCos * f7);
        float f10 = (f8 * fCos) + (f7 * f5);
        float f11 = fArr[2];
        float f12 = fArr[6];
        float f13 = (fSin * f12) + (fCos * f11);
        float f14 = (f12 * fCos) + (f11 * f5);
        float f15 = fArr[3];
        float f16 = fArr[7];
        float f17 = (fSin * f16) + (fCos * f15);
        fArr[0] = f4;
        fArr[1] = f9;
        fArr[2] = f13;
        fArr[3] = f17;
        fArr[4] = f6;
        fArr[5] = f10;
        fArr[6] = f14;
        fArr[7] = (fCos * f16) + (f5 * f15);
    }

    public static final void f(float[] fArr, float f, float f2) {
        if (fArr.length < 16) {
            return;
        }
        fArr[0] = fArr[0] * f;
        fArr[1] = fArr[1] * f;
        fArr[2] = fArr[2] * f;
        fArr[3] = fArr[3] * f;
        fArr[4] = fArr[4] * f2;
        fArr[5] = fArr[5] * f2;
        fArr[6] = fArr[6] * f2;
        fArr[7] = fArr[7] * f2;
        fArr[8] = fArr[8] * 1.0f;
        fArr[9] = fArr[9] * 1.0f;
        fArr[10] = fArr[10] * 1.0f;
        fArr[11] = fArr[11] * 1.0f;
    }

    public static void g(float[] fArr, float f, float f2) {
        if (fArr.length < 16) {
            return;
        }
        float f3 = (fArr[8] * 0.0f) + (fArr[4] * f2) + (fArr[0] * f) + fArr[12];
        float f4 = (fArr[9] * 0.0f) + (fArr[5] * f2) + (fArr[1] * f) + fArr[13];
        float f5 = (fArr[10] * 0.0f) + (fArr[6] * f2) + (fArr[2] * f) + fArr[14];
        float f6 = (fArr[11] * 0.0f) + (fArr[7] * f2) + (fArr[3] * f) + fArr[15];
        fArr[12] = f3;
        fArr[13] = f4;
        fArr[14] = f5;
        fArr[15] = f6;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof xa2) {
            return nt1.g(this.a, ((xa2) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public final String toString() {
        float[] fArr = this.a;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[9];
        float f11 = fArr[10];
        float f12 = fArr[11];
        float f13 = fArr[12];
        float f14 = fArr[13];
        float f15 = fArr[14];
        float f16 = fArr[15];
        StringBuilder sbZ = di0.z("\n            |", f, " ", f2, " ");
        sbZ.append(f3);
        sbZ.append(" ");
        sbZ.append(f4);
        sbZ.append("|\n            |");
        sbZ.append(f5);
        sbZ.append(" ");
        sbZ.append(f6);
        sbZ.append(" ");
        sbZ.append(f7);
        sbZ.append(" ");
        sbZ.append(f8);
        sbZ.append("|\n            |");
        sbZ.append(f9);
        sbZ.append(" ");
        sbZ.append(f10);
        sbZ.append(" ");
        sbZ.append(f11);
        sbZ.append(" ");
        sbZ.append(f12);
        sbZ.append("|\n            |");
        sbZ.append(f13);
        sbZ.append(" ");
        sbZ.append(f14);
        sbZ.append(" ");
        sbZ.append(f15);
        sbZ.append(" ");
        sbZ.append(f16);
        sbZ.append("|\n        ");
        return at3.o0(sbZ.toString());
    }
}
