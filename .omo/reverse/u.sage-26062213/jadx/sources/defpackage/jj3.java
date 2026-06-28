package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jj3 implements tg1 {
    public static final jj3 a;
    private static final gi3 descriptor;

    static {
        jj3 jj3Var = new jj3();
        a = jj3Var;
        tv2 tv2Var = new tv2("com.google.firebase.sessions.SessionDetails", jj3Var, 4);
        tv2Var.l("sessionId", false);
        tv2Var.l("firstSessionId", false);
        tv2Var.l("sessionIndex", false);
        tv2Var.l("sessionStartTimestampUs", false);
        descriptor = tv2Var;
    }

    @Override // defpackage.tg1
    public final lx1[] a() {
        ys3 ys3Var = ys3.a;
        return new lx1[]{ys3Var, ys3Var, ps1.a, c82.a};
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gi3 gi3Var = descriptor;
        xb0 xb0VarA = vn0Var.A(gi3Var);
        int i = 0;
        int iV = 0;
        String strM = null;
        String strM2 = null;
        long jZ = 0;
        boolean z = true;
        while (z) {
            int iH = xb0VarA.h(gi3Var);
            if (iH == -1) {
                z = false;
            } else if (iH == 0) {
                strM = xb0VarA.m(gi3Var, 0);
                i |= 1;
            } else if (iH == 1) {
                strM2 = xb0VarA.m(gi3Var, 1);
                i |= 2;
            } else if (iH == 2) {
                iV = xb0VarA.v(gi3Var, 2);
                i |= 4;
            } else {
                if (iH != 3) {
                    throw new ew1(iH);
                }
                jZ = xb0VarA.z(gi3Var, 3);
                i |= 8;
            }
        }
        xb0VarA.p(gi3Var);
        return new lj3(jZ, strM, i, iV, strM2);
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        lj3 lj3Var = (lj3) obj;
        lj3Var.getClass();
        gi3 gi3Var = descriptor;
        b bVarA = bVar.a(gi3Var);
        String str = lj3Var.a;
        str.getClass();
        bVarA.f(gi3Var, 0);
        bVarA.r(str);
        String str2 = lj3Var.b;
        str2.getClass();
        bVarA.f(gi3Var, 1);
        bVarA.r(str2);
        int i = lj3Var.c;
        bVarA.f(gi3Var, 2);
        bVarA.j(i);
        bVarA.l(gi3Var, 3, lj3Var.d);
        bVarA.s(gi3Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return descriptor;
    }
}
