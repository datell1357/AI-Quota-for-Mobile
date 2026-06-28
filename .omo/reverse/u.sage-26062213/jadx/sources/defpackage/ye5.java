package defpackage;

import java.util.ArrayDeque;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ye5 {
    public static final AtomicReference a;
    public static final ky4 b;
    public static final WeakHashMap c;
    public static final lc d;

    static {
        np1.k(5, "androidx.fragment.app.FragmentViewLifecycleOwner.handleLifecycleEvent", "com.google.android.libraries.logging.logger.transmitters.clearcut", "com.google.android.libraries.performance.primes.transmitter.clearcut", "com.google.android.libraries.performance.primes.metrics.crash.CrashMetricServiceImpl", "com.google.android.libraries.performance.primes.metrics.crash.applicationexit.ApplicationExitMetricServiceImpl");
        a = new AtomicReference(f53.w);
        b = new ky4(25);
        c = new WeakHashMap();
        d = new lc(5);
        new ArrayDeque();
        new ArrayDeque();
    }

    public static rf5 a() {
        qf5 qf5VarC = c();
        rf5 rf5Var = qf5VarC.b;
        if (rf5Var != null && rf5Var != jf5.t) {
            return rf5Var;
        }
        qo3 qo3Var = hf5.t;
        UUID uuidB = ze5.c.b();
        String strB = te5.b(uuidB);
        np1 np1Var = (np1) a.get();
        if (!np1Var.isEmpty()) {
            np1Var.forEach(new gf5(0));
        }
        return new hf5(uuidB, strB, hf5.t, qf5VarC);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.rf5 b(defpackage.qf5 r5, defpackage.rf5 r6) {
        /*
            r5.getClass()
            rf5 r0 = r5.b
            if (r0 != r6) goto L9
            goto L7a
        L9:
            if (r0 != 0) goto L43
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r1 < r2) goto L16
            boolean r1 = defpackage.r44.o()
            goto L41
        L16:
            zc5 r1 = defpackage.ad5.a
            r1.getClass()
            ky4 r1 = defpackage.ye5.b
            r1.getClass()
            java.lang.String r1 = "tiktok_systrace"
            java.lang.String r2 = "false"
            java.lang.reflect.Method r3 = defpackage.bd5.a     // Catch: java.lang.Exception -> L33
            java.lang.Object[] r1 = new java.lang.Object[]{r1, r2}     // Catch: java.lang.Exception -> L33
            r4 = 0
            java.lang.Object r1 = r3.invoke(r4, r1)     // Catch: java.lang.Exception -> L33
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> L33
            r2 = r1
            goto L3b
        L33:
            r1 = move-exception
            java.lang.String r3 = "SystemProperties"
            java.lang.String r4 = "get error"
            android.util.Log.e(r3, r4, r1)
        L3b:
            java.lang.String r1 = "true"
            boolean r1 = r2.equals(r1)
        L41:
            r5.a = r1
        L43:
            boolean r1 = r5.a
            if (r1 == 0) goto L75
            if (r0 == 0) goto L70
            if (r6 == 0) goto L6d
            r1 = r0
            te5 r1 = (defpackage.te5) r1
            te5 r1 = r1.n
            if (r1 != r6) goto L5c
            boolean r1 = defpackage.kw4.c(r0)
            if (r1 != 0) goto L5c
            android.os.Trace.endSection()
            goto L75
        L5c:
            r1 = r6
            te5 r1 = (defpackage.te5) r1
            te5 r1 = r1.n
            if (r0 != r1) goto L6d
            boolean r1 = defpackage.kw4.c(r6)
            if (r1 != 0) goto L6d
            defpackage.kw4.d(r6)
            goto L75
        L6d:
            defpackage.kw4.b(r0)
        L70:
            if (r6 == 0) goto L75
            defpackage.kw4.a(r6)
        L75:
            if (r0 == r6) goto L7a
            r5.b = r6
            return r0
        L7a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ye5.b(qf5, rf5):rf5");
    }

    public static qf5 c() {
        return (qf5) d.get();
    }
}
