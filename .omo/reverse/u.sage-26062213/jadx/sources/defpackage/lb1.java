package defpackage;

import com.google.api.client.http.HttpStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lb1 {
    public static final float[] a = {8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f};
    public static volatile mq3 b = new mq3(0);
    public static final Object[] c;

    static {
        Object[] objArr = new Object[0];
        c = objArr;
        synchronized (objArr) {
            b.e(115, new mb1(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{9.2f, 11.5f, 13.8f, 16.4f, 19.8f, 21.8f, 25.2f, 30.0f, 100.0f}));
            b.e(130, new mb1(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{10.4f, 13.0f, 15.6f, 18.8f, 21.6f, 23.6f, 26.4f, 30.0f, 100.0f}));
            b.e(150, new mb1(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{12.0f, 15.0f, 18.0f, 22.0f, 24.0f, 26.0f, 28.0f, 30.0f, 100.0f}));
            b.e(180, new mb1(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{14.4f, 18.0f, 21.6f, 24.4f, 27.6f, 30.8f, 32.8f, 34.8f, 100.0f}));
            b.e(HttpStatusCodes.STATUS_CODE_OK, new mb1(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{16.0f, 20.0f, 24.0f, 26.0f, 30.0f, 34.0f, 36.0f, 38.0f, 100.0f}));
        }
        if ((b.d(0) / 100.0f) - 0.01f > 1.03f) {
            return;
        }
        cr1.b("You should only apply non-linear scaling to font scales > 1");
    }

    public static kb1 a(float f) {
        float fD;
        kb1 mb1Var;
        float[] fArr = a;
        if (f < 1.03f) {
            return null;
        }
        int i = (int) (f * 100.0f);
        kb1 kb1Var = (kb1) b.c(i);
        if (kb1Var != null) {
            return kb1Var;
        }
        mq3 mq3Var = b;
        if (mq3Var.n) {
            n44.K(mq3Var);
        }
        int iL = is0.l(mq3Var.q, i, mq3Var.o);
        if (iL >= 0) {
            return (kb1) b.g(iL);
        }
        int i2 = -(iL + 1);
        int i3 = i2 - 1;
        if (i2 >= b.f()) {
            mb1 mb1Var2 = new mb1(new float[]{1.0f}, new float[]{f});
            b(f, mb1Var2);
            return mb1Var2;
        }
        if (i3 < 0) {
            mb1Var = new mb1(fArr, fArr);
            fD = 1.0f;
        } else {
            fD = b.d(i3) / 100.0f;
            mb1Var = (kb1) b.g(i3);
        }
        float fD2 = b.d(i2) / 100.0f;
        float fMax = (Math.max(0.0f, Math.min(1.0f, fD == fD2 ? 0.0f : (f - fD) / (fD2 - fD))) * 1.0f) + 0.0f;
        kb1 kb1Var2 = (kb1) b.g(i2);
        float[] fArr2 = new float[9];
        for (int i4 = 0; i4 < 9; i4++) {
            float f2 = fArr[i4];
            float fB = mb1Var.b(f2);
            fArr2[i4] = ((kb1Var2.b(f2) - fB) * fMax) + fB;
        }
        mb1 mb1Var3 = new mb1(fArr, fArr2);
        b(f, mb1Var3);
        return mb1Var3;
    }

    public static void b(float f, mb1 mb1Var) {
        synchronized (c) {
            mq3 mq3VarClone = b.clone();
            mq3VarClone.e((int) (f * 100.0f), mb1Var);
            b = mq3VarClone;
        }
    }
}
