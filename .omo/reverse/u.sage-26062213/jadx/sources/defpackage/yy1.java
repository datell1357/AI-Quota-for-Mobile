package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yy1 {
    public final d8 a;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public d8 h;
    public final /* synthetic */ int j;
    public boolean b = true;
    public final HashMap i = new HashMap();

    public yy1(d8 d8Var, int i) {
        this.j = i;
        this.a = d8Var;
    }

    public static final void a(yy1 yy1Var, y7 y7Var, int i, mm2 mm2Var) {
        HashMap map = yy1Var.i;
        float f = i;
        long jFloatToRawIntBits = ((long) Float.floatToRawIntBits(f)) << 32;
        long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(f)) & 4294967295L;
        while (true) {
            long jC = jFloatToRawIntBits | jFloatToRawIntBits2;
            do {
                switch (yy1Var.j) {
                    case 0:
                        rr2 rr2Var = mm2Var.c0;
                        if (rr2Var != null) {
                            ci1 ci1Var = (ci1) rr2Var;
                            float[] fArrB = ci1Var.b();
                            if (!ci1Var.F) {
                                jC = xa2.b(fArrB, jC);
                            }
                        }
                        jC = ca.C(jC, mm2Var.Q);
                        break;
                    default:
                        m82 m82VarM0 = mm2Var.M0();
                        m82VarM0.getClass();
                        long j = m82VarM0.G;
                        jC = go2.e((((long) Float.floatToRawIntBits((int) (j & 4294967295L))) & 4294967295L) | (((long) Float.floatToRawIntBits((int) (j >> 32))) << 32), jC);
                        break;
                }
                mm2Var = mm2Var.H;
                mm2Var.getClass();
                if (mm2Var.equals(yy1Var.a.n())) {
                    int iRound = Math.round(y7Var instanceof ck1 ? Float.intBitsToFloat((int) (jC & 4294967295L)) : Float.intBitsToFloat((int) (jC >> 32)));
                    if (map.containsKey(y7Var)) {
                        int iIntValue = ((Number) oa2.Z(y7Var, map)).intValue();
                        ck1 ck1Var = b8.a;
                        iRound = ((Number) y7Var.a.f(Integer.valueOf(iIntValue), Integer.valueOf(iRound))).intValue();
                    }
                    map.put(y7Var, Integer.valueOf(iRound));
                    return;
                }
            } while (!yy1Var.b(mm2Var).containsKey(y7Var));
            float fC = yy1Var.c(mm2Var, y7Var);
            long jFloatToRawIntBits3 = Float.floatToRawIntBits(fC);
            long jFloatToRawIntBits4 = Float.floatToRawIntBits(fC);
            jFloatToRawIntBits = jFloatToRawIntBits3 << 32;
            jFloatToRawIntBits2 = jFloatToRawIntBits4 & 4294967295L;
        }
    }

    public final Map b(mm2 mm2Var) {
        switch (this.j) {
            case 0:
                return mm2Var.v0().c();
            default:
                m82 m82VarM0 = mm2Var.M0();
                m82VarM0.getClass();
                return m82VarM0.v0().c();
        }
    }

    public final int c(mm2 mm2Var, y7 y7Var) {
        switch (this.j) {
            case 0:
                return mm2Var.V(y7Var);
            default:
                m82 m82VarM0 = mm2Var.M0();
                m82VarM0.getClass();
                return m82VarM0.V(y7Var);
        }
    }

    public final boolean d() {
        return this.c || this.e || this.f || this.g;
    }

    public final boolean e() {
        h();
        return this.h != null;
    }

    public final void f() {
        this.b = true;
        d8 d8Var = this.a;
        d8 d8VarR = d8Var.r();
        if (d8VarR == null) {
            return;
        }
        if (this.c) {
            d8VarR.Q();
        } else if (this.e || this.d) {
            d8VarR.requestLayout();
        }
        if (this.f) {
            d8Var.Q();
        }
        if (this.g) {
            d8Var.requestLayout();
        }
        d8VarR.c().f();
    }

    public final void g() {
        HashMap map = this.i;
        map.clear();
        c8 c8Var = new c8(0, this);
        d8 d8Var = this.a;
        d8Var.l(c8Var);
        map.putAll(b(d8Var.n()));
        this.b = false;
    }

    public final void h() {
        yy1 yy1VarC;
        yy1 yy1VarC2;
        boolean zD = d();
        d8 d8Var = this.a;
        if (!zD) {
            d8 d8VarR = d8Var.r();
            if (d8VarR == null) {
                return;
            }
            d8Var = d8VarR.c().h;
            if (d8Var == null || !d8Var.c().d()) {
                d8 d8Var2 = this.h;
                if (d8Var2 == null || d8Var2.c().d()) {
                    return;
                }
                d8 d8VarR2 = d8Var2.r();
                if (d8VarR2 != null && (yy1VarC2 = d8VarR2.c()) != null) {
                    yy1VarC2.h();
                }
                d8 d8VarR3 = d8Var2.r();
                d8Var = (d8VarR3 == null || (yy1VarC = d8VarR3.c()) == null) ? null : yy1VarC.h;
            }
        }
        this.h = d8Var;
    }
}
