package defpackage;

import android.os.Build;
import android.view.ViewParent;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.api.Api;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mm2 extends k82 implements ya2, gy1 {
    public static final o83 d0 = new o83();
    public static final cy1 e0 = new cy1();
    public static final jm2 f0 = new jm2();
    public static final b21 g0 = new b21(15);
    public final xy1 F;
    public mm2 G;
    public mm2 H;
    public boolean I;
    public boolean J;
    public pe1 K;
    public as0 L;
    public hy1 M;
    public eb2 O;
    public cg2 P;
    public float R;
    public jg2 S;
    public cy1 T;
    public boolean V;
    public boolean W;
    public zh1 X;
    public v20 Y;
    public ga Z;
    public boolean b0;
    public rr2 c0;
    public float N = 0.8f;
    public long Q = 0;
    public jl3 U = k75.d;
    public final lm2 a0 = new lm2(this, 1);

    public mm2(xy1 xy1Var) {
        this.F = xy1Var;
        this.L = xy1Var.L;
        this.M = xy1Var.M;
    }

    @Override // defpackage.gy1
    public final boolean B() {
        return O0().A;
    }

    @Override // defpackage.k82
    public final void B0() {
        d0(this.Q, this.R, this.K);
    }

    public final void D0(mm2 mm2Var, jg2 jg2Var, boolean z) {
        if (mm2Var == this) {
            return;
        }
        mm2 mm2Var2 = this.H;
        if (mm2Var2 != null) {
            mm2Var2.D0(mm2Var, jg2Var, z);
        }
        long j = this.Q;
        float f = (int) (j >> 32);
        jg2Var.a -= f;
        jg2Var.c -= f;
        float f2 = (int) (j & 4294967295L);
        jg2Var.b -= f2;
        jg2Var.d -= f2;
        rr2 rr2Var = this.c0;
        if (rr2Var != null) {
            ci1 ci1Var = (ci1) rr2Var;
            float[] fArrA = ci1Var.a();
            if (!ci1Var.F) {
                if (fArrA == null) {
                    jg2Var.a = 0.0f;
                    jg2Var.b = 0.0f;
                    jg2Var.c = 0.0f;
                    jg2Var.d = 0.0f;
                } else {
                    xa2.c(fArrA, jg2Var);
                }
            }
            if (this.J && z) {
                long j2 = this.p;
                jg2Var.a(0.0f, 0.0f, (int) (j2 >> 32), (int) (j2 & 4294967295L));
            }
        }
    }

    public final long E0(mm2 mm2Var, long j) {
        if (mm2Var == this) {
            return j;
        }
        mm2 mm2Var2 = this.H;
        return (mm2Var2 == null || nt1.g(mm2Var, mm2Var2)) ? L0(j) : L0(mm2Var2.E0(mm2Var, j));
    }

    @Override // defpackage.gy1
    public final long F(gy1 gy1Var, long j) {
        mm2 mm2Var;
        boolean z = gy1Var instanceof n82;
        if (z) {
            n82 n82Var = (n82) gy1Var;
            n82Var.n.F.X0();
            return n82Var.F(this, j ^ (-9223372034707292160L)) ^ (-9223372034707292160L);
        }
        n82 n82Var2 = z ? (n82) gy1Var : null;
        if (n82Var2 == null || (mm2Var = n82Var2.n.F) == null) {
            gy1Var.getClass();
            mm2Var = (mm2) gy1Var;
        }
        mm2Var.X0();
        mm2 mm2VarK0 = K0(mm2Var);
        while (mm2Var != mm2VarK0) {
            rr2 rr2Var = mm2Var.c0;
            if (rr2Var != null) {
                ci1 ci1Var = (ci1) rr2Var;
                float[] fArrB = ci1Var.b();
                if (!ci1Var.F) {
                    j = xa2.b(fArrB, j);
                }
            }
            j = ca.C(j, mm2Var.Q);
            mm2Var = mm2Var.H;
            mm2Var.getClass();
        }
        return E0(mm2VarK0, j);
    }

    public final long F0(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - a0();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Y();
        return (((long) Float.floatToRawIntBits(Math.max(0.0f, fIntBitsToFloat / 2.0f))) << 32) | (((long) Float.floatToRawIntBits(Math.max(0.0f, fIntBitsToFloat2 / 2.0f))) & 4294967295L);
    }

    public final float G0(long j, long j2) {
        if (a0() >= Float.intBitsToFloat((int) (j2 >> 32)) && Y() >= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
            return Float.POSITIVE_INFINITY;
        }
        long jF0 = F0(j2);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jF0 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jF0 & 4294967295L));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        float fMax = Math.max(0.0f, fIntBitsToFloat3 < 0.0f ? -fIntBitsToFloat3 : fIntBitsToFloat3 - a0());
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(Math.max(0.0f, fIntBitsToFloat4 < 0.0f ? -fIntBitsToFloat4 : fIntBitsToFloat4 - Y()))) & 4294967295L);
        if (fIntBitsToFloat > 0.0f || fIntBitsToFloat2 > 0.0f) {
            int i = (int) (jFloatToRawIntBits >> 32);
            if (Float.intBitsToFloat(i) <= fIntBitsToFloat) {
                int i2 = (int) (jFloatToRawIntBits & 4294967295L);
                if (Float.intBitsToFloat(i2) <= fIntBitsToFloat2) {
                    float fIntBitsToFloat5 = Float.intBitsToFloat(i);
                    float fIntBitsToFloat6 = Float.intBitsToFloat(i2);
                    return (fIntBitsToFloat6 * fIntBitsToFloat6) + (fIntBitsToFloat5 * fIntBitsToFloat5);
                }
            }
        }
        return Float.POSITIVE_INFINITY;
    }

    @Override // defpackage.gy1
    public final l33 H(gy1 gy1Var, boolean z) {
        mm2 mm2Var;
        if (!O0().A) {
            ar1.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!gy1Var.B()) {
            ar1.b("LayoutCoordinates " + gy1Var + " is not attached!");
        }
        n82 n82Var = gy1Var instanceof n82 ? (n82) gy1Var : null;
        if (n82Var == null || (mm2Var = n82Var.n.F) == null) {
            mm2Var = (mm2) gy1Var;
        }
        mm2Var.X0();
        mm2 mm2VarK0 = K0(mm2Var);
        jg2 jg2Var = this.S;
        if (jg2Var == null) {
            jg2Var = new jg2();
            this.S = jg2Var;
        }
        jg2Var.a = 0.0f;
        jg2Var.b = 0.0f;
        jg2Var.c = (int) (gy1Var.I() >> 32);
        jg2Var.d = (int) (gy1Var.I() & 4294967295L);
        while (mm2Var != mm2VarK0) {
            mm2Var.f1(jg2Var, z, false);
            if (jg2Var.b()) {
                return l33.e;
            }
            mm2Var = mm2Var.H;
            mm2Var.getClass();
        }
        D0(mm2VarK0, jg2Var, z);
        return new l33(jg2Var.a, jg2Var.b, jg2Var.c, jg2Var.d);
    }

    public final void H0(v20 v20Var, zh1 zh1Var) {
        rr2 rr2Var = this.c0;
        if (rr2Var == null) {
            long j = this.Q;
            float f = (int) (j >> 32);
            float f2 = (int) (j & 4294967295L);
            v20Var.f(f, f2);
            I0(v20Var, zh1Var);
            v20Var.f(-f, -f2);
            return;
        }
        ci1 ci1Var = (ci1) rr2Var;
        x20 x20Var = ci1Var.z;
        ci1Var.g();
        ci1Var.G = ci1Var.n.a.J() > 0.0f;
        eh ehVar = x20Var.o;
        ehVar.H(v20Var);
        ehVar.p = zh1Var;
        zf5.B(x20Var, ci1Var.n);
    }

    @Override // defpackage.gy1
    public final long I() {
        return this.p;
    }

    public final void I0(v20 v20Var, zh1 zh1Var) {
        mm2 mm2Var;
        v20 v20Var2;
        zh1 zh1Var2;
        md2 md2VarP0 = P0(4);
        if (md2VarP0 == null) {
            d1(v20Var, zh1Var);
            return;
        }
        xy1 xy1Var = this.F;
        xy1Var.getClass();
        zy1 sharedDrawScope = ((q9) az1.a(xy1Var)).getSharedDrawScope();
        long jH = se0.H(this.p);
        sharedDrawScope.getClass();
        ug2 ug2Var = null;
        while (md2VarP0 != null) {
            if (md2VarP0 instanceof jx0) {
                mm2Var = this;
                v20Var2 = v20Var;
                zh1Var2 = zh1Var;
                sharedDrawScope.c(v20Var2, jH, mm2Var, (jx0) md2VarP0, zh1Var2);
            } else {
                mm2Var = this;
                v20Var2 = v20Var;
                zh1Var2 = zh1Var;
                if ((md2VarP0.p & 4) != 0 && (md2VarP0 instanceof kr0)) {
                    int i = 0;
                    for (md2 md2Var = ((kr0) md2VarP0).C; md2Var != null; md2Var = md2Var.s) {
                        if ((md2Var.p & 4) != 0) {
                            i++;
                            if (i == 1) {
                                md2VarP0 = md2Var;
                            } else {
                                if (ug2Var == null) {
                                    ug2Var = new ug2(new md2[16]);
                                }
                                if (md2VarP0 != null) {
                                    ug2Var.c(md2VarP0);
                                    md2VarP0 = null;
                                }
                                ug2Var.c(md2Var);
                            }
                        }
                    }
                    if (i == 1) {
                    }
                }
                v20Var = v20Var2;
                this = mm2Var;
                zh1Var = zh1Var2;
            }
            md2VarP0 = w80.g(ug2Var);
            v20Var = v20Var2;
            this = mm2Var;
            zh1Var = zh1Var2;
        }
    }

    @Override // defpackage.gy1
    public final long J(long j) {
        if (!O0().A) {
            ar1.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        X0();
        while (this != null) {
            xy1 xy1Var = this.F;
            if (this == ((mm2) xy1Var.S.e) && !xy1Var.p) {
                long jB = ((q9) az1.a(xy1Var)).getRectManager().b(xy1Var);
                if (!js1.a(jB, 9223372034707292159L)) {
                    return ca.C(j, jB);
                }
            }
            rr2 rr2Var = this.c0;
            if (rr2Var != null) {
                ci1 ci1Var = (ci1) rr2Var;
                float[] fArrB = ci1Var.b();
                if (!ci1Var.F) {
                    j = xa2.b(fArrB, j);
                }
            }
            j = ca.C(j, this.Q);
            this = this.H;
        }
        return j;
    }

    public abstract void J0();

    public final mm2 K0(mm2 mm2Var) {
        xy1 xy1VarU = mm2Var.F;
        xy1 xy1Var = this.F;
        if (xy1VarU == xy1Var) {
            md2 md2VarO0 = mm2Var.O0();
            md2 md2VarO02 = O0();
            if (!md2VarO02.n.A) {
                ar1.b("visitLocalAncestors called on an unattached node");
            }
            for (md2 md2Var = md2VarO02.n.r; md2Var != null; md2Var = md2Var.r) {
                if ((md2Var.p & 2) != 0 && md2Var == md2VarO0) {
                    return mm2Var;
                }
            }
            return this;
        }
        while (xy1VarU.C > xy1Var.C) {
            xy1VarU = xy1VarU.u();
            xy1VarU.getClass();
        }
        xy1 xy1VarU2 = xy1Var;
        while (xy1VarU2.C > xy1VarU.C) {
            xy1VarU2 = xy1VarU2.u();
            xy1VarU2.getClass();
        }
        while (xy1VarU != xy1VarU2) {
            xy1VarU = xy1VarU.u();
            xy1VarU2 = xy1VarU2.u();
            if (xy1VarU == null || xy1VarU2 == null) {
                k21.f("layouts are not part of the same hierarchy");
                return null;
            }
        }
        if (xy1VarU2 != xy1Var) {
            if (xy1VarU != mm2Var.F) {
                return (gr1) xy1VarU.S.d;
            }
            return mm2Var;
        }
        return this;
    }

    public final long L0(long j) {
        long j2 = this.Q;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - ((int) (j2 >> 32));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L)))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
        rr2 rr2Var = this.c0;
        if (rr2Var != null) {
            ci1 ci1Var = (ci1) rr2Var;
            float[] fArrA = ci1Var.a();
            if (fArrA == null) {
                return 9187343241974906880L;
            }
            if (!ci1Var.F) {
                return xa2.b(fArrA, jFloatToRawIntBits);
            }
        }
        return jFloatToRawIntBits;
    }

    public abstract m82 M0();

    public final long N0() {
        return this.L.X(this.F.N.c());
    }

    public abstract md2 O0();

    public final md2 P0(int i) {
        boolean zG = nm2.g(i);
        md2 md2VarO0 = O0();
        if (!zG && (md2VarO0 = md2VarO0.r) == null) {
            return null;
        }
        for (md2 md2VarQ0 = Q0(zG); md2VarQ0 != null && (md2VarQ0.q & i) != 0; md2VarQ0 = md2VarQ0.s) {
            if ((md2VarQ0.p & i) != 0) {
                return md2VarQ0;
            }
            if (md2VarQ0 == md2VarO0) {
                return null;
            }
        }
        return null;
    }

    public final md2 Q0(boolean z) {
        md2 md2VarO0;
        bo boVar = this.F.S;
        if (((mm2) boVar.e) == this) {
            return (md2) boVar.g;
        }
        mm2 mm2Var = this.H;
        if (!z) {
            if (mm2Var != null) {
                return mm2Var.O0();
            }
            return null;
        }
        if (mm2Var == null || (md2VarO0 = mm2Var.O0()) == null) {
            return null;
        }
        return md2VarO0.s;
    }

    public final void R0(md2 md2Var, km2 km2Var, long j, zj1 zj1Var, int i, boolean z) {
        if (md2Var == null) {
            U0(km2Var, j, zj1Var, i, z);
            return;
        }
        if (!km2Var.h(md2Var)) {
            R0(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z);
            return;
        }
        int i2 = zj1Var.p;
        dg2 dg2Var = zj1Var.n;
        zj1Var.d(i2 + 1, dg2Var.b);
        zj1Var.p++;
        dg2Var.a(md2Var);
        zj1Var.o.a(se0.b(-1.0f, z, false));
        R0(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z);
        zj1Var.p = i2;
    }

    public final void S0(md2 md2Var, km2 km2Var, long j, zj1 zj1Var, int i, boolean z, float f) {
        if (md2Var == null) {
            U0(km2Var, j, zj1Var, i, z);
            return;
        }
        if (!km2Var.h(md2Var)) {
            S0(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z, f);
            return;
        }
        int i2 = zj1Var.p;
        dg2 dg2Var = zj1Var.n;
        zj1Var.d(i2 + 1, dg2Var.b);
        zj1Var.p++;
        dg2Var.a(md2Var);
        zj1Var.o.a(se0.b(f, z, false));
        c1(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z, f, true);
        zj1Var.p = i2;
    }

    public final void T0(km2 km2Var, long j, zj1 zj1Var, int i, boolean z) {
        boolean z2;
        boolean z3;
        md2 md2VarP0 = P0(km2Var.d());
        if (!m1(j)) {
            if (i == 1) {
                float fG0 = G0(j, N0());
                if ((Float.floatToRawIntBits(fG0) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040) {
                    if (zj1Var.p != zj1Var.n.b - 1) {
                        if (n44.e0(zj1Var.a(), se0.b(fG0, false, false)) <= 0) {
                            return;
                        }
                    }
                    S0(md2VarP0, km2Var, j, zj1Var, i, false, fG0);
                    return;
                }
                return;
            }
            return;
        }
        if (md2VarP0 == null) {
            U0(km2Var, j, zj1Var, i, z);
            return;
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        if (fIntBitsToFloat >= 0.0f && fIntBitsToFloat2 >= 0.0f && fIntBitsToFloat < a0() && fIntBitsToFloat2 < Y()) {
            R0(md2VarP0, km2Var, j, zj1Var, i, z);
            return;
        }
        float fG02 = i == 1 ? G0(j, N0()) : Float.POSITIVE_INFINITY;
        if ((Float.floatToRawIntBits(fG02) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040) {
            if (zj1Var.p != zj1Var.n.b - 1) {
                z2 = z;
                if (n44.e0(zj1Var.a(), se0.b(fG02, z2, false)) > 0) {
                }
                c1(md2VarP0, km2Var, j, zj1Var, i, z2, fG02, z3);
            }
            z2 = z;
            z3 = true;
            c1(md2VarP0, km2Var, j, zj1Var, i, z2, fG02, z3);
        }
        z2 = z;
        z3 = false;
        c1(md2VarP0, km2Var, j, zj1Var, i, z2, fG02, z3);
    }

    public void U0(km2 km2Var, long j, zj1 zj1Var, int i, boolean z) {
        mm2 mm2Var = this.G;
        if (mm2Var != null) {
            mm2Var.T0(km2Var, mm2Var.L0(j), zj1Var, i, z);
        }
    }

    public final void V0() {
        rr2 rr2Var = this.c0;
        if (rr2Var != null) {
            ((ci1) rr2Var).c();
            return;
        }
        mm2 mm2Var = this.H;
        if (mm2Var != null) {
            mm2Var.V0();
        }
    }

    public final boolean W0() {
        if (this.c0 != null && this.N <= 0.0f) {
            return true;
        }
        mm2 mm2Var = this.H;
        if (mm2Var != null) {
            return mm2Var.W0();
        }
        return false;
    }

    public final void X0() {
        this.F.T.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v7, types: [md2] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public final void Y0() {
        md2 md2VarO0;
        boolean zG = nm2.g(128);
        md2 md2VarQ0 = Q0(zG);
        if (md2VarQ0 == null || (md2VarQ0.n.q & 128) == 0) {
            return;
        }
        po3 po3VarX = k75.x();
        pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
        po3 po3VarE = k75.E(po3VarX);
        try {
            if (!zG) {
                md2VarO0 = O0().r;
                if (md2VarO0 == null) {
                }
            }
            md2VarO0 = O0();
            for (md2 md2VarQ02 = Q0(zG); md2VarQ02 != null; md2VarQ02 = md2VarQ02.s) {
                if ((md2VarQ02.q & 128) == 0) {
                    break;
                }
                if ((md2VarQ02.p & 128) != 0) {
                    ?? G = md2VarQ02;
                    ?? ug2Var = 0;
                    while (G != 0) {
                        if (G instanceof jb2) {
                            ((jb2) G).c(this.p);
                        } else if ((G.p & 128) != 0 && (G instanceof kr0)) {
                            md2 md2Var = ((kr0) G).C;
                            int i = 0;
                            G = G;
                            ug2Var = ug2Var;
                            while (md2Var != null) {
                                if ((md2Var.p & 128) != 0) {
                                    i++;
                                    ug2Var = ug2Var;
                                    if (i == 1) {
                                        G = md2Var;
                                    } else {
                                        if (ug2Var == 0) {
                                            ug2Var = new ug2(new md2[16]);
                                        }
                                        if (G != 0) {
                                            ug2Var.c(G);
                                            G = 0;
                                        }
                                        ug2Var.c(md2Var);
                                    }
                                }
                                md2Var = md2Var.s;
                                G = G;
                                ug2Var = ug2Var;
                            }
                            if (i == 1) {
                            }
                        }
                        G = w80.g(ug2Var);
                    }
                }
                if (md2VarQ02 == md2VarO0) {
                    break;
                }
            }
        } finally {
            k75.L(po3VarX, po3VarE, pe1VarE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v4 */
    public final void Z0() {
        boolean zG = nm2.g(4194304);
        md2 md2VarO0 = O0();
        if (!zG && (md2VarO0 = md2VarO0.r) == null) {
            return;
        }
        for (md2 md2VarQ0 = Q0(zG); md2VarQ0 != null && (md2VarQ0.q & 4194304) != 0; md2VarQ0 = md2VarQ0.s) {
            if ((md2VarQ0.p & 4194304) != 0) {
                ?? G = md2VarQ0;
                ?? ug2Var = 0;
                while (G != 0) {
                    if (G instanceof ey1) {
                        ((ey1) G).m(this);
                    } else if ((G.p & 4194304) != 0 && (G instanceof kr0)) {
                        md2 md2Var = ((kr0) G).C;
                        int i = 0;
                        G = G;
                        ug2Var = ug2Var;
                        while (md2Var != null) {
                            if ((md2Var.p & 4194304) != 0) {
                                i++;
                                ug2Var = ug2Var;
                                if (i == 1) {
                                    G = md2Var;
                                } else {
                                    if (ug2Var == 0) {
                                        ug2Var = new ug2(new md2[16]);
                                    }
                                    if (G != 0) {
                                        ug2Var.c(G);
                                        G = 0;
                                    }
                                    ug2Var.c(md2Var);
                                }
                            }
                            md2Var = md2Var.s;
                            G = G;
                            ug2Var = ug2Var;
                        }
                        if (i == 1) {
                        }
                    }
                    G = w80.g(ug2Var);
                }
            }
            if (md2VarQ0 == md2VarO0) {
                return;
            }
        }
    }

    @Override // defpackage.gy1
    public final long a(long j) {
        if (!O0().A) {
            ar1.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return ((q9) az1.a(this.F)).p(J(j));
    }

    public final void a1() {
        this.I = true;
        this.a0.a();
        g1();
        if (js1.a(this.Q, 0L)) {
            return;
        }
        this.F.N(this);
    }

    @Override // defpackage.as0
    public final float b() {
        return this.F.L.b();
    }

    public final void b1() {
        boolean zG = nm2.g(1048576);
        md2 md2VarQ0 = Q0(zG);
        if (md2VarQ0 == null || (md2VarQ0.n.q & 1048576) == 0) {
            return;
        }
        md2 md2VarO0 = O0();
        if (!zG && (md2VarO0 = md2VarO0.r) == null) {
            return;
        }
        for (md2 md2VarQ02 = Q0(zG); md2VarQ02 != null && (md2VarQ02.q & 1048576) != 0; md2VarQ02 = md2VarQ02.s) {
            if ((md2VarQ02.p & 1048576) != 0) {
                md2 md2VarG = md2VarQ02;
                ug2 ug2Var = null;
                while (md2VarG != null) {
                    if (!(md2VarG instanceof ka1) && (md2VarG.p & 1048576) != 0 && (md2VarG instanceof kr0)) {
                        int i = 0;
                        for (md2 md2Var = ((kr0) md2VarG).C; md2Var != null; md2Var = md2Var.s) {
                            if ((md2Var.p & 1048576) != 0) {
                                i++;
                                if (i == 1) {
                                    md2VarG = md2Var;
                                } else {
                                    if (ug2Var == null) {
                                        ug2Var = new ug2(new md2[16]);
                                    }
                                    if (md2VarG != null) {
                                        ug2Var.c(md2VarG);
                                        md2VarG = null;
                                    }
                                    ug2Var.c(md2Var);
                                }
                            }
                        }
                        if (i == 1) {
                        }
                    }
                    md2VarG = w80.g(ug2Var);
                }
            }
            if (md2VarQ02 == md2VarO0) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cd A[PHI: r4
  0x01cd: PHI (r4v5 ??) = (r4v1 ??), (r4v1 ??), (r4v7 ??) binds: [B:55:0x0197, B:57:0x019b, B:71:0x01c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r3v27, types: [md2] */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v5, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [ug2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c1(defpackage.md2 r19, defpackage.km2 r20, long r21, defpackage.zj1 r23, int r24, boolean r25, float r26, boolean r27) {
        /*
            Method dump skipped, instruction units count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mm2.c1(md2, km2, long, zj1, int, boolean, float, boolean):void");
    }

    public abstract void d1(v20 v20Var, zh1 zh1Var);

    public final void e1(long j, float f, pe1 pe1Var) {
        k1(pe1Var, false);
        boolean zA = js1.a(this.Q, j);
        xy1 xy1Var = this.F;
        if (!zA) {
            ((q9) az1.a(xy1Var)).O(-4.0f);
            this.Q = j;
            rr2 rr2Var = this.c0;
            if (rr2Var != null) {
                ((ci1) rr2Var).d(j);
            } else {
                mm2 mm2Var = this.H;
                if (mm2Var != null) {
                    mm2Var.V0();
                }
            }
            xy1Var.N(this);
            k82.z0(this);
            sr2 sr2Var = xy1Var.A;
            if (sr2Var != null) {
                ((q9) sr2Var).v(xy1Var);
            }
        }
        this.R = f;
        if (this == ((mm2) xy1Var.S.e)) {
            ((q9) az1.a(xy1Var)).getRectManager().h(xy1Var);
        }
        if (this.B) {
            return;
        }
        m0(v0());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f1(defpackage.jg2 r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instruction units count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mm2.f1(jg2, boolean, boolean):void");
    }

    public final void g1() {
        if (this.c0 != null) {
            k1(null, false);
            this.F.W(false);
        }
    }

    @Override // defpackage.jt1
    public final hy1 getLayoutDirection() {
        return this.F.M;
    }

    @Override // defpackage.gy1
    public final long h(long j) {
        long J = J(j);
        q9 q9Var = (q9) az1.a(this.F);
        q9Var.D();
        return xa2.b(q9Var.k0, J);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [md2] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [ug2] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [ug2] */
    public final void h1(eb2 eb2Var) {
        mm2 mm2Var;
        eb2 eb2Var2 = this.O;
        if (eb2Var != eb2Var2) {
            this.O = eb2Var;
            xy1 xy1Var = this.F;
            int i = 0;
            if (eb2Var2 == null || eb2Var.b() != eb2Var2.b() || eb2Var.a() != eb2Var2.a()) {
                int iB = eb2Var.b();
                int iA = eb2Var.a();
                rr2 rr2Var = this.c0;
                if (rr2Var != null) {
                    ((ci1) rr2Var).e((((long) iB) << 32) | (((long) iA) & 4294967295L));
                } else if (xy1Var.I() && (mm2Var = this.H) != null) {
                    mm2Var.V0();
                }
                g0((((long) iA) & 4294967295L) | (((long) iB) << 32));
                if (this.K != null) {
                    l1(false);
                }
                boolean zG = nm2.g(4);
                md2 md2VarO0 = O0();
                if (zG || (md2VarO0 = md2VarO0.r) != null) {
                    for (md2 md2VarQ0 = Q0(zG); md2VarQ0 != null && (md2VarQ0.q & 4) != 0; md2VarQ0 = md2VarQ0.s) {
                        if ((md2VarQ0.p & 4) != 0) {
                            ?? G = md2VarQ0;
                            ?? ug2Var = 0;
                            while (G != 0) {
                                if (G instanceof jx0) {
                                    ((jx0) G).m0();
                                } else if ((G.p & 4) != 0 && (G instanceof kr0)) {
                                    md2 md2Var = ((kr0) G).C;
                                    int i2 = 0;
                                    G = G;
                                    ug2Var = ug2Var;
                                    while (md2Var != null) {
                                        if ((md2Var.p & 4) != 0) {
                                            i2++;
                                            ug2Var = ug2Var;
                                            if (i2 == 1) {
                                                G = md2Var;
                                            } else {
                                                if (ug2Var == 0) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (G != 0) {
                                                    ug2Var.c(G);
                                                    G = 0;
                                                }
                                                ug2Var.c(md2Var);
                                            }
                                        }
                                        md2Var = md2Var.s;
                                        G = G;
                                        ug2Var = ug2Var;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                G = w80.g(ug2Var);
                            }
                        }
                        if (md2VarQ0 == md2VarO0) {
                            break;
                        }
                    }
                }
                sr2 sr2Var = xy1Var.A;
                if (sr2Var != null) {
                    ((q9) sr2Var).v(xy1Var);
                }
                xy1Var.N(this);
            }
            cg2 cg2Var = this.P;
            if ((cg2Var == null || cg2Var.e == 0) && eb2Var.c().isEmpty()) {
                return;
            }
            cg2 cg2Var2 = this.P;
            Map mapC = eb2Var.c();
            if (cg2Var2 != null && cg2Var2.e == mapC.size()) {
                Object[] objArr = cg2Var2.b;
                int[] iArr = cg2Var2.c;
                long[] jArr = cg2Var2.a;
                int length = jArr.length - 2;
                if (length < 0) {
                    return;
                }
                int i3 = 0;
                loop0: while (true) {
                    long j = jArr[i3];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i4 = 8 - ((~(i3 - length)) >>> 31);
                        for (int i5 = i; i5 < i4; i5++) {
                            if ((255 & j) < 128) {
                                int i6 = (i3 << 3) + i5;
                                Object obj = objArr[i6];
                                int i7 = iArr[i6];
                                Integer num = (Integer) mapC.get((y7) obj);
                                if (num == null || num.intValue() != i7) {
                                    break loop0;
                                }
                            }
                            j >>= 8;
                        }
                        if (i4 != 8) {
                            return;
                        }
                    }
                    if (i3 == length) {
                        return;
                    }
                    i3++;
                    i = 0;
                }
            }
            xy1Var.T.p.K.f();
            cg2 cg2Var3 = this.P;
            if (cg2Var3 == null) {
                cg2 cg2Var4 = sn2.a;
                cg2Var3 = new cg2();
                this.P = cg2Var3;
            }
            cg2Var3.a();
            for (Map.Entry entry : eb2Var.c().entrySet()) {
                cg2Var3.g(((Number) entry.getValue()).intValue(), entry.getKey());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [md2] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [md2] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // defpackage.dv2, defpackage.ya2
    public final Object i() {
        xy1 xy1Var = this.F;
        if (!xy1Var.S.f(64)) {
            return null;
        }
        O0();
        Object objL0 = null;
        for (md2 md2Var = (gw3) xy1Var.S.f; md2Var != null; md2Var = md2Var.r) {
            if ((md2Var.p & 64) != 0) {
                ?? G = md2Var;
                ?? ug2Var = 0;
                while (G != 0) {
                    if (G instanceof xs2) {
                        objL0 = ((xs2) G).l0(objL0);
                    } else if ((G.p & 64) != 0 && (G instanceof kr0)) {
                        md2 md2Var2 = ((kr0) G).C;
                        int i = 0;
                        G = G;
                        ug2Var = ug2Var;
                        while (md2Var2 != null) {
                            if ((md2Var2.p & 64) != 0) {
                                i++;
                                ug2Var = ug2Var;
                                if (i == 1) {
                                    G = md2Var2;
                                } else {
                                    if (ug2Var == 0) {
                                        ug2Var = new ug2(new md2[16]);
                                    }
                                    if (G != 0) {
                                        ug2Var.c(G);
                                        G = 0;
                                    }
                                    ug2Var.c(md2Var2);
                                }
                            }
                            md2Var2 = md2Var2.s;
                            G = G;
                            ug2Var = ug2Var;
                        }
                        if (i == 1) {
                        }
                    }
                    G = w80.g(ug2Var);
                }
            }
        }
        return objL0;
    }

    public final void i1(md2 md2Var, km2 km2Var, long j, zj1 zj1Var, int i, boolean z, float f) {
        int i2;
        if (md2Var == null) {
            U0(km2Var, j, zj1Var, i, z);
            return;
        }
        if (!km2Var.h(md2Var)) {
            i1(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z, f);
            return;
        }
        if (!km2Var.b(md2Var)) {
            c1(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z, f, false);
            return;
        }
        xf2 xf2Var = zj1Var.o;
        dg2 dg2Var = zj1Var.n;
        int i3 = zj1Var.p;
        int i4 = dg2Var.b;
        if (i3 != i4 - 1) {
            long jA = zj1Var.a();
            int i5 = zj1Var.p;
            int i6 = dg2Var.b;
            int i7 = i6 - 1;
            zj1Var.p = i7;
            zj1Var.d(i6, dg2Var.b);
            zj1Var.p++;
            dg2Var.a(md2Var);
            xf2Var.a(se0.b(f, z, false));
            c1(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z, f, false);
            zj1Var.p = i7;
            long jA2 = zj1Var.a();
            if (zj1Var.p + 1 >= dg2Var.b - 1 || n44.e0(jA, jA2) <= 0) {
                zj1Var.d(zj1Var.p + 1, dg2Var.b);
            } else {
                int i8 = i5 + 1;
                boolean zV0 = n44.v0(jA2);
                int i9 = zj1Var.p;
                zj1Var.d(i8, zV0 ? i9 + 2 : i9 + 1);
            }
            zj1Var.p = i5;
            return;
        }
        int i10 = i3 + 1;
        zj1Var.d(i10, i4);
        zj1Var.p++;
        dg2Var.a(md2Var);
        xf2Var.a(se0.b(f, z, false));
        c1(k75.d(md2Var, km2Var.d()), km2Var, j, zj1Var, i, z, f, false);
        zj1Var.p = i3;
        if (i10 == dg2Var.b - 1 || n44.v0(zj1Var.a())) {
            int i11 = zj1Var.p;
            int i12 = i11 + 1;
            dg2Var.k(i12);
            if (i12 < 0 || i12 >= (i2 = xf2Var.b)) {
                mk0.h("Index must be between 0 and size");
                return;
            }
            long[] jArr = xf2Var.a;
            long j2 = jArr[i12];
            if (i12 != i2 - 1) {
                ji.P(jArr, jArr, i12, i11 + 2, i2);
            }
            xf2Var.b--;
        }
    }

    @Override // defpackage.gy1
    public final gy1 j() {
        boolean z = O0().A;
        xy1 xy1Var = this.F;
        if (!z) {
            StringBuilder sb = new StringBuilder("LayoutCoordinate operations are only valid when isAttached is true");
            for (xy1 xy1VarU = xy1Var; xy1VarU != null; xy1VarU = xy1VarU.u()) {
                sb.append("\n|");
                sb.append(xy1VarU);
                sb.append(" isAttached=");
                sb.append(xy1VarU.H());
                sb.append(" modifier=");
                sb.append(xy1VarU.X);
                sb.append(" tail=");
                sb.append(O0());
            }
            ar1.b(sb.toString());
        }
        X0();
        return ((mm2) xy1Var.S.e).H;
    }

    public final l33 j1() {
        if (O0().A) {
            gy1 gy1VarD = zf5.D(this);
            jg2 jg2Var = this.S;
            if (jg2Var == null) {
                jg2Var = new jg2();
                this.S = jg2Var;
            }
            long jF0 = F0(N0());
            int i = (int) (jF0 >> 32);
            jg2Var.a = -Float.intBitsToFloat(i);
            int i2 = (int) (jF0 & 4294967295L);
            jg2Var.b = -Float.intBitsToFloat(i2);
            jg2Var.c = Float.intBitsToFloat(i) + a0();
            jg2Var.d = Float.intBitsToFloat(i2) + Y();
            while (this != gy1VarD) {
                this.f1(jg2Var, false, true);
                if (!jg2Var.b()) {
                    this = this.H;
                    this.getClass();
                }
            }
            return new l33(jg2Var.a, jg2Var.b, jg2Var.c, jg2Var.d);
        }
        return l33.e;
    }

    @Override // defpackage.as0
    public final float k() {
        return this.F.L.k();
    }

    public final void k1(pe1 pe1Var, boolean z) {
        sr2 sr2Var;
        ug2 ug2Var;
        Reference referencePoll;
        ga gaVar;
        ug2 ug2Var2;
        Reference referencePoll2;
        Object obj;
        int i = 0;
        xy1 xy1Var = this.F;
        boolean z2 = (!z && this.K == pe1Var && nt1.g(this.L, xy1Var.L) && this.M == xy1Var.M) ? false : true;
        this.L = xy1Var.L;
        this.M = xy1Var.M;
        boolean zH = xy1Var.H();
        lm2 lm2Var = this.a0;
        if (!zH || pe1Var == null) {
            this.K = null;
            rr2 rr2Var = this.c0;
            if (rr2Var != null) {
                ci1 ci1Var = (ci1) rr2Var;
                if (!gg4.J(ci1Var.b())) {
                    xy1Var.N(this);
                }
                ci1Var.q = null;
                ci1Var.r = null;
                ci1Var.t = true;
                ci1Var.f(false);
                yh1 yh1Var = ci1Var.o;
                if (yh1Var != null) {
                    yh1Var.a(ci1Var.n);
                    q9 q9Var = ci1Var.p;
                    pc4 pc4Var = q9Var.B0;
                    do {
                        ReferenceQueue referenceQueue = (ReferenceQueue) pc4Var.p;
                        ug2Var = (ug2) pc4Var.o;
                        referencePoll = referenceQueue.poll();
                        if (referencePoll != null) {
                            ug2Var.k(referencePoll);
                        }
                    } while (referencePoll != null);
                    ug2Var.c(new WeakReference(ci1Var, (ReferenceQueue) pc4Var.p));
                    q9Var.M.j(ci1Var);
                }
                this.c0 = null;
                xy1Var.W = true;
                lm2Var.a();
                if (O0().A && xy1Var.I() && (sr2Var = xy1Var.A) != null) {
                    ((q9) sr2Var).v(xy1Var);
                }
            }
            this.b0 = false;
            return;
        }
        this.K = pe1Var;
        if (this.c0 != null) {
            if (z2) {
                l1(true);
                return;
            }
            return;
        }
        sr2 sr2VarA = az1.a(xy1Var);
        ga gaVar2 = this.Z;
        if (gaVar2 == null) {
            ga gaVar3 = new ga(3, this, new lm2(this, i));
            this.Z = gaVar3;
            gaVar = gaVar3;
        } else {
            gaVar = gaVar2;
        }
        q9 q9Var2 = (q9) sr2VarA;
        pc4 pc4Var2 = q9Var2.B0;
        do {
            ReferenceQueue referenceQueue2 = (ReferenceQueue) pc4Var2.p;
            ug2Var2 = (ug2) pc4Var2.o;
            referencePoll2 = referenceQueue2.poll();
            if (referencePoll2 != null) {
                ug2Var2.k(referencePoll2);
            }
        } while (referencePoll2 != null);
        while (true) {
            int i2 = ug2Var2.p;
            if (i2 == 0) {
                obj = null;
                break;
            } else {
                obj = ((Reference) ug2Var2.l(i2 - 1)).get();
                if (obj != null) {
                    break;
                }
            }
        }
        rr2 ci1Var2 = (rr2) obj;
        if (ci1Var2 != null) {
            ci1 ci1Var3 = (ci1) ci1Var2;
            yh1 yh1Var2 = ci1Var3.o;
            if (yh1Var2 == null) {
                throw di0.m("currently reuse is only supported when we manage the layer lifecycle");
            }
            if (!ci1Var3.n.s) {
                ar1.a("layer should have been released before reuse");
            }
            ci1Var3.n = yh1Var2.b();
            ci1Var3.t = false;
            ci1Var3.q = gaVar;
            ci1Var3.r = lm2Var;
            ci1Var3.D = false;
            ci1Var3.E = false;
            ci1Var3.F = true;
            xa2.d(ci1Var3.f51u);
            float[] fArr = ci1Var3.v;
            if (fArr != null) {
                xa2.d(fArr);
            }
            ci1Var3.B = f14.b;
            ci1Var3.G = false;
            ci1Var3.s = 9223372034707292159L;
            ci1Var3.C = null;
            ci1Var3.A = 0;
        } else {
            ci1Var2 = new ci1(q9Var2.getGraphicsContext().b(), q9Var2.getGraphicsContext(), q9Var2, gaVar, lm2Var);
        }
        ci1 ci1Var4 = (ci1) ci1Var2;
        ci1Var4.e(this.p);
        ci1Var4.d(this.Q);
        this.c0 = ci1Var2;
        l1(true);
        xy1Var.W = true;
        lm2Var.a();
    }

    public final void l1(boolean z) {
        char c;
        int i;
        boolean z2;
        sr2 sr2Var;
        ne1 ne1Var;
        ne1 ne1Var2;
        rr2 rr2Var = this.c0;
        pe1 pe1Var = this.K;
        if (rr2Var == null) {
            if (pe1Var == null) {
                return;
            }
            ar1.b("null layer with a non-null layerBlock");
            return;
        }
        if (pe1Var == null) {
            throw di0.m("updateLayerParameters requires a non-null layerBlock");
        }
        o83 o83Var = d0;
        o83Var.a();
        xy1 xy1Var = this.F;
        o83Var.A = xy1Var.L;
        o83Var.B = xy1Var.M;
        o83Var.y = se0.H(this.p);
        ((q9) az1.a(xy1Var)).getSnapshotObserver().a.c(this, l9.S, new j9(8, pe1Var, this));
        cy1 cy1Var = this.T;
        if (cy1Var == null) {
            cy1Var = new cy1();
            this.T = cy1Var;
        }
        cy1 cy1Var2 = e0;
        cy1Var2.getClass();
        cy1Var2.a = cy1Var.a;
        cy1Var2.b = cy1Var.b;
        cy1Var2.c = cy1Var.c;
        cy1Var2.d = cy1Var.d;
        cy1Var.a = o83Var.o;
        cy1Var.b = o83Var.p;
        cy1Var.c = o83Var.f239u;
        cy1Var.d = o83Var.v;
        ci1 ci1Var = (ci1) rr2Var;
        q9 q9Var = ci1Var.p;
        int i2 = o83Var.n | ci1Var.A;
        ci1Var.y = o83Var.B;
        as0 as0Var = o83Var.A;
        ci1Var.x = as0Var;
        if ((1048576 & i2) != 0) {
            zh1 zh1Var = ci1Var.n;
            o83Var.z.getClass();
            int iN = as0Var.N(0.0f);
            o83Var.z.getClass();
            int iN2 = as0Var.N(0.0f);
            o83Var.z.getClass();
            int iN3 = as0Var.N(0.0f);
            o83Var.z.getClass();
            int iN4 = as0Var.N(0.0f);
            zh1Var.v = iN;
            zh1Var.w = iN2;
            zh1Var.x = iN3;
            zh1Var.y = iN4;
            zh1Var.a.h(iN, iN2, iN3, iN4);
            ci1Var.c();
        }
        int i3 = i2 & BlockstoreClient.MAX_SIZE;
        if (i3 != 0) {
            ci1Var.B = o83Var.v;
        }
        if ((i2 & 1) != 0) {
            zh1 zh1Var2 = ci1Var.n;
            float f = o83Var.o;
            bi1 bi1Var = zh1Var2.a;
            if (bi1Var.f() != f) {
                bi1Var.p(f);
            }
        }
        if ((i2 & 2) != 0) {
            zh1 zh1Var3 = ci1Var.n;
            float f2 = o83Var.p;
            bi1 bi1Var2 = zh1Var3.a;
            if (bi1Var2.L() != f2) {
                bi1Var2.E(f2);
            }
        }
        if ((i2 & 4) != 0) {
            zh1 zh1Var4 = ci1Var.n;
            float f3 = o83Var.q;
            bi1 bi1Var3 = zh1Var4.a;
            if (bi1Var3.c() != f3) {
                bi1Var3.e(f3);
            }
        }
        if ((i2 & 8) != 0) {
            bi1 bi1Var4 = ci1Var.n.a;
            if (bi1Var4.t() != 0.0f) {
                bi1Var4.u();
            }
        }
        if ((i2 & 16) != 0) {
            bi1 bi1Var5 = ci1Var.n.a;
            if (bi1Var5.i() != 0.0f) {
                bi1Var5.j();
            }
        }
        if ((i2 & 32) != 0) {
            zh1 zh1Var5 = ci1Var.n;
            float f4 = o83Var.r;
            bi1 bi1Var6 = zh1Var5.a;
            if (bi1Var6.J() != f4) {
                bi1Var6.g(f4);
                zh1Var5.g = true;
                zh1Var5.a();
            }
            if (o83Var.r > 0.0f && !ci1Var.G && (ne1Var2 = ci1Var.r) != null) {
                ne1Var2.a();
            }
        }
        if ((i2 & 64) != 0) {
            zh1 zh1Var6 = ci1Var.n;
            long j = o83Var.s;
            bi1 bi1Var7 = zh1Var6.a;
            if (!t70.c(j, bi1Var7.P())) {
                bi1Var7.m(j);
            }
        }
        if ((i2 & 128) != 0) {
            zh1 zh1Var7 = ci1Var.n;
            long j2 = o83Var.t;
            bi1 bi1Var8 = zh1Var7.a;
            if (!t70.c(j2, bi1Var8.l())) {
                bi1Var8.D(j2);
            }
        }
        if ((i2 & 1024) != 0) {
            bi1 bi1Var9 = ci1Var.n.a;
            if (bi1Var9.M() != 0.0f) {
                bi1Var9.C();
            }
        }
        if ((i2 & 256) != 0) {
            bi1 bi1Var10 = ci1Var.n.a;
            if (bi1Var10.y() != 0.0f) {
                bi1Var10.d();
            }
        }
        if ((i2 & 512) != 0) {
            bi1 bi1Var11 = ci1Var.n.a;
            if (bi1Var11.H() != 0.0f) {
                bi1Var11.k();
            }
        }
        if ((i2 & 2048) != 0) {
            zh1 zh1Var8 = ci1Var.n;
            float f5 = o83Var.f239u;
            bi1 bi1Var12 = zh1Var8.a;
            if (bi1Var12.r() != f5) {
                bi1Var12.I(f5);
            }
        }
        if (i3 != 0) {
            c = ' ';
            boolean zA = f14.a(ci1Var.B, f14.b);
            zh1 zh1Var9 = ci1Var.n;
            if (!zA) {
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (ci1Var.B >> 32)) * ((int) (ci1Var.s >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (ci1Var.B & 4294967295L)) * ((int) (ci1Var.s & 4294967295L)))) & 4294967295L);
                if (!go2.b(zh1Var9.z, jFloatToRawIntBits)) {
                    zh1Var9.z = jFloatToRawIntBits;
                    zh1Var9.a.O(jFloatToRawIntBits);
                }
            } else if (!go2.b(zh1Var9.z, 9205357640488583168L)) {
                zh1Var9.z = 9205357640488583168L;
                zh1Var9.a.O(9205357640488583168L);
            }
        } else {
            c = ' ';
        }
        if ((i2 & 16384) != 0) {
            zh1 zh1Var10 = ci1Var.n;
            boolean z3 = o83Var.x;
            if (zh1Var10.A != z3) {
                zh1Var10.A = z3;
                zh1Var10.g = true;
                zh1Var10.a();
            }
        }
        if ((131072 & i2) != 0) {
            bi1 bi1Var13 = ci1Var.n.a;
        }
        if ((262144 & i2) != 0) {
            bi1 bi1Var14 = ci1Var.n.a;
            if (!nt1.g(bi1Var14.A(), null)) {
                bi1Var14.o();
            }
        }
        if ((524288 & i2) != 0) {
            zh1 zh1Var11 = ci1Var.n;
            int i4 = o83Var.C;
            bi1 bi1Var15 = zh1Var11.a;
            if (bi1Var15.N() != i4) {
                bi1Var15.q(i4);
            }
        }
        if ((32768 & i2) != 0) {
            bi1 bi1Var16 = ci1Var.n.a;
            if (bi1Var16.x() != 0) {
                bi1Var16.B(0);
            }
        }
        if ((i2 & 7963) != 0) {
            ci1Var.D = true;
            ci1Var.E = true;
        }
        if (nt1.g(ci1Var.C, o83Var.D)) {
            i = i2;
            z2 = false;
        } else {
            fl4 fl4Var = o83Var.D;
            ci1Var.C = fl4Var;
            if (fl4Var == null) {
                i = i2;
            } else {
                zh1 zh1Var12 = ci1Var.n;
                if (fl4Var instanceof lr2) {
                    l33 l33Var = ((lr2) fl4Var).x;
                    float f6 = l33Var.a;
                    float f7 = l33Var.b;
                    i = i2;
                    zh1Var12.e((((long) Float.floatToRawIntBits(f6)) << c) | (((long) Float.floatToRawIntBits(f7)) & 4294967295L), (((long) Float.floatToRawIntBits(l33Var.c - f6)) << c) | (((long) Float.floatToRawIntBits(l33Var.d - f7)) & 4294967295L), 0.0f);
                } else {
                    i = i2;
                    if (fl4Var instanceof kr2) {
                        sb sbVar = ((kr2) fl4Var).x;
                        zh1Var12.k = null;
                        zh1Var12.i = 9205357640488583168L;
                        zh1Var12.h = 0L;
                        zh1Var12.j = 0.0f;
                        zh1Var12.g = true;
                        zh1Var12.n = false;
                        zh1Var12.l = sbVar;
                        zh1Var12.a();
                    } else {
                        if (!(fl4Var instanceof mr2)) {
                            p61.x();
                            return;
                        }
                        mr2 mr2Var = (mr2) fl4Var;
                        sb sbVar2 = mr2Var.y;
                        if (sbVar2 != null) {
                            zh1Var12.k = null;
                            zh1Var12.i = 9205357640488583168L;
                            zh1Var12.h = 0L;
                            zh1Var12.j = 0.0f;
                            zh1Var12.g = true;
                            zh1Var12.n = false;
                            zh1Var12.l = sbVar2;
                            zh1Var12.a();
                        } else {
                            ka3 ka3Var = mr2Var.x;
                            zh1Var12.e((((long) Float.floatToRawIntBits(ka3Var.a)) << c) | (((long) Float.floatToRawIntBits(ka3Var.b)) & 4294967295L), (((long) Float.floatToRawIntBits(ka3Var.b())) << c) | (((long) Float.floatToRawIntBits(ka3Var.a())) & 4294967295L), Float.intBitsToFloat((int) (ka3Var.h >> c)));
                        }
                    }
                }
                if (Build.VERSION.SDK_INT < 33 && (((fl4Var instanceof kr2) || ((fl4Var instanceof mr2) && !k30.z(((mr2) fl4Var).x))) && (ne1Var = ci1Var.r) != null)) {
                    ne1Var.a();
                }
            }
            z2 = true;
        }
        ci1Var.A = o83Var.n;
        if (i != 0 || z2) {
            if (Build.VERSION.SDK_INT >= 26) {
                ViewParent parent = q9Var.getParent();
                if (parent != null) {
                    parent.onDescendantInvalidated(q9Var, q9Var);
                }
            } else {
                q9Var.invalidate();
            }
            if (q9.l()) {
                q9Var.O(0.0f);
            }
        }
        boolean z4 = this.J;
        this.J = o83Var.x;
        this.N = o83Var.q;
        boolean z5 = cy1Var2.a == cy1Var.a && cy1Var2.b == cy1Var.b && cy1Var2.c == cy1Var.c && f14.a(cy1Var2.d, cy1Var.d);
        if (z && ((!z5 || z4 != this.J) && (sr2Var = xy1Var.A) != null)) {
            ((q9) sr2Var).v(xy1Var);
        }
        if (z5) {
            return;
        }
        xy1Var.N(this);
        if (xy1Var.c0 > 0) {
            q9 q9Var2 = (q9) az1.a(xy1Var);
            xh1 xh1Var = q9Var2.f0.e;
            xh1Var.getClass();
            if (xy1Var.c0 > 0) {
                ((ug2) xh1Var.n).c(xy1Var);
                xy1Var.b0 = true;
            }
            q9Var2.I(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1(long r24) {
        /*
            Method dump skipped, instruction units count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mm2.m1(long):boolean");
    }

    @Override // defpackage.k82
    public final k82 n0() {
        return this.G;
    }

    @Override // defpackage.k82
    public final boolean q0() {
        return this.O != null;
    }

    @Override // defpackage.k82
    public final xy1 u0() {
        return this.F;
    }

    @Override // defpackage.k82
    public final eb2 v0() {
        eb2 eb2Var = this.O;
        if (eb2Var != null) {
            return eb2Var;
        }
        k21.n("Asking for measurement result of unmeasured layout modifier");
        return null;
    }

    @Override // defpackage.k82, defpackage.tr2
    public final boolean w() {
        return (this.c0 == null || this.I || !this.F.H()) ? false : true;
    }

    @Override // defpackage.k82
    public final k82 w0() {
        return this.H;
    }

    @Override // defpackage.k82
    public final long x0() {
        return this.Q;
    }

    @Override // defpackage.gy1
    public final long y(gy1 gy1Var, long j) {
        return F(gy1Var, j);
    }

    @Override // defpackage.k82
    public final gy1 o0() {
        return this;
    }
}
