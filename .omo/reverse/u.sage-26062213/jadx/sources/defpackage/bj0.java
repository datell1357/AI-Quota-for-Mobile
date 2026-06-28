package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bj0 implements Callable {
    public final /* synthetic */ long a;
    public final /* synthetic */ Throwable b;
    public final /* synthetic */ Thread c;
    public final /* synthetic */ ed0 d;
    public final /* synthetic */ dj0 e;

    public bj0(dj0 dj0Var, long j, Throwable th, Thread thread, ed0 ed0Var) {
        this.e = dj0Var;
        this.a = j;
        this.b = th;
        this.c = thread;
        this.d = ed0Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        long j = this.a;
        long j2 = j / 1000;
        dj0 dj0Var = this.e;
        String strE = dj0Var.e();
        if (strE == null) {
            Log.e("FirebaseCrashlytics", "Tried to write a fatal exception while no session was open.", null);
            return mt1.t(null);
        }
        dj0Var.c.j();
        ga0 ga0Var = dj0Var.m;
        ga0Var.getClass();
        String strConcat = "Persisting fatal event for session ".concat(strE);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strConcat, null);
        }
        ga0Var.n(this.b, this.c, "crash", new s21(strE, j2, h01.n), true);
        try {
            q51 q51Var = dj0Var.g;
            String str = ".ae" + j;
            q51Var.getClass();
            if (!new File((File) q51Var.c, str).createNewFile()) {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e) {
            Log.w("FirebaseCrashlytics", "Could not create app exception marker file.", e);
        }
        ed0 ed0Var = this.d;
        dj0Var.b(false, ed0Var, false);
        dj0Var.c(new i00().a, Boolean.FALSE);
        if (!dj0Var.b.a()) {
            return mt1.t(null);
        }
        ef5 ef5Var = ((pw3) ((AtomicReference) ed0Var.i).get()).a;
        qk0 qk0Var = (qk0) dj0Var.e.o;
        dh1 dh1Var = new dh1();
        dh1Var.n = this;
        return ef5Var.l(qk0Var, dh1Var);
    }
}
