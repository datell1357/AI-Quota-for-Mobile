package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bj3 implements tg1 {
    public static final bj3 a;
    private static final gi3 descriptor;

    static {
        bj3 bj3Var = new bj3();
        a = bj3Var;
        tv2 tv2Var = new tv2("com.google.firebase.sessions.settings.SessionConfigs", bj3Var, 5);
        tv2Var.l("sessionsEnabled", false);
        tv2Var.l("sessionSamplingRate", false);
        tv2Var.l("sessionTimeoutSeconds", false);
        tv2Var.l("cacheDurationSeconds", false);
        tv2Var.l("cacheUpdatedTimeSeconds", false);
        descriptor = tv2Var;
    }

    @Override // defpackage.tg1
    public final lx1[] a() {
        lx1 lx1VarV = ix.v(yw.a);
        lx1 lx1VarV2 = ix.v(aw0.a);
        ps1 ps1Var = ps1.a;
        return new lx1[]{lx1VarV, lx1VarV2, ix.v(ps1Var), ix.v(ps1Var), ix.v(c82.a)};
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gi3 gi3Var = descriptor;
        xb0 xb0VarA = vn0Var.A(gi3Var);
        int i = 0;
        Boolean bool = null;
        Double d = null;
        Integer num = null;
        Integer num2 = null;
        Long l = null;
        boolean z = true;
        while (z) {
            int iH = xb0VarA.h(gi3Var);
            if (iH == -1) {
                z = false;
            } else if (iH == 0) {
                bool = (Boolean) xb0VarA.g(gi3Var, 0, yw.a, bool);
                i |= 1;
            } else if (iH == 1) {
                d = (Double) xb0VarA.g(gi3Var, 1, aw0.a, d);
                i |= 2;
            } else if (iH == 2) {
                num = (Integer) xb0VarA.g(gi3Var, 2, ps1.a, num);
                i |= 4;
            } else if (iH == 3) {
                num2 = (Integer) xb0VarA.g(gi3Var, 3, ps1.a, num2);
                i |= 8;
            } else {
                if (iH != 4) {
                    throw new ew1(iH);
                }
                l = (Long) xb0VarA.g(gi3Var, 4, c82.a, l);
                i |= 16;
            }
        }
        xb0VarA.p(gi3Var);
        return new dj3(i, bool, d, num, num2, l);
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        dj3 dj3Var = (dj3) obj;
        dj3Var.getClass();
        gi3 gi3Var = descriptor;
        b bVarA = bVar.a(gi3Var);
        bVarA.n(gi3Var, 0, yw.a, dj3Var.a);
        bVarA.n(gi3Var, 1, aw0.a, dj3Var.b);
        ps1 ps1Var = ps1.a;
        bVarA.n(gi3Var, 2, ps1Var, dj3Var.c);
        bVarA.n(gi3Var, 3, ps1Var, dj3Var.d);
        bVarA.n(gi3Var, 4, c82.a, dj3Var.e);
        bVarA.s(gi3Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return descriptor;
    }
}
