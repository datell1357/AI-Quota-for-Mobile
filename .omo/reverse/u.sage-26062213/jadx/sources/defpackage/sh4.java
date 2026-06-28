package defpackage;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sh4 {
    public static final gi3 a(gi3 gi3Var, b21 b21Var) {
        gi3Var.getClass();
        b21Var.getClass();
        if (!nt1.g(gi3Var.c(), ki3.P)) {
            return gi3Var.f() ? a(gi3Var.j(0), b21Var) : gi3Var;
        }
        tv4.t(gi3Var);
        return gi3Var;
    }

    public static final rh4 b(fv1 fv1Var, gi3 gi3Var) {
        gi3Var.getClass();
        dm0 dm0VarC = gi3Var.c();
        if (dm0VarC instanceof iw2) {
            return rh4.s;
        }
        if (nt1.g(dm0VarC, it3.Q)) {
            return rh4.q;
        }
        if (!nt1.g(dm0VarC, it3.R)) {
            return rh4.p;
        }
        gi3 gi3VarA = a(gi3Var.j(0), fv1Var.b);
        dm0 dm0VarC2 = gi3VarA.c();
        if ((dm0VarC2 instanceof ny2) || nt1.g(dm0VarC2, ki3.Q)) {
            return rh4.r;
        }
        fv1Var.a.getClass();
        throw bi4.e(gi3VarA);
    }

    public static vl4 c(Context context) {
        return new vl4(context, vl4.a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
