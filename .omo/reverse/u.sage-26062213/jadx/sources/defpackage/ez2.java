package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ez2 {
    public static final String l = t72.i("Processor");
    public final Context b;
    public final md0 c;
    public final qd1 d;
    public final WorkDatabase e;
    public final HashMap g = new HashMap();
    public final HashMap f = new HashMap();
    public final HashSet i = new HashSet();
    public final ArrayList j = new ArrayList();
    public PowerManager.WakeLock a = null;
    public final Object k = new Object();
    public final HashMap h = new HashMap();

    public ez2(Context context, md0 md0Var, qd1 qd1Var, WorkDatabase workDatabase) {
        this.b = context;
        this.c = md0Var;
        this.d = qd1Var;
        this.e = workDatabase;
    }

    public static boolean d(String str, hh4 hh4Var, int i) {
        String str2 = l;
        if (hh4Var == null) {
            t72.g().c(str2, "WorkerWrapper could not be found for " + str);
            return false;
        }
        hh4Var.m.t(new wg4(i));
        t72.g().c(str2, "WorkerWrapper interrupted for " + str);
        return true;
    }

    public final void a(f31 f31Var) {
        synchronized (this.k) {
            this.j.add(f31Var);
        }
    }

    public final hh4 b(String str) {
        hh4 hh4Var = (hh4) this.f.remove(str);
        boolean z = hh4Var != null;
        if (!z) {
            hh4Var = (hh4) this.g.remove(str);
        }
        this.h.remove(str);
        if (z) {
            synchronized (this.k) {
                try {
                    if (this.f.isEmpty()) {
                        Context context = this.b;
                        String str2 = uv3.w;
                        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                        intent.setAction("ACTION_STOP_FOREGROUND");
                        try {
                            this.b.startService(intent);
                        } catch (Throwable th) {
                            t72.g().f(l, "Unable to stop foreground service", th);
                        }
                        PowerManager.WakeLock wakeLock = this.a;
                        if (wakeLock != null) {
                            wakeLock.release();
                            this.a = null;
                        }
                    }
                } finally {
                }
            }
        }
        return hh4Var;
    }

    public final hh4 c(String str) {
        hh4 hh4Var = (hh4) this.f.get(str);
        return hh4Var == null ? (hh4) this.g.get(str) : hh4Var;
    }
}
