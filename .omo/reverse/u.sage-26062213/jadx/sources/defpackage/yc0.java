package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yc0 {
    public static final HashMap d = new HashMap();
    public static final mh e = new mh(1);
    public final Executor a;
    public final kd0 b;
    public ef5 c = null;

    public yc0(Executor executor, kd0 kd0Var) {
        this.a = executor;
        this.b = kd0Var;
    }

    public static Object a(ow3 ow3Var) throws ExecutionException, TimeoutException {
        xc0 xc0Var = new xc0(0);
        Executor executor = e;
        ow3Var.c(executor, xc0Var);
        ow3Var.b(executor, xc0Var);
        ow3Var.a(executor, xc0Var);
        if (!xc0Var.o.await(5L, TimeUnit.SECONDS)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (ow3Var.j()) {
            return ow3Var.g();
        }
        throw new ExecutionException(ow3Var.f());
    }

    public final synchronized ow3 b() {
        try {
            ef5 ef5Var = this.c;
            if (ef5Var == null || (ef5Var.i() && !this.c.j())) {
                this.c = mt1.m(this.a, new vc0(0, this.b));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }

    public final ad0 c() {
        synchronized (this) {
            try {
                ef5 ef5Var = this.c;
                if (ef5Var != null && ef5Var.j()) {
                    return (ad0) this.c.g();
                }
                try {
                    return (ad0) a(b());
                } catch (InterruptedException | ExecutionException | TimeoutException e2) {
                    Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e2);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ef5 d(ad0 ad0Var) {
        wc0 wc0Var = new wc0(0, this, ad0Var);
        Executor executor = this.a;
        return mt1.m(executor, wc0Var).l(executor, new rr(2, this, ad0Var));
    }
}
