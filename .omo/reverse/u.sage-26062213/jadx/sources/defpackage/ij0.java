package defpackage;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ij0 {
    public final Context a;
    public final bm0 b;
    public final xh1 c;
    public final long d;
    public gw4 e;
    public gw4 f;
    public dj0 g;
    public final sn1 h;
    public final q51 i;
    public final i8 j;
    public final i8 k;
    public final aj0 l;
    public final jj0 m;
    public final dh1 n;
    public final eh o;

    public ij0(e61 e61Var, sn1 sn1Var, jj0 jj0Var, bm0 bm0Var, i8 i8Var, i8 i8Var2, q51 q51Var, aj0 aj0Var, dh1 dh1Var, eh ehVar) {
        this.b = bm0Var;
        e61Var.a();
        this.a = e61Var.a;
        this.h = sn1Var;
        this.m = jj0Var;
        this.j = i8Var;
        this.k = i8Var2;
        this.i = q51Var;
        this.l = aj0Var;
        this.n = dh1Var;
        this.o = ehVar;
        this.d = System.currentTimeMillis();
        this.c = new xh1(9);
    }

    public final void a(ed0 ed0Var) {
        eh.l();
        eh.l();
        this.e.j();
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Initialization marker file was created.", null);
        }
        try {
            try {
                this.j.c(new hj0(this));
                this.g.g();
                if (!ed0Var.e().b.a) {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Collection of crash reports disabled in Crashlytics settings.", null);
                    }
                    throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
                }
                if (!this.g.d(ed0Var)) {
                    Log.w("FirebaseCrashlytics", "Previous sessions could not be finalized.", null);
                }
                this.g.h(((pw3) ((AtomicReference) ed0Var.i).get()).a);
                c();
            } catch (Exception e) {
                Log.e("FirebaseCrashlytics", "Crashlytics encountered a problem during asynchronous initialization.", e);
                c();
            }
        } catch (Throwable th) {
            c();
            throw th;
        }
    }

    public final void b(ed0 ed0Var) {
        Future<?> futureSubmit = ((qk0) this.o.o).n.submit(new ej0(this, ed0Var, 1));
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.", null);
        }
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Log.e("FirebaseCrashlytics", "Crashlytics was interrupted during initialization.", e);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e2) {
            Log.e("FirebaseCrashlytics", "Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e3) {
            Log.e("FirebaseCrashlytics", "Crashlytics timed out during initialization.", e3);
        }
    }

    public final void c() {
        eh.l();
        try {
            gw4 gw4Var = this.e;
            q51 q51Var = (q51) gw4Var.p;
            String str = (String) gw4Var.o;
            q51Var.getClass();
            if (new File((File) q51Var.c, str).delete()) {
                return;
            }
            Log.w("FirebaseCrashlytics", "Initialization marker file was not properly removed.", null);
        } catch (Exception e) {
            Log.e("FirebaseCrashlytics", "Problem encountered deleting Crashlytics initialization marker.", e);
        }
    }
}
