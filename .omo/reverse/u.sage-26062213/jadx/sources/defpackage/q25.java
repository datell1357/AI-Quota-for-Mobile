package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q25 extends BroadcastReceiver {
    public final pb5 a;
    public boolean b;
    public boolean c;

    public q25(pb5 pb5Var) {
        Preconditions.checkNotNull(pb5Var);
        this.a = pb5Var;
    }

    public final void a() {
        pb5 pb5Var = this.a;
        pb5Var.l0();
        pb5Var.d().v();
        pb5Var.d().v();
        if (this.b) {
            pb5Var.c().n.a("Unregistering connectivity change receiver");
            this.b = false;
            this.c = false;
            try {
                pb5Var.l.a.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                pb5Var.c().f.b(e, "Failed to unregister the network broadcast receiver");
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        pb5 pb5Var = this.a;
        pb5Var.l0();
        String action = intent.getAction();
        pb5Var.c().n.b(action, "NetworkBroadcastReceiver received action");
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            pb5Var.c().i.b(action, "NetworkBroadcastReceiver received unknown action");
            return;
        }
        i25 i25Var = pb5Var.b;
        pb5.T(i25Var);
        boolean z = i25Var.z();
        if (this.c != z) {
            this.c = z;
            pb5Var.d().E(new o9(this, z));
        }
    }
}
