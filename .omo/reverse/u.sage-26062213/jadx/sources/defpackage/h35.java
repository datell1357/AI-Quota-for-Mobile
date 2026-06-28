package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h35 implements ServiceConnection {
    public final String a;
    public final /* synthetic */ k35 b;

    public h35(k35 k35Var, String str) {
        this.b = k35Var;
        this.a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        k35 k35Var = this.b;
        if (iBinder == null) {
            a25 a25Var = k35Var.a.f;
            r45.l(a25Var);
            a25Var.i.a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i = qu4.c;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            tu4 ou4Var = iInterfaceQueryLocalInterface instanceof tu4 ? (tu4) iInterfaceQueryLocalInterface : new ou4(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            r45 r45Var = k35Var.a;
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.n.a("Install Referrer Service connected");
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.E(new rf1(this, ou4Var, this));
        } catch (RuntimeException e) {
            a25 a25Var3 = k35Var.a.f;
            r45.l(a25Var3);
            a25Var3.i.b(e, "Exception occurred while calling Install Referrer API");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        a25 a25Var = this.b.a.f;
        r45.l(a25Var);
        a25Var.n.a("Install Referrer Service disconnected");
    }
}
