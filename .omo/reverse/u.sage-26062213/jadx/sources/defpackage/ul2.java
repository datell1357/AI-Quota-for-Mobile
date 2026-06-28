package defpackage;

import android.net.ConnectivityManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ul2 implements bf0 {
    public final ConnectivityManager a;

    public ul2(ConnectivityManager connectivityManager) {
        this.a = connectivityManager;
    }

    @Override // defpackage.bf0
    public final boolean a(og4 og4Var) {
        og4Var.getClass();
        return (og4Var.j.a() == null && og4Var.j.a == zl2.n) ? false : true;
    }

    @Override // defpackage.bf0
    public final boolean b(og4 og4Var) {
        if (!a(og4Var)) {
            return false;
        }
        k21.n("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
        return false;
    }

    @Override // defpackage.bf0
    public final a20 c(lf0 lf0Var) {
        lf0Var.getClass();
        return new a20(new p(lf0Var, this, null, 20), d01.n, -2, vy.n);
    }
}
