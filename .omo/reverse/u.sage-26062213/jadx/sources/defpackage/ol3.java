package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ol3 {
    static {
        new w12(new t52(28));
    }

    public static final jl3 a(ll3 ll3Var, ag1 ag1Var) {
        nl3 nl3Var = ((ua2) ag1Var.j(wa2.a)).c;
        switch (ll3Var.ordinal()) {
            case 0:
                return nl3Var.h;
            case 1:
                return nl3Var.e;
            case 2:
                return nl3Var.g;
            case 3:
                return b(nl3Var.e);
            case 4:
                return nl3Var.a;
            case 5:
                return b(nl3Var.a);
            case 6:
                return oa3.a;
            case 7:
                return nl3Var.d;
            case 8:
                na3 na3Var = nl3Var.d;
                dw0 dw0Var = kl3.i;
                return na3.b(na3Var, dw0Var, null, null, dw0Var, 6);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return nl3Var.f;
            case 10:
                na3 na3Var2 = nl3Var.d;
                dw0 dw0Var2 = kl3.i;
                return na3.b(na3Var2, null, dw0Var2, dw0Var2, null, 9);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return b(nl3Var.d);
            case 12:
                return nl3Var.c;
            case 13:
                return k75.d;
            case 14:
                return nl3Var.b;
            default:
                p61.x();
                return null;
        }
    }

    public static na3 b(na3 na3Var) {
        dw0 dw0Var = kl3.i;
        return na3.b(na3Var, null, null, dw0Var, dw0Var, 3);
    }
}
