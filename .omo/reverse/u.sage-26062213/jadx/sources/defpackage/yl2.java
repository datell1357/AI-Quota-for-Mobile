package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yl2 extends cf0 {
    public final ConnectivityManager f;
    public final Object g;
    public volatile boolean h;
    public final mq1 i;

    public yl2(Context context, qd1 qd1Var) {
        super(context, qd1Var);
        Object systemService = ((Context) this.b).getSystemService("connectivity");
        systemService.getClass();
        this.f = (ConnectivityManager) systemService;
        this.g = new Object();
        this.i = new mq1(this);
    }

    @Override // defpackage.cf0
    public final Object c() {
        return xl2.a(this.f, this.h);
    }

    @Override // defpackage.cf0
    public final void e() {
        try {
            t72.g().c(xl2.a, "Registering network callback");
            ConnectivityManager connectivityManager = this.f;
            mq1 mq1Var = this.i;
            connectivityManager.getClass();
            mq1Var.getClass();
            connectivityManager.registerDefaultNetworkCallback(mq1Var);
        } catch (IllegalArgumentException e) {
            t72.g().f(xl2.a, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            t72.g().f(xl2.a, "Received exception while registering network callback", e2);
        }
    }

    @Override // defpackage.cf0
    public final void f() {
        try {
            t72.g().c(xl2.a, "Unregistering network callback");
            this.f.unregisterNetworkCallback(this.i);
        } catch (IllegalArgumentException e) {
            t72.g().f(xl2.a, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            t72.g().f(xl2.a, "Received exception while unregistering network callback", e2);
        }
    }
}
