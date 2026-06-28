package defpackage;

import android.app.Application;
import android.content.Context;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y61 {
    public final e61 a;
    public final gk3 b;

    public y61(e61 e61Var, gk3 gk3Var, hi0 hi0Var, ek3 ek3Var) {
        e61Var.getClass();
        gk3Var.getClass();
        hi0Var.getClass();
        ek3Var.getClass();
        this.a = e61Var;
        this.b = gk3Var;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions 3.0.6.");
        e61Var.a();
        Context applicationContext = e61Var.a.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(ek3Var);
            ca.y(dm0.c(hi0Var), null, null, new n(this, ek3Var, null, 19), 3);
        } else {
            Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
        }
    }
}
