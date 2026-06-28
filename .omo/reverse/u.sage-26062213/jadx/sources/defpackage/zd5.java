package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zd5 extends f95 {
    public final /* synthetic */ IBinder o;
    public final /* synthetic */ ff5 p;

    public zd5(ff5 ff5Var, IBinder iBinder) {
        this.p = ff5Var;
        this.o = iBinder;
    }

    @Override // defpackage.f95
    public final void a() {
        bz4 ex4Var;
        tf5 tf5Var = this.p.a;
        int i = hy4.d;
        IBinder iBinder = this.o;
        if (iBinder == null) {
            ex4Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
            ex4Var = iInterfaceQueryLocalInterface instanceof bz4 ? (bz4) iInterfaceQueryLocalInterface : new ex4(iBinder);
        }
        tf5Var.m = ex4Var;
        int i2 = 0;
        tf5Var.b.a("linkToDeath", new Object[0]);
        try {
            tf5Var.m.asBinder().linkToDeath(tf5Var.j, 0);
        } catch (RemoteException e) {
            sg0 sg0Var = tf5Var.b;
            Object[] objArr = new Object[0];
            sg0Var.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", sg0.c(sg0Var.o, "linkToDeath failed", objArr), e);
            }
        }
        tf5Var.g = false;
        ArrayList arrayList = tf5Var.d;
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Runnable) obj).run();
        }
        tf5Var.d.clear();
    }
}
