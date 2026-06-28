package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fz3 implements tg1 {
    public static final fz3 a;
    private static final gi3 descriptor;

    static {
        fz3 fz3Var = new fz3();
        a = fz3Var;
        tv2 tv2Var = new tv2("com.google.firebase.sessions.Time", fz3Var, 3);
        tv2Var.l("ms", false);
        tv2Var.l("us", true);
        tv2Var.l("seconds", true);
        descriptor = tv2Var;
    }

    @Override // defpackage.tg1
    public final lx1[] a() {
        c82 c82Var = c82.a;
        return new lx1[]{c82Var, c82Var, c82Var};
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gi3 gi3Var = descriptor;
        xb0 xb0VarA = vn0Var.A(gi3Var);
        int i = 0;
        long jZ = 0;
        long jZ2 = 0;
        long jZ3 = 0;
        boolean z = true;
        while (z) {
            int iH = xb0VarA.h(gi3Var);
            if (iH == -1) {
                z = false;
            } else if (iH == 0) {
                jZ = xb0VarA.z(gi3Var, 0);
                i |= 1;
            } else if (iH == 1) {
                jZ2 = xb0VarA.z(gi3Var, 1);
                i |= 2;
            } else {
                if (iH != 2) {
                    throw new ew1(iH);
                }
                jZ3 = xb0VarA.z(gi3Var, 2);
                i |= 4;
            }
        }
        xb0VarA.p(gi3Var);
        return new hz3(i, jZ, jZ2, jZ3);
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        hz3 hz3Var = (hz3) obj;
        hz3Var.getClass();
        gi3 gi3Var = descriptor;
        b bVarA = bVar.a(gi3Var);
        long j = hz3Var.a;
        long j2 = hz3Var.c;
        long j3 = hz3Var.b;
        bVarA.l(gi3Var, 0, j);
        if (bVarA.t(gi3Var) || j3 != j * 1000) {
            bVarA.l(gi3Var, 1, j3);
        }
        if (bVarA.t(gi3Var) || j2 != j / 1000) {
            bVarA.l(gi3Var, 2, j2);
        }
        bVarA.s(gi3Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return descriptor;
    }
}
