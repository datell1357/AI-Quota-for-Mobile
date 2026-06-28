package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mq1 extends ConnectivityManager.NetworkCallback {
    public static final /* synthetic */ int c = 0;
    public final /* synthetic */ int a = 0;
    public final Object b;

    public mq1(yl2 yl2Var) {
        this.b = yl2Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean z) {
        switch (this.a) {
            case 1:
                network.getClass();
                if (network.equals(((yl2) this.b).f.getActiveNetwork())) {
                    t72.g().c(xl2.a, "Network blocked status changed: " + z);
                    yl2 yl2Var = (yl2) this.b;
                    Object objC = yl2Var.d;
                    if (objC == null) {
                        objC = yl2Var.c();
                    }
                    wl2 wl2Var = (wl2) objC;
                    yl2 yl2Var2 = (yl2) this.b;
                    synchronized (yl2Var2.g) {
                        if (yl2Var2.h == z) {
                            return;
                        }
                        yl2Var2.h = z;
                        ((yl2) this.b).d(new wl2(wl2Var.a, wl2Var.b, wl2Var.c, wl2Var.d, z));
                        return;
                    }
                }
                return;
            default:
                super.onBlockedStatusChanged(network, z);
                return;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        int i = this.a;
        network.getClass();
        networkCapabilities.getClass();
        switch (i) {
            case 0:
                t72.g().c(sf4.a, "NetworkRequestConstraintController onCapabilitiesChanged callback");
                ((m) this.b).k(qf0.a);
                break;
            default:
                t72.g().c(xl2.a, "Network capabilities changed: " + networkCapabilities);
                yl2 yl2Var = (yl2) this.b;
                yl2Var.d(xl2.a(yl2Var.f, yl2Var.h));
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        int i = this.a;
        Object obj = this.b;
        network.getClass();
        switch (i) {
            case 0:
                t72.g().c(sf4.a, "NetworkRequestConstraintController onLost callback");
                ((m) obj).k(new rf0(7));
                break;
            default:
                t72.g().c(xl2.a, "Network connection lost");
                ((yl2) obj).d(new wl2(false, false, false, false, false));
                break;
        }
    }

    public mq1(m mVar) {
        this.b = mVar;
    }
}
