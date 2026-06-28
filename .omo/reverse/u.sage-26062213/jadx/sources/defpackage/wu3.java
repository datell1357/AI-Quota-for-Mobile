package defpackage;

import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wu3 {
    public static final lc0 a = new lc0(new t52(29));

    public static final void a(final nd2 nd2Var, jl3 jl3Var, final long j, long j2, float f, fx fxVar, final ka0 ka0Var, ag1 ag1Var, int i, int i2) {
        if ((i2 & 2) != 0) {
            jl3Var = k75.d;
        }
        final jl3 jl3Var2 = jl3Var;
        long jB = (i2 & 8) != 0 ? a80.b(j, ag1Var) : j2;
        final float f2 = (i2 & 32) != 0 ? 0.0f : f;
        final fx fxVar2 = (i2 & 64) != 0 ? null : fxVar;
        lc0 lc0Var = a;
        final float f3 = ((cw0) ag1Var.j(lc0Var)).n + 0.0f;
        gg4.b(new j03[]{bg0.a.a(new t70(jB)), lc0Var.a(new cw0(f3))}, qj0.U(421772006, new df1() { // from class: uu3
            @Override // defpackage.df1
            public final Object f(Object obj, Object obj2) {
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                boolean zN = ag1Var2.N(iIntValue & 1, (iIntValue & 3) != 2);
                t64 t64Var = t64.a;
                if (!zN) {
                    ag1Var2.Q();
                    return t64Var;
                }
                nd2 nd2VarC = wu3.c(nd2Var, jl3Var2, wu3.d(j, f3, ag1Var2), fxVar2, ((as0) ag1Var2.j(kc0.h)).v(f2));
                Object objK = ag1Var2.K();
                bx3 bx3Var = rb0.a;
                if (objK == bx3Var) {
                    objK = new jd3(10);
                    ag1Var2.g0(objK);
                }
                AtomicInteger atomicInteger = dh3.a;
                nd2 nd2VarC2 = nd2VarC.c(new gh((pe1) objK, false));
                Object objK2 = ag1Var2.K();
                if (objK2 == bx3Var) {
                    objK2 = eq0.c;
                    ag1Var2.g0(objK2);
                }
                nd2 nd2VarA = dv3.a(nd2VarC2, t64Var, (PointerInputEventHandler) objK2);
                db2 db2VarD = qx.d(mj1.o, true);
                int iHashCode = Long.hashCode(ag1Var2.T);
                hu2 hu2VarL = ag1Var2.l();
                nd2 nd2VarH = is0.H(ag1Var2, nd2VarA);
                lb0.c.getClass();
                ic0 ic0Var = kb0.b;
                ag1Var2.Z();
                if (ag1Var2.S) {
                    ag1Var2.k(ic0Var);
                } else {
                    ag1Var2.j0();
                }
                ht4.D(kb0.f, ag1Var2, db2VarD);
                ht4.D(kb0.e, ag1Var2, hu2VarL);
                ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode));
                ht4.y(ag1Var2, kb0.h);
                ht4.D(kb0.d, ag1Var2, nd2VarH);
                ka0Var.f(ag1Var2, 0);
                ag1Var2.p(true);
                return t64Var;
            }
        }, ag1Var), ag1Var, 56);
    }

    public static final void b(final ne1 ne1Var, final nd2 nd2Var, final boolean z, final jl3 jl3Var, final long j, long j2, final float f, final fx fxVar, vf2 vf2Var, final ka0 ka0Var, ag1 ag1Var, int i) {
        final vf2 vf2Var2;
        if (vf2Var == null) {
            ag1Var.W(-1701074900);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new vf2();
                ag1Var.g0(objK);
            }
            ag1Var.p(false);
            vf2Var2 = (vf2) objK;
        } else {
            ag1Var.W(2023335947);
            ag1Var.p(false);
            vf2Var2 = vf2Var;
        }
        lc0 lc0Var = a;
        final float f2 = ((cw0) ag1Var.j(lc0Var)).n + 0.0f;
        gg4.b(new j03[]{bg0.a.a(new t70(j2)), lc0Var.a(new cw0(f2))}, qj0.U(849208527, new df1() { // from class: vu3
            @Override // defpackage.df1
            public final Object f(Object obj, Object obj2) {
                ag1 ag1Var2 = (ag1) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (ag1Var2.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                    ck1 ck1Var = at1.a;
                    nd2 nd2VarC = nd2Var.c(fd2.b);
                    lc0 lc0Var2 = b93.a;
                    o93 o93Var = ((p93) ag1Var2.j(lc0Var2)).a;
                    nd2 nd2VarC2 = nd2VarC.c(kd2.b);
                    long jD = wu3.d(j, f2, ag1Var2);
                    float fV = ((as0) ag1Var2.j(kc0.h)).v(f);
                    jl3 jl3Var2 = jl3Var;
                    nd2 nd2VarC3 = wu3.c(nd2VarC2, jl3Var2, jD, fxVar, fV);
                    o93 o93Var2 = ((p93) ag1Var2.j(lc0Var2)).a;
                    nd2 nd2VarO = mt1.o(tv4.m(nd2VarC3, vf2Var2, b93.a(0.0f, jl3Var2, 215), z, null, ne1Var, 24));
                    db2 db2VarD = qx.d(mj1.o, true);
                    int iHashCode = Long.hashCode(ag1Var2.T);
                    hu2 hu2VarL = ag1Var2.l();
                    nd2 nd2VarH = is0.H(ag1Var2, nd2VarO);
                    lb0.c.getClass();
                    ic0 ic0Var = kb0.b;
                    ag1Var2.Z();
                    if (ag1Var2.S) {
                        ag1Var2.k(ic0Var);
                    } else {
                        ag1Var2.j0();
                    }
                    ht4.D(kb0.f, ag1Var2, db2VarD);
                    ht4.D(kb0.e, ag1Var2, hu2VarL);
                    ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode));
                    ht4.y(ag1Var2, kb0.h);
                    ht4.D(kb0.d, ag1Var2, nd2VarH);
                    ka0Var.f(ag1Var2, 0);
                    ag1Var2.p(true);
                } else {
                    ag1Var2.Q();
                }
                return t64.a;
            }
        }, ag1Var), ag1Var, 56);
    }

    public static final nd2 c(nd2 nd2Var, jl3 jl3Var, long j, fx fxVar, float f) {
        jl3 jl3Var2;
        nd2 nd2VarR0;
        nd2 exVar = kd2.b;
        if (f > 0.0f) {
            jl3Var2 = jl3Var;
            nd2VarR0 = n44.r0(exVar, 0.0f, 0.0f, 0.0f, f, jl3Var2, false, 1042399);
        } else {
            jl3Var2 = jl3Var;
            nd2VarR0 = exVar;
        }
        nd2 nd2VarC = nd2Var.c(nd2VarR0);
        if (fxVar != null) {
            exVar = new ex(fxVar.a, fxVar.b, jl3Var2);
        }
        return n44.c0(bi4.j(nd2VarC.c(exVar), j, jl3Var2), jl3Var2);
    }

    public static final long d(long j, float f, ag1 ag1Var) {
        y70 y70Var = ((ua2) ag1Var.j(wa2.a)).a;
        boolean zBooleanValue = ((Boolean) ag1Var.j(a80.a)).booleanValue();
        long j2 = y70Var.p;
        return (t70.c(j, j2) && zBooleanValue) ? cw0.b(f, 0.0f) ? j2 : c75.q(t70.b(((((float) Math.log(f + 1.0f)) * 4.5f) + 2.0f) / 100.0f, y70Var.t), j2) : j;
    }
}
