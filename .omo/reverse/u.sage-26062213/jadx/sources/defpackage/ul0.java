package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ul0 implements l03 {
    public final vl0 a;
    public final int b;

    public ul0(vl0 vl0Var, int i) {
        this.a = vl0Var;
        this.b = i;
    }

    @Override // defpackage.m03
    public final Object get() {
        vl0 vl0Var = this.a;
        int i = this.b;
        switch (i) {
            case 0:
                return new n8(vl0Var.a.a);
            case 1:
                return new ri3();
            case 2:
                return new p50(vl0Var.a.a);
            case 3:
                return new vh0(vl0Var.a.a);
            case 4:
                return new lf(vl0Var.a.a);
            case 5:
                return new gg1(vl0Var.a.a);
            case 6:
                return new f70(vl0Var.a.a);
            case 7:
                return new v50(vl0Var.a.a, (n8) vl0Var.c.get());
            case 8:
                return new yh0(vl0Var.a.a, (n8) vl0Var.c.get());
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new pf(vl0Var.a.a, (n8) vl0Var.c.get());
            case 10:
                return new jg1(vl0Var.a.a, (n8) vl0Var.c.get());
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new i70(vl0Var.a.a, (n8) vl0Var.c.get());
            default:
                throw new AssertionError(i);
        }
    }
}
