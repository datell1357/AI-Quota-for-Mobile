package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b75 extends BroadcastReceiver {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ jk3 c;
    public final /* synthetic */ gt4 d;
    public final /* synthetic */ Executor e;

    public b75(AtomicBoolean atomicBoolean, Context context, jk3 jk3Var, gt4 gt4Var, Executor executor) {
        this.a = atomicBoolean;
        this.b = context;
        this.c = jk3Var;
        this.d = gt4Var;
        this.e = executor;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.a.compareAndSet(false, true)) {
            try {
                this.b.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                Log.w("DirectBootUtils", "Failed to unregister receiver", e);
            }
            jk3 jk3Var = this.c;
            gt4 gt4Var = this.d;
            Executor executor = this.e;
            a34 a34Var = new a34();
            a34Var.v = new z24(a34Var, gt4Var);
            executor.execute(a34Var);
            jk3Var.o(a34Var);
        }
    }
}
