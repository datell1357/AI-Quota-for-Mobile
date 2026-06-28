package defpackage;

import android.view.ViewTreeObserver;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dg3 {
    public xf3 a;
    public wa b;
    public to0 c;
    public hr2 d;
    public boolean e;
    public tk2 f;
    public final wf3 g;
    public final tf3 h;
    public boolean i;
    public int j = 1;
    public jf3 k = rf3.b;
    public final bg3 l = new bg3(this);
    public final v m = new v(29, this);

    public dg3(xf3 xf3Var, wa waVar, to0 to0Var, hr2 hr2Var, boolean z, tk2 tk2Var, wf3 wf3Var, tf3 tf3Var) {
        this.a = xf3Var;
        this.b = waVar;
        this.c = to0Var;
        this.d = hr2Var;
        this.e = z;
        this.f = tk2Var;
        this.g = wf3Var;
        this.h = tf3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(long r11, defpackage.fh0 r13) {
        /*
            r10 = this;
            boolean r0 = r13 instanceof defpackage.zf3
            if (r0 == 0) goto L13
            r0 = r13
            zf3 r0 = (defpackage.zf3) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            zf3 r0 = new zf3
            r0.<init>(r10, r13)
        L18:
            java.lang.Object r13 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2d
            v33 r11 = r0.q
            defpackage.gg4.T(r13)     // Catch: java.lang.Throwable -> L29
            r5 = r10
            goto L58
        L29:
            r0 = move-exception
            r11 = r0
            r5 = r10
            goto L68
        L2d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r10)
            r10 = 0
            return r10
        L34:
            defpackage.gg4.T(r13)
            v33 r6 = new v33
            r6.<init>()
            r6.n = r11
            r10.i = r3
            xg2 r13 = defpackage.xg2.n     // Catch: java.lang.Throwable -> L65
            ag3 r4 = new ag3     // Catch: java.lang.Throwable -> L65
            r9 = 0
            r5 = r10
            r7 = r11
            r4.<init>(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L62
            r0.q = r6     // Catch: java.lang.Throwable -> L62
            r0.t = r3     // Catch: java.lang.Throwable -> L62
            java.lang.Object r10 = r5.g(r13, r4, r0)     // Catch: java.lang.Throwable -> L62
            ri0 r11 = defpackage.ri0.n
            if (r10 != r11) goto L57
            return r11
        L57:
            r11 = r6
        L58:
            r5.i = r2
            long r10 = r11.n
            ra4 r12 = new ra4
            r12.<init>(r10)
            return r12
        L62:
            r0 = move-exception
        L63:
            r11 = r0
            goto L68
        L65:
            r0 = move-exception
            r5 = r10
            goto L63
        L68:
            r5.i = r2
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dg3.a(long, fh0):java.lang.Object");
    }

    public final boolean b() {
        wa waVar;
        return this.a.i() || this.a.c() || ((waVar = this.b) != null && waVar.e());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(long r5, boolean r7, defpackage.bv3 r8) {
        /*
            r4 = this;
            t64 r0 = defpackage.t64.a
            if (r7 == 0) goto Ld
            to0 r7 = r4.c
            jd3 r1 = defpackage.rf3.a
            boolean r7 = r7 instanceof defpackage.to0
            if (r7 == 0) goto Ld
            goto L43
        Ld:
            hr2 r7 = r4.d
            hr2 r1 = defpackage.hr2.o
            r2 = 0
            if (r7 != r1) goto L1a
            r7 = 1
        L15:
            long r5 = defpackage.ra4.a(r5, r2, r2, r7)
            goto L1c
        L1a:
            r7 = 2
            goto L15
        L1c:
            cg3 r7 = new cg3
            r1 = 0
            r7.<init>(r4, r1)
            wa r1 = r4.b
            ri0 r2 = defpackage.ri0.n
            if (r1 == 0) goto L35
            boolean r3 = r4.b()
            if (r3 == 0) goto L35
            java.lang.Object r4 = r1.b(r5, r7, r8)
            if (r4 != r2) goto L43
            return r4
        L35:
            cg3 r7 = new cg3
            r7.<init>(r4, r8)
            r7.t = r5
            java.lang.Object r4 = r7.q(r0)
            if (r4 != r2) goto L43
            return r4
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dg3.c(long, boolean, bv3):java.lang.Object");
    }

    public final long d(jf3 jf3Var, long j, int i) {
        xk2 xk2Var = this.f.a;
        xk2 xk2VarH0 = xk2Var != null ? xk2Var.H0() : null;
        long jK0 = xk2VarH0 != null ? xk2VarH0.k0(i, j) : 0L;
        long jD = go2.d(j, jK0);
        long jF = f(i(jf3Var.a(h(f(this.d == hr2.o ? go2.a(1, jD) : go2.a(2, jD))))));
        wf3 wf3Var = this.g;
        if (wf3Var.A) {
            ViewTreeObserver viewTreeObserver = ((q9) w80.S(wf3Var)).getViewTreeObserver();
            try {
                if (q9.a1 == null) {
                    Method declaredMethod = viewTreeObserver.getClass().getDeclaredMethod("dispatchOnScrollChanged", null);
                    declaredMethod.setAccessible(true);
                    q9.a1 = declaredMethod;
                }
                Method method = q9.a1;
                if (method != null) {
                    method.invoke(viewTreeObserver, null);
                }
            } catch (Exception unused) {
            }
        }
        long jD2 = go2.d(jD, jF);
        xk2 xk2Var2 = this.f.a;
        xk2 xk2VarH02 = xk2Var2 != null ? xk2Var2.H0() : null;
        return go2.e(go2.e(jK0, jF), xk2VarH02 != null ? xk2VarH02.J(i, jF, jD2) : 0L);
    }

    public final float e(float f) {
        return this.e ? f * (-1.0f) : f;
    }

    public final long f(long j) {
        return this.e ? go2.f(-1.0f, j) : j;
    }

    public final Object g(xg2 xg2Var, df1 df1Var, fh0 fh0Var) {
        Object objF = this.a.f(xg2Var, new p(this, df1Var, null, 25), fh0Var);
        return objF == ri0.n ? objF : t64.a;
    }

    public final float h(long j) {
        return Float.intBitsToFloat((int) (this.d == hr2.o ? j >> 32 : j & 4294967295L));
    }

    public final long i(float f) {
        if (f == 0.0f) {
            return 0L;
        }
        if (this.d == hr2.o) {
            return (((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & 4294967295L);
        }
        return (((long) Float.floatToRawIntBits(f)) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
    }

    public final float j(long j) {
        int i = (int) (4294967295L & j);
        int i2 = (int) (j >> 32);
        double dAtan2 = (float) Math.atan2(Math.abs(Float.intBitsToFloat(i)), Math.abs(Float.intBitsToFloat(i2)));
        hr2 hr2Var = this.d;
        if (dAtan2 >= 0.7853981633974483d) {
            if (hr2Var == hr2.n) {
                return Float.intBitsToFloat(i);
            }
            return 0.0f;
        }
        if (hr2Var == hr2.o) {
            return Float.intBitsToFloat(i2);
        }
        return 0.0f;
    }
}
