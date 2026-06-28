package defpackage;

import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jj0 {
    public static final qv3 c = new qv3(24);
    public final dr2 a;
    public final AtomicReference b = new AtomicReference(null);

    public jj0(dr2 dr2Var) {
        this.a = dr2Var;
        dr2Var.a(new r6(6, this));
    }

    public final qv3 a() {
        jj0 jj0Var = (jj0) this.b.get();
        return jj0Var == null ? c : jj0Var.a();
    }

    public final boolean b() {
        jj0 jj0Var = (jj0) this.b.get();
        return jj0Var != null && jj0Var.b();
    }

    public final boolean c() {
        jj0 jj0Var = (jj0) this.b.get();
        return jj0Var != null && jj0Var.c();
    }

    public final void d(String str, long j, bp bpVar) {
        String strU = di0.u("Deferring native open session: ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strU, null);
        }
        this.a.a(new cd0(str, j, bpVar));
    }
}
