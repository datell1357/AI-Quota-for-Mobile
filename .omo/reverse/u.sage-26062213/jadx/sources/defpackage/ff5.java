package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ff5 implements ServiceConnection {
    public final /* synthetic */ tf5 a;

    public /* synthetic */ ff5(tf5 tf5Var) {
        this.a = tf5Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        tf5 tf5Var = this.a;
        tf5Var.b.a("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        tf5Var.a().post(new zd5(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        tf5 tf5Var = this.a;
        tf5Var.b.a("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        tf5Var.a().post(new xc5(1, this));
    }
}
