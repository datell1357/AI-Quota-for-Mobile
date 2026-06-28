package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b1 implements ListenableFuture {
    public static final Object q = new Object();
    public static final q12 r = new q12(s0.class);
    public static final boolean s;
    public static final gg4 t;
    public volatile Object n;
    public volatile p0 o;
    public volatile a1 p;

    static {
        boolean z;
        gg4 u0Var;
        Throwable th;
        gg4 z0Var;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        s = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable e = null;
        if (property == null || property.contains("Android")) {
            try {
                z0Var = new z0();
            } catch (Error | Exception e2) {
                try {
                    u0Var = new t0();
                } catch (Error | Exception e3) {
                    e = e3;
                    u0Var = new u0();
                }
                gg4 gg4Var = u0Var;
                th = e2;
                z0Var = gg4Var;
            }
        } else {
            try {
                z0Var = new t0();
            } catch (NoClassDefFoundError unused2) {
                z0Var = new u0();
            }
        }
        th = null;
        t = z0Var;
        if (e != null) {
            q12 q12Var = r;
            Logger loggerA = q12Var.a();
            Level level = Level.SEVERE;
            loggerA.log(level, "UnsafeAtomicHelper is broken!", th);
            q12Var.a().log(level, "AtomicReferenceFieldUpdaterAtomicHelper is broken!", e);
        }
    }

    public final void b(a1 a1Var) {
        a1Var.a = null;
        while (true) {
            a1 a1Var2 = this.p;
            if (a1Var2 == a1.c) {
                return;
            }
            a1 a1Var3 = null;
            while (a1Var2 != null) {
                a1 a1Var4 = a1Var2.b;
                if (a1Var2.a != null) {
                    a1Var3 = a1Var2;
                } else if (a1Var3 != null) {
                    a1Var3.b = a1Var4;
                    if (a1Var3.a == null) {
                        break;
                    }
                } else if (!t.l(this, a1Var2, a1Var4)) {
                    break;
                }
                a1Var2 = a1Var4;
            }
            return;
        }
    }

    public abstract Throwable c();
}
