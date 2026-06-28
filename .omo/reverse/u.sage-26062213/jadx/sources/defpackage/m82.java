package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class m82 extends k82 implements ya2 {
    public final mm2 F;
    public LinkedHashMap H;
    public eb2 J;
    public final cg2 K;
    public long G = 0;
    public final n82 I = new n82(this);

    public m82(mm2 mm2Var) {
        this.F = mm2Var;
        cg2 cg2Var = sn2.a;
        this.K = new cg2();
    }

    public static final void D0(m82 m82Var, eb2 eb2Var) {
        LinkedHashMap linkedHashMap;
        if (eb2Var != null) {
            m82Var.g0((((long) eb2Var.a()) & 4294967295L) | (((long) eb2Var.b()) << 32));
        } else {
            m82Var.g0(0L);
        }
        if (!nt1.g(m82Var.J, eb2Var) && eb2Var != null && ((((linkedHashMap = m82Var.H) != null && !linkedHashMap.isEmpty()) || !eb2Var.c().isEmpty()) && !nt1.g(eb2Var.c(), m82Var.H))) {
            q82 q82Var = m82Var.F.F.T.q;
            q82Var.getClass();
            q82Var.E.f();
            LinkedHashMap linkedHashMap2 = m82Var.H;
            if (linkedHashMap2 == null) {
                linkedHashMap2 = new LinkedHashMap();
                m82Var.H = linkedHashMap2;
            }
            linkedHashMap2.clear();
            linkedHashMap2.putAll(eb2Var.c());
        }
        m82Var.J = eb2Var;
    }

    @Override // defpackage.k82
    public final void B0() {
        d0(this.G, 0.0f, null);
    }

    public void E0() {
        v0().d();
    }

    public final void F0(long j) {
        if (!js1.a(this.G, j)) {
            this.G = j;
            mm2 mm2Var = this.F;
            q82 q82Var = mm2Var.F.T.q;
            if (q82Var != null) {
                q82Var.m0();
            }
            k82.z0(mm2Var);
        }
        if (this.B) {
            return;
        }
        m0(v0());
    }

    public final long G0(m82 m82Var, boolean z) {
        long jC = 0;
        while (!this.equals(m82Var)) {
            if (!this.y || !z) {
                jC = js1.c(jC, this.G);
            }
            mm2 mm2Var = this.F.H;
            mm2Var.getClass();
            this = mm2Var.M0();
            this.getClass();
        }
        return jC;
    }

    @Override // defpackage.as0
    public final float b() {
        return this.F.b();
    }

    @Override // defpackage.dv2
    public final void d0(long j, float f, pe1 pe1Var) {
        F0(j);
        if (this.A) {
            return;
        }
        E0();
    }

    @Override // defpackage.jt1
    public final hy1 getLayoutDirection() {
        return this.F.F.M;
    }

    @Override // defpackage.dv2, defpackage.ya2
    public final Object i() {
        return this.F.i();
    }

    @Override // defpackage.as0
    public final float k() {
        return this.F.k();
    }

    @Override // defpackage.k82
    public final k82 n0() {
        mm2 mm2Var = this.F.G;
        if (mm2Var != null) {
            return mm2Var.M0();
        }
        return null;
    }

    @Override // defpackage.k82
    public final gy1 o0() {
        return this.I;
    }

    @Override // defpackage.k82, defpackage.jt1
    public final boolean q() {
        return true;
    }

    @Override // defpackage.k82
    public final boolean q0() {
        return this.J != null;
    }

    @Override // defpackage.k82
    public final xy1 u0() {
        return this.F.F;
    }

    @Override // defpackage.k82
    public final eb2 v0() {
        eb2 eb2Var = this.J;
        if (eb2Var != null) {
            return eb2Var;
        }
        throw di0.m("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override // defpackage.k82
    public final k82 w0() {
        mm2 mm2Var = this.F.H;
        if (mm2Var != null) {
            return mm2Var.M0();
        }
        return null;
    }

    @Override // defpackage.k82
    public final long x0() {
        return this.G;
    }
}
