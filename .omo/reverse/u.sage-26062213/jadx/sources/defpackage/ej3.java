package defpackage;

import java.util.Map;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ej3 implements tg1 {
    public static final ej3 a;
    private static final gi3 descriptor;

    static {
        ej3 ej3Var = new ej3();
        a = ej3Var;
        tv2 tv2Var = new tv2("com.google.firebase.sessions.SessionData", ej3Var, 3);
        tv2Var.l("sessionDetails", false);
        tv2Var.l("backgroundTime", true);
        tv2Var.l("processDataMap", true);
        descriptor = tv2Var;
    }

    @Override // defpackage.tg1
    public final lx1[] a() {
        return new lx1[]{jj3.a, ix.v(fz3.a), ix.v((lx1) gj3.d[2].getValue())};
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gi3 gi3Var = descriptor;
        xb0 xb0VarA = vn0Var.A(gi3Var);
        qz1[] qz1VarArr = gj3.d;
        lj3 lj3Var = null;
        boolean z = true;
        int i = 0;
        hz3 hz3Var = null;
        Map map = null;
        while (z) {
            int iH = xb0VarA.h(gi3Var);
            if (iH == -1) {
                z = false;
            } else if (iH == 0) {
                lj3Var = (lj3) xb0VarA.u(gi3Var, 0, jj3.a, lj3Var);
                i |= 1;
            } else if (iH == 1) {
                hz3Var = (hz3) xb0VarA.g(gi3Var, 1, fz3.a, hz3Var);
                i |= 2;
            } else {
                if (iH != 2) {
                    throw new ew1(iH);
                }
                map = (Map) xb0VarA.g(gi3Var, 2, (lx1) qz1VarArr[2].getValue(), map);
                i |= 4;
            }
        }
        xb0VarA.p(gi3Var);
        return new gj3(i, lj3Var, hz3Var, map);
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        gj3 gj3Var = (gj3) obj;
        gj3Var.getClass();
        gi3 gi3Var = descriptor;
        b bVarA = bVar.a(gi3Var);
        qz1[] qz1VarArr = gj3.d;
        jj3 jj3Var = jj3.a;
        lj3 lj3Var = gj3Var.a;
        Map map = gj3Var.c;
        hz3 hz3Var = gj3Var.b;
        bVarA.o(gi3Var, 0, jj3Var, lj3Var);
        if (bVarA.t(gi3Var) || hz3Var != null) {
            bVarA.n(gi3Var, 1, fz3.a, hz3Var);
        }
        if (bVarA.t(gi3Var) || map != null) {
            bVarA.n(gi3Var, 2, (lx1) qz1VarArr[2].getValue(), map);
        }
        bVarA.s(gi3Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return descriptor;
    }
}
