package defpackage;

import android.os.Build;
import android.util.Log;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ll4 extends v43 {
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final AtomicReference f;
    public static final AtomicLong g;
    public static final ConcurrentLinkedQueue h;
    public volatile v43 b;

    static {
        String str = Build.FINGERPRINT;
        c = str == null || "robolectric".equals(str);
        String str2 = Build.HARDWARE;
        d = "goldfish".equals(str2) || "ranchu".equals(str2);
        String str3 = Build.TYPE;
        e = "eng".equals(str3) || "userdebug".equals(str3);
        f = new AtomicReference();
        g = new AtomicLong();
        h = new ConcurrentLinkedQueue();
    }

    public static void d() {
        while (true) {
            kl4 kl4Var = (kl4) h.poll();
            if (kl4Var == null) {
                return;
            }
            g.getAndDecrement();
            ll4 ll4Var = kl4Var.a;
            cg5 cg5Var = kl4Var.b;
            gg5 gg5Var = cg5Var.c;
            if ((gg5Var != null && Boolean.TRUE.equals(gg5Var.e(fg5.g))) || ll4Var.a(cg5Var.a)) {
                ll4Var.b(cg5Var);
            }
        }
    }

    @Override // defpackage.v43
    public final boolean a(Level level) {
        return this.b == null || this.b.a(level);
    }

    @Override // defpackage.v43
    public final void b(cg5 cg5Var) {
        if (this.b != null) {
            this.b.b(cg5Var);
            return;
        }
        if (g.incrementAndGet() > 20) {
            h.poll();
            Log.w("ProxyAndroidLoggerBackend", "Too many Flogger logs received before configuration. Dropping old logs.");
        }
        h.offer(new kl4(this, cg5Var));
        if (this.b != null) {
            d();
        }
    }

    @Override // defpackage.v43
    public final void c(RuntimeException runtimeException, cg5 cg5Var) {
        if (this.b != null) {
            this.b.c(runtimeException, cg5Var);
        } else {
            Log.e("ProxyAndroidLoggerBackend", "Internal logging error before configuration", runtimeException);
        }
    }
}
