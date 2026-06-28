package defpackage;

import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gq0 {
    public static final gq0 a = new gq0();

    public final void a(cn3 cn3Var, ag1 ag1Var, int i) {
        ag1 ag1Var2 = ag1Var;
        float f = cn3Var.g;
        ag1Var2.X(2137486921);
        int i2 = i | (ag1Var2.f(cn3Var) ? 4 : 2);
        if (ag1Var2.N(i2 & 1, (i2 & 3) != 2)) {
            k04 k04Var = cn3Var.j;
            if (Float.isNaN(f) || (Float.floatToRawIntBits(f) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040) {
                k21.f("The expandedHeight is expected to be specified and finite");
                return;
            }
            boolean zF = ag1Var2.f(k04Var) | ag1Var2.f(null);
            Object objK = ag1Var2.K();
            bx3 bx3Var = rb0.a;
            if (zF || objK == bx3Var) {
                objK = ca.m(new fq0(0, cn3Var));
                ag1Var2.g0(objK);
            }
            tr3 tr3VarA = en3.a(((t70) ((tr3) objK).getValue()).a, zf5.Y(fe2.o, ag1Var2), ag1Var2);
            ka0 ka0VarU = qj0.U(-1658896622, new sp0(7, cn3Var), ag1Var2);
            ag1Var2.W(690075377);
            ag1Var2.p(false);
            nd2 nd2Var = cn3Var.a;
            kd2 kd2Var = kd2.b;
            nd2 nd2VarC = nd2Var.c(kd2Var);
            boolean zF2 = ag1Var2.f(tr3VarA);
            Object objK2 = ag1Var2.K();
            if (zF2 || objK2 == bx3Var) {
                objK2 = new nn0(tr3VarA, 1);
                ag1Var2.g0(objK2);
            }
            nd2 nd2VarU = k75.u(nd2VarC, (pe1) objK2);
            Object objK3 = ag1Var2.K();
            if (objK3 == bx3Var) {
                objK3 = new t3(20);
                ag1Var2.g0(objK3);
            }
            nd2 nd2VarA = dh3.a(nd2VarU, (pe1) objK3);
            Object objK4 = ag1Var2.K();
            if (objK4 == bx3Var) {
                objK4 = eq0.b;
                ag1Var2.g0(objK4);
            }
            nd2 nd2VarA2 = dv3.a(nd2VarA, t64.a, (PointerInputEventHandler) objK4);
            db2 db2VarD = qx.d(mj1.o, false);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            nd2 nd2VarH = is0.H(ag1Var2, nd2VarA2);
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
            nd2 nd2VarD0 = n44.d0(k75.P(kd2Var, cn3Var.i));
            lc0 lc0Var = eg.a;
            boolean z = (i2 & 14) == 4;
            Object objK5 = ag1Var2.K();
            if (z || objK5 == bx3Var) {
                objK5 = new dq0(cn3Var);
                ag1Var2.g0(objK5);
            }
            dq0 dq0Var = (dq0) objK5;
            long j = k04Var.c;
            long j2 = k04Var.d;
            long j3 = k04Var.e;
            long j4 = k04Var.f;
            ka0 ka0Var = cn3Var.b;
            ay3 ay3Var = cn3Var.c;
            ay3 ay3Var2 = cn3Var.d;
            df1 df1Var = cn3Var.e;
            float f2 = cn3Var.g;
            zr2 zr2Var = cn3Var.h;
            Object objK6 = ag1Var2.K();
            if (objK6 == bx3Var) {
                objK6 = new l6(10);
                ag1Var2.g0(objK6);
            }
            eg.c(nd2VarD0, dq0Var, j, j2, j4, j3, ka0Var, ay3Var, ay3Var2, (ne1) objK6, df1Var, ka0VarU, f2, zr2Var, ag1Var2, 0);
            ag1Var2 = ag1Var2;
            ag1Var2.p(true);
        } else {
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i, 7, this, cn3Var);
        }
    }
}
