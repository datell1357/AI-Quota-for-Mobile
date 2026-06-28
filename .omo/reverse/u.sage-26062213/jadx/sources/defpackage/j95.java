package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j95 implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public volatile boolean a;
    public volatile r15 b;
    public final /* synthetic */ o95 c;

    public j95(o95 o95Var) {
        this.c = o95Var;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        j45 j45Var = ((r45) this.c.a).g;
        r45.l(j45Var);
        j45Var.A();
        synchronized (this) {
            try {
                Preconditions.checkNotNull(this.b);
                n05 n05Var = (n05) this.b.getService();
                j45 j45Var2 = ((r45) this.c.a).g;
                r45.l(j45Var2);
                j45Var2.E(new c95(this, n05Var, 1));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.b = null;
                this.a = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        o95 o95Var = this.c;
        j45 j45Var = ((r45) o95Var.a).g;
        r45.l(j45Var);
        j45Var.A();
        a25 a25Var = ((r45) o95Var.a).f;
        if (a25Var == null || !a25Var.b) {
            a25Var = null;
        }
        if (a25Var != null) {
            a25Var.n.b(connectionResult, "Service connection failed");
        }
        synchronized (this) {
            this.a = false;
            this.b = null;
        }
        j45 j45Var2 = ((r45) this.c.a).g;
        r45.l(j45Var2);
        j45Var2.E(new w85(2, this, connectionResult));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        r45 r45Var = (r45) this.c.a;
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.A();
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.m.a("Service connection suspended");
        j45 j45Var2 = r45Var.g;
        r45.l(j45Var2);
        j45Var2.E(new o9(17, this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        j45 j45Var = ((r45) this.c.a).g;
        r45.l(j45Var);
        j45Var.A();
        synchronized (this) {
            int i = 0;
            if (iBinder == null) {
                this.a = false;
                a25 a25Var = ((r45) this.c.a).f;
                r45.l(a25Var);
                a25Var.f.a("Service connected with null binder");
                return;
            }
            n05 f05Var = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    f05Var = iInterfaceQueryLocalInterface instanceof n05 ? (n05) iInterfaceQueryLocalInterface : new f05(iBinder);
                    a25 a25Var2 = ((r45) this.c.a).f;
                    r45.l(a25Var2);
                    a25Var2.n.a("Bound to IMeasurementService interface");
                } else {
                    a25 a25Var3 = ((r45) this.c.a).f;
                    r45.l(a25Var3);
                    a25Var3.f.b(interfaceDescriptor, "Got binder with a wrong descriptor");
                }
            } catch (RemoteException unused) {
                a25 a25Var4 = ((r45) this.c.a).f;
                r45.l(a25Var4);
                a25Var4.f.a("Service connect failed to get IMeasurementService");
            }
            if (f05Var == null) {
                this.a = false;
                try {
                    ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                    o95 o95Var = this.c;
                    connectionTracker.unbindService(((r45) o95Var.a).a, o95Var.c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                j45 j45Var2 = ((r45) this.c.a).g;
                r45.l(j45Var2);
                j45Var2.E(new c95(this, f05Var, i));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        r45 r45Var = (r45) this.c.a;
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.A();
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.m.a("Service disconnected");
        j45 j45Var2 = r45Var.g;
        r45.l(j45Var2);
        j45Var2.E(new w85(1, this, componentName));
    }
}
