package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class g54 {
    public static final ls3 a;

    static {
        dm0.D(new jx3(4));
        a = new ls3(7);
    }

    public static final ay3 a(f54 f54Var, ag1 ag1Var) {
        e54 e54Var = ((ua2) ag1Var.j(wa2.a)).b;
        switch (f54Var.ordinal()) {
            case 0:
                return e54Var.j;
            case 1:
                return e54Var.k;
            case 2:
                return e54Var.l;
            case 3:
                return e54Var.a;
            case 4:
                return e54Var.b;
            case 5:
                return e54Var.c;
            case 6:
                return e54Var.d;
            case 7:
                return e54Var.e;
            case 8:
                return e54Var.f;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return e54Var.m;
            case 10:
                return e54Var.n;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return e54Var.o;
            case 12:
                return e54Var.g;
            case 13:
                return e54Var.h;
            case 14:
                return e54Var.i;
            case 15:
                return e54Var.y;
            case 16:
                return e54Var.z;
            case 17:
                return e54Var.A;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return e54Var.p;
            case 19:
                return e54Var.q;
            case 20:
                return e54Var.r;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return e54Var.s;
            case 22:
                return e54Var.t;
            case ConnectionResult.API_DISABLED /* 23 */:
                return e54Var.f78u;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return e54Var.B;
            case 25:
                return e54Var.C;
            case 26:
                return e54Var.D;
            case 27:
                return e54Var.v;
            case 28:
                return e54Var.w;
            case 29:
                return e54Var.x;
            default:
                p61.x();
                return null;
        }
    }
}
