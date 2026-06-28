package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uy2 implements tg1 {
    public static final uy2 a;
    private static final gi3 descriptor;

    static {
        uy2 uy2Var = new uy2();
        a = uy2Var;
        tv2 tv2Var = new tv2("com.google.firebase.sessions.ProcessData", uy2Var, 2);
        tv2Var.l("pid", false);
        tv2Var.l("uuid", false);
        descriptor = tv2Var;
    }

    @Override // defpackage.tg1
    public final lx1[] a() {
        return new lx1[]{ps1.a, ys3.a};
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gi3 gi3Var = descriptor;
        xb0 xb0VarA = vn0Var.A(gi3Var);
        String strM = null;
        boolean z = true;
        int i = 0;
        int iV = 0;
        while (z) {
            int iH = xb0VarA.h(gi3Var);
            if (iH == -1) {
                z = false;
            } else if (iH == 0) {
                iV = xb0VarA.v(gi3Var, 0);
                i |= 1;
            } else {
                if (iH != 1) {
                    throw new ew1(iH);
                }
                strM = xb0VarA.m(gi3Var, 1);
                i |= 2;
            }
        }
        xb0VarA.p(gi3Var);
        return new wy2(i, strM, iV);
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        wy2 wy2Var = (wy2) obj;
        wy2Var.getClass();
        gi3 gi3Var = descriptor;
        b bVarA = bVar.a(gi3Var);
        int i = wy2Var.a;
        bVarA.f(gi3Var, 0);
        bVarA.j(i);
        String str = wy2Var.b;
        str.getClass();
        bVarA.f(gi3Var, 1);
        bVarA.r(str);
        bVarA.s(gi3Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return descriptor;
    }
}
