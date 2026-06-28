package defpackage;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wa {
    public final as0 a;
    public long b = 9205357640488583168L;
    public final qy0 c;
    public final ws2 d;
    public final boolean e;
    public boolean f;
    public long g;
    public long h;
    public final kr0 i;

    public wa(Context context, as0 as0Var, long j, zr2 zr2Var) {
        this.a = as0Var;
        qy0 qy0Var = new qy0(context, c75.R(j));
        this.c = qy0Var;
        this.d = new ws2(t64.a, w13.J);
        this.e = true;
        this.g = 0L;
        this.h = -1L;
        va vaVar = new va(this);
        vv2 vv2Var = dv3.a;
        fv3 fv3Var = new fv3(null, null, vaVar);
        this.i = Build.VERSION.SDK_INT >= 31 ? new mh1(fv3Var, this, qy0Var) : new mh1(fv3Var, this, qy0Var, zr2Var);
    }

    public final void a() {
        boolean z;
        qy0 qy0Var = this.c;
        EdgeEffect edgeEffect = qy0Var.d;
        boolean z2 = true;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = !edgeEffect.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = qy0Var.e;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z = !edgeEffect2.isFinished() || z;
        }
        EdgeEffect edgeEffect3 = qy0Var.f;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z = !edgeEffect3.isFinished() || z;
        }
        EdgeEffect edgeEffect4 = qy0Var.g;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            if (edgeEffect4.isFinished() && !z) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0137, code lost:
    
        if (r4 == r6) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(long r19, defpackage.cg3 r21, defpackage.fh0 r22) {
        /*
            Method dump skipped, instruction units count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wa.b(long, cg3, fh0):java.lang.Object");
    }

    public final long c() {
        long jC = this.b;
        if ((9223372034707292159L & jC) == 9205357640488583168L) {
            jC = kt4.C(this.g);
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jC >> 32)) / Float.intBitsToFloat((int) (this.g >> 32));
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jC & 4294967295L)) / Float.intBitsToFloat((int) (this.g & 4294967295L)))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public final void d() {
        if (this.e) {
            this.d.setValue(t64.a);
        }
    }

    public final boolean e() {
        qy0 qy0Var = this.c;
        EdgeEffect edgeEffect = qy0Var.d;
        if (edgeEffect != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? zf.c(edgeEffect) : 0.0f) != 0.0f) {
                return true;
            }
        }
        EdgeEffect edgeEffect2 = qy0Var.e;
        if (edgeEffect2 != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? zf.c(edgeEffect2) : 0.0f) != 0.0f) {
                return true;
            }
        }
        EdgeEffect edgeEffect3 = qy0Var.f;
        if (edgeEffect3 != null) {
            if ((Build.VERSION.SDK_INT >= 31 ? zf.c(edgeEffect3) : 0.0f) != 0.0f) {
                return true;
            }
        }
        EdgeEffect edgeEffect4 = qy0Var.g;
        if (edgeEffect4 != null) {
            return (Build.VERSION.SDK_INT >= 31 ? zf.c(edgeEffect4) : 0.0f) != 0.0f;
        }
        return false;
    }

    public final float f(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (c() >> 32));
        int i = (int) (j & 4294967295L);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g & 4294967295L));
        EdgeEffect edgeEffectB = this.c.b();
        float fE = -fIntBitsToFloat2;
        float f = 1.0f - fIntBitsToFloat;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            fE = zf.e(edgeEffectB, fE, f);
        } else {
            edgeEffectB.onPull(fE, f);
        }
        return (i2 >= 31 ? zf.c(edgeEffectB) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (4294967295L & this.g)) * (-fE) : Float.intBitsToFloat(i);
    }

    public final float g(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (c() & 4294967295L));
        int i = (int) (j >> 32);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g >> 32));
        EdgeEffect edgeEffectC = this.c.c();
        float f = 1.0f - fIntBitsToFloat;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            fIntBitsToFloat2 = zf.e(edgeEffectC, fIntBitsToFloat2, f);
        } else {
            edgeEffectC.onPull(fIntBitsToFloat2, f);
        }
        return (i2 >= 31 ? zf.c(edgeEffectC) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (this.g >> 32)) * fIntBitsToFloat2 : Float.intBitsToFloat(i);
    }

    public final float h(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (c() & 4294967295L));
        int i = (int) (j >> 32);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g >> 32));
        EdgeEffect edgeEffectD = this.c.d();
        float fE = -fIntBitsToFloat2;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            fE = zf.e(edgeEffectD, fE, fIntBitsToFloat);
        } else {
            edgeEffectD.onPull(fE, fIntBitsToFloat);
        }
        return (i2 >= 31 ? zf.c(edgeEffectD) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (this.g >> 32)) * (-fE) : Float.intBitsToFloat(i);
    }

    public final float i(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (c() >> 32));
        int i = (int) (j & 4294967295L);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.g & 4294967295L));
        EdgeEffect edgeEffectE = this.c.e();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            fIntBitsToFloat2 = zf.e(edgeEffectE, fIntBitsToFloat2, fIntBitsToFloat);
        } else {
            edgeEffectE.onPull(fIntBitsToFloat2, fIntBitsToFloat);
        }
        return (i2 >= 31 ? zf.c(edgeEffectE) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (this.g & 4294967295L)) * fIntBitsToFloat2 : Float.intBitsToFloat(i);
    }

    public final void j(long j) {
        boolean zA = mn3.a(this.g, 0L);
        boolean zA2 = mn3.a(j, this.g);
        this.g = j;
        if (!zA2) {
            int iV = is0.V(Float.intBitsToFloat((int) (j >> 32)));
            long jV = (((long) is0.V(Float.intBitsToFloat((int) (j & 4294967295L)))) & 4294967295L) | (((long) iV) << 32);
            qy0 qy0Var = this.c;
            qy0Var.c = jV;
            EdgeEffect edgeEffect = qy0Var.d;
            if (edgeEffect != null) {
                edgeEffect.setSize((int) (jV >> 32), (int) (jV & 4294967295L));
            }
            EdgeEffect edgeEffect2 = qy0Var.e;
            if (edgeEffect2 != null) {
                edgeEffect2.setSize((int) (jV >> 32), (int) (jV & 4294967295L));
            }
            EdgeEffect edgeEffect3 = qy0Var.f;
            if (edgeEffect3 != null) {
                edgeEffect3.setSize((int) (jV & 4294967295L), (int) (jV >> 32));
            }
            EdgeEffect edgeEffect4 = qy0Var.g;
            if (edgeEffect4 != null) {
                edgeEffect4.setSize((int) (jV & 4294967295L), (int) (jV >> 32));
            }
            EdgeEffect edgeEffect5 = qy0Var.h;
            if (edgeEffect5 != null) {
                edgeEffect5.setSize((int) (jV >> 32), (int) (jV & 4294967295L));
            }
            EdgeEffect edgeEffect6 = qy0Var.i;
            if (edgeEffect6 != null) {
                edgeEffect6.setSize((int) (jV >> 32), (int) (jV & 4294967295L));
            }
            EdgeEffect edgeEffect7 = qy0Var.j;
            if (edgeEffect7 != null) {
                edgeEffect7.setSize((int) (jV & 4294967295L), (int) (jV >> 32));
            }
            EdgeEffect edgeEffect8 = qy0Var.k;
            if (edgeEffect8 != null) {
                edgeEffect8.setSize((int) (4294967295L & jV), (int) (jV >> 32));
            }
        }
        if (zA || zA2) {
            return;
        }
        a();
    }
}
