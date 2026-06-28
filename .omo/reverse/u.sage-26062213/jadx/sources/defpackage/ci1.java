package defpackage;

import android.os.Build;
import android.view.ViewParent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ci1 implements rr2 {
    public int A;
    public fl4 C;
    public boolean D;
    public boolean E;
    public boolean G;
    public zh1 n;
    public final yh1 o;
    public final q9 p;
    public df1 q;
    public ne1 r;
    public boolean t;
    public float[] v;
    public boolean w;
    public long s = 9223372034707292159L;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float[] f51u = xa2.a();
    public as0 x = se0.a();
    public hy1 y = hy1.n;
    public final x20 z = new x20();
    public long B = f14.b;
    public boolean F = true;
    public final c8 H = new c8(15, this);

    public ci1(zh1 zh1Var, yh1 yh1Var, q9 q9Var, df1 df1Var, ne1 ne1Var) {
        this.n = zh1Var;
        this.o = yh1Var;
        this.p = q9Var;
        this.q = df1Var;
        this.r = ne1Var;
    }

    public final float[] a() {
        float[] fArrA = this.v;
        if (fArrA == null) {
            fArrA = xa2.a();
            this.v = fArrA;
        }
        if (this.E) {
            this.E = false;
            float[] fArrB = b();
            if (this.F) {
                return fArrB;
            }
            if (!mt1.K(fArrB, fArrA)) {
                fArrA[0] = Float.NaN;
                return null;
            }
        } else if (Float.isNaN(fArrA[0])) {
            return null;
        }
        return fArrA;
    }

    public final float[] b() {
        boolean z = this.D;
        float[] fArr = this.f51u;
        if (z) {
            zh1 zh1Var = this.n;
            long jC = zh1Var.z;
            bi1 bi1Var = zh1Var.a;
            if ((9223372034707292159L & jC) == 9205357640488583168L) {
                jC = kt4.C(se0.H(this.s));
            }
            float fIntBitsToFloat = Float.intBitsToFloat((int) (jC >> 32));
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jC & 4294967295L));
            float fT = bi1Var.t();
            float fI = bi1Var.i();
            float fY = bi1Var.y();
            float fH = bi1Var.H();
            float fM = bi1Var.M();
            float f = bi1Var.f();
            float fL = bi1Var.L();
            double d = ((double) fY) * 0.017453292519943295d;
            float fSin = (float) Math.sin(d);
            float fCos = (float) Math.cos(d);
            float f2 = -fSin;
            float f3 = (fI * fCos) - (0.0f * fSin);
            float f4 = (0.0f * fCos) + (fI * fSin);
            double d2 = ((double) fH) * 0.017453292519943295d;
            float fSin2 = (float) Math.sin(d2);
            float fCos2 = (float) Math.cos(d2);
            float f5 = -fSin2;
            float f6 = fSin * fSin2;
            float f7 = fSin * fCos2;
            float f8 = fCos * fSin2;
            float f9 = fCos * fCos2;
            float f10 = (f4 * fSin2) + (fT * fCos2);
            float f11 = (f4 * fCos2) + ((-fT) * fSin2);
            double d3 = ((double) fM) * 0.017453292519943295d;
            float fSin3 = (float) Math.sin(d3);
            float fCos3 = (float) Math.cos(d3);
            float f12 = -fSin3;
            float f13 = (fCos3 * f6) + (f12 * fCos2);
            float f14 = (f6 * fSin3) + (fCos2 * fCos3);
            float f15 = fSin3 * fCos;
            float f16 = f14 * f;
            float f17 = f15 * f;
            float f18 = ((fSin3 * f7) + (fCos3 * f5)) * f;
            float f19 = f13 * fL;
            float f20 = fCos * fCos3 * fL;
            float f21 = ((fCos3 * f7) + (f12 * f5)) * fL;
            float f22 = f8 * 1.0f;
            float f23 = f2 * 1.0f;
            float f24 = f9 * 1.0f;
            if (fArr.length >= 16) {
                fArr[0] = f16;
                fArr[1] = f17;
                fArr[2] = f18;
                fArr[3] = 0.0f;
                fArr[4] = f19;
                fArr[5] = f20;
                fArr[6] = f21;
                fArr[7] = 0.0f;
                fArr[8] = f22;
                fArr[9] = f23;
                fArr[10] = f24;
                fArr[11] = 0.0f;
                float f25 = -fIntBitsToFloat;
                fArr[12] = ((f16 * f25) - (fIntBitsToFloat2 * f19)) + f10 + fIntBitsToFloat;
                fArr[13] = ((f17 * f25) - (fIntBitsToFloat2 * f20)) + f3 + fIntBitsToFloat2;
                fArr[14] = ((f25 * f18) - (fIntBitsToFloat2 * f21)) + f11;
                fArr[15] = 1.0f;
            }
            this.D = false;
            this.F = gg4.J(fArr);
        }
        return fArr;
    }

    public final void c() {
        if (this.w || this.t) {
            return;
        }
        this.p.invalidate();
        f(true);
    }

    public final void d(long j) {
        boolean zL = q9.l();
        q9 q9Var = this.p;
        if (zL) {
            q9Var.O(-4.0f);
        }
        zh1 zh1Var = this.n;
        if (!js1.a(zh1Var.t, j)) {
            zh1Var.t = j;
            zh1Var.a.G((int) (j >> 32), (int) (j & 4294967295L), zh1Var.f438u);
        }
        if (Build.VERSION.SDK_INT < 26) {
            q9Var.invalidate();
            return;
        }
        ViewParent parent = q9Var.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(q9Var, q9Var);
        }
    }

    public final void e(long j) {
        if (rs1.a(j, this.s)) {
            return;
        }
        if (q9.l()) {
            this.p.O(-4.0f);
        }
        this.s = j;
        c();
    }

    public final void f(boolean z) {
        if (z != this.w) {
            this.w = z;
            q9 q9Var = this.p;
            dg2 dg2Var = q9Var.M;
            boolean z2 = q9Var.O;
            if (!z) {
                if (z2) {
                    return;
                }
                dg2Var.j(this);
                dg2 dg2Var2 = q9Var.N;
                if (dg2Var2 != null) {
                    dg2Var2.j(this);
                    return;
                }
                return;
            }
            if (!z2) {
                dg2Var.a(this);
                return;
            }
            dg2 dg2Var3 = q9Var.N;
            if (dg2Var3 == null) {
                dg2Var3 = new dg2();
                q9Var.N = dg2Var3;
            }
            dg2Var3.a(this);
        }
    }

    public final void g() {
        q9.l();
        if (this.w) {
            if (!f14.a(this.B, f14.b) && !rs1.a(this.n.f438u, this.s)) {
                zh1 zh1Var = this.n;
                float fIntBitsToFloat = Float.intBitsToFloat((int) (this.B >> 32)) * ((int) (this.s >> 32));
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (this.B & 4294967295L)) * ((int) (this.s & 4294967295L)))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
                if (!go2.b(zh1Var.z, jFloatToRawIntBits)) {
                    zh1Var.z = jFloatToRawIntBits;
                    zh1Var.a.O(jFloatToRawIntBits);
                }
            }
            zh1 zh1Var2 = this.n;
            as0 as0Var = this.x;
            hy1 hy1Var = this.y;
            long j = this.s;
            bi1 bi1Var = zh1Var2.a;
            if (!rs1.a(zh1Var2.f438u, j)) {
                zh1Var2.f438u = j;
                long j2 = zh1Var2.t;
                bi1Var.G((int) (j2 >> 32), (int) (4294967295L & j2), j);
                if (zh1Var2.i == 9205357640488583168L) {
                    zh1Var2.g = true;
                    zh1Var2.a();
                }
            }
            zh1Var2.b = as0Var;
            zh1Var2.c = hy1Var;
            zh1Var2.d = this.H;
            bi1Var.z(as0Var, hy1Var, zh1Var2, zh1Var2.e);
            f(false);
        }
    }
}
