package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class o52 {
    public static final float a;
    public static final float b;
    public static final List c;
    public static final float d;

    static {
        float f;
        char c2;
        long j;
        float f2 = w80.m;
        a = f2;
        float f3 = w80.k;
        b = f3;
        float f4 = w80.j;
        b21 b21Var = ta2.a;
        pa3 pa3VarY = b21Var.y();
        pa3 pa3VarB = ta2.l;
        if (pa3VarB == null) {
            pa3VarB = on4.N(9, ta2.c).c(new dd1(16, ta2.e)).b();
            ta2.l = pa3VarB;
        }
        pa3 pa3VarB2 = ta2.i;
        if (pa3VarB2 == null) {
            f = 0.5f;
            j = 4294967295L;
            c2 = ' ';
            pa3VarB2 = b21.x(b21Var, tv4.F(new sa2((((long) Float.floatToRawIntBits(-0.009f)) & 4294967295L) | (Float.floatToRawIntBits(0.5f) << 32), new bi0(2, 0.172f)), new sa2((((long) Float.floatToRawIntBits(1.03f)) << 32) | (((long) Float.floatToRawIntBits(0.365f)) & 4294967295L), new bi0(2, 0.164f)), new sa2((((long) Float.floatToRawIntBits(0.97f)) & 4294967295L) | (Float.floatToRawIntBits(0.828f) << 32), new bi0(2, 0.169f))), 1, 4).b();
            ta2.i = pa3VarB2;
        } else {
            f = 0.5f;
            c2 = ' ';
            j = 4294967295L;
        }
        pa3 pa3VarB3 = ta2.h;
        if (pa3VarB3 == null) {
            pa3VarB3 = b21.x(b21Var, tv4.F(new sa2((((long) Float.floatToRawIntBits(0.961f)) << c2) | (((long) Float.floatToRawIntBits(0.039f)) & j), new bi0(2, 0.426f)), new sa2((((long) Float.floatToRawIntBits(1.001f)) << c2) | (((long) Float.floatToRawIntBits(0.428f)) & j), bi0.b), new sa2((((long) Float.floatToRawIntBits(0.609f)) & j) | (Float.floatToRawIntBits(1.0f) << c2), new bi0(2, 1.0f))), 2, 4).b();
            ta2.h = pa3VarB3;
        }
        pa3 pa3Var = pa3VarB3;
        pa3 pa3VarB4 = ta2.j;
        if (pa3VarB4 == null) {
            pa3VarB4 = on4.N(8, ta2.b).b();
            ta2.j = pa3VarB4;
        }
        pa3 pa3VarB5 = ta2.k;
        if (pa3VarB5 == null) {
            pa3VarB5 = b21.x(b21Var, tv4.F(new sa2((((long) Float.floatToRawIntBits(1.237f)) << c2) | (((long) Float.floatToRawIntBits(1.236f)) & j), new bi0(2, 0.258f)), new sa2((((long) Float.floatToRawIntBits(0.918f)) & j) | (Float.floatToRawIntBits(f) << c2), new bi0(2, 0.233f))), 4, 12).b();
            ta2.k = pa3VarB5;
        }
        pa3 pa3Var2 = pa3VarB5;
        pa3 pa3VarB6 = ta2.g;
        if (pa3VarB6 == null) {
            float[] fArrA = xa2.a();
            xa2.f(fArrA, 1.0f, 0.64f);
            pa3VarB6 = on4.o(15).c(new dd1(16, fArrA)).c(new dd1(16, ta2.d)).b();
            ta2.g = pa3VarB6;
        }
        c = tv4.F(pa3VarY, pa3VarB, pa3VarB2, pa3Var, pa3VarB4, pa3Var2, pa3VarB6);
        pa3 pa3VarB7 = ta2.f;
        if (pa3VarB7 == null) {
            pa3VarB7 = on4.o(14).b();
            ta2.f = pa3VarB7;
        }
        float[] fArrA2 = xa2.a();
        xa2.e(fArrA2, 18.0f);
        tv4.F(pa3VarB7.c(new dd1(16, fArrA2)), b21Var.y());
        d = f4 / Math.min(f2, f3);
    }
}
