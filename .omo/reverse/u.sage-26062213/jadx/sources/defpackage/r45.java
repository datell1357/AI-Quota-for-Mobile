package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r45 implements s55 {
    public static volatile r45 F;
    public int A;
    public int B;
    public final long D;
    public final long E;
    public final Context a;
    public final boolean b;
    public final pr3 c;
    public final ds4 d;
    public final f35 e;
    public final a25 f;
    public final j45 g;
    public final ia5 h;
    public final ac5 i;
    public final p15 j;
    public final Clock k;
    public final f85 l;
    public final m75 m;
    public final bx4 n;
    public final r75 o;
    public final String p;
    public m15 q;
    public o95 r;
    public st4 s;
    public g15 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public s75 f292u;
    public Boolean w;
    public long x;
    public volatile Boolean y;
    public volatile boolean z;
    public boolean v = false;
    public final AtomicInteger C = new AtomicInteger(0);

    public r45(f65 f65Var) {
        Context applicationContext;
        boolean z = false;
        Preconditions.checkNotNull(f65Var);
        Context context = f65Var.a;
        pr3 pr3Var = new pr3(16);
        this.c = pr3Var;
        ye4.a = pr3Var;
        this.a = context;
        this.b = f65Var.e;
        this.y = f65Var.b;
        this.p = f65Var.h;
        int i = 1;
        this.z = true;
        if (y75.b == null && context != null) {
            Object obj = y75.a;
            synchronized (obj) {
                try {
                    if (y75.b == null) {
                        synchronized (obj) {
                            g75 g75Var = y75.b;
                            Context applicationContext2 = context.getApplicationContext();
                            if (applicationContext2 == null) {
                                applicationContext2 = context;
                            }
                            if (g75Var == null || g75Var.a != applicationContext2) {
                                if (g75Var != null) {
                                    Iterator it = h75.a.values().iterator();
                                    if (it.hasNext()) {
                                        if (it.next() != null) {
                                            throw new ClassCastException();
                                        }
                                        throw null;
                                    }
                                    e85.a();
                                }
                                y75.b = new g75(applicationContext2, c75.M(new di2(applicationContext2, 5)));
                                y75.c.incrementAndGet();
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
        this.k = DefaultClock.getInstance();
        Api api = l65.a;
        new w65(context, l65.a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS).doRead(TaskApiCall.builder().run(new pc4(17, "com.google.android.gms.measurement#".concat(String.valueOf(context.getPackageName())), new String[0])).build());
        AtomicReference atomicReference = o75.k;
        if (atomicReference.get() == null) {
            try {
                applicationContext = context.getApplicationContext();
            } catch (NullPointerException unused) {
                o75.b();
                gp4.b(Level.WARNING, (Executor) o75.m.get(), null, "context.getApplicationContext() yielded NullPointerException", new Object[0]);
                applicationContext = null;
            }
            if (applicationContext != null) {
                while (!atomicReference.compareAndSet(null, applicationContext) && atomicReference.get() == null) {
                }
            }
        }
        Long l = f65Var.f;
        this.D = l != null ? l.longValue() : this.k.currentTimeMillis();
        Long l2 = f65Var.g;
        this.E = l2 != null ? l2.longValue() : this.k.elapsedRealtime();
        ds4 ds4Var = new ds4(this);
        ds4Var.d = ur4.a;
        this.d = ds4Var;
        f35 f35Var = new f35(this);
        f35Var.y();
        this.e = f35Var;
        a25 a25Var = new a25(this);
        a25Var.y();
        this.f = a25Var;
        ac5 ac5Var = new ac5(this);
        ac5Var.y();
        this.i = ac5Var;
        this.j = new p15(new e65(f65Var, this));
        this.n = new bx4(this);
        f85 f85Var = new f85(this);
        f85Var.x();
        this.l = f85Var;
        m75 m75Var = new m75(this);
        m75Var.x();
        this.m = m75Var;
        ia5 ia5Var = new ia5(this);
        ia5Var.x();
        this.h = ia5Var;
        r75 r75Var = new r75(this);
        r75Var.y();
        this.o = r75Var;
        j45 j45Var = new j45(this);
        j45Var.y();
        this.g = j45Var;
        ix4 ix4Var = f65Var.d;
        boolean z2 = ix4Var == null || ix4Var.o == 0;
        if (this.a.getApplicationContext() instanceof Application) {
            k(m75Var);
            if (((r45) m75Var.a).a.getApplicationContext() instanceof Application) {
                Application application = (Application) ((r45) m75Var.a).a.getApplicationContext();
                if (m75Var.c == null) {
                    m75Var.c = new ty4(i, m75Var);
                }
                if (z2) {
                    application.unregisterActivityLifecycleCallbacks(m75Var.c);
                    application.registerActivityLifecycleCallbacks(m75Var.c);
                    a25 a25Var2 = ((r45) m75Var.a).f;
                    l(a25Var2);
                    a25Var2.n.a("Registered activity lifecycle callback");
                }
            }
        } else {
            l(a25Var);
            a25Var.i.a("Application context is not an Application");
        }
        j45Var.E(new rf1(20, this, f65Var, z));
    }

    public static final void i(az4 az4Var) {
        if (az4Var != null) {
            return;
        }
        k21.n("Component not created");
    }

    public static final void j(ib0 ib0Var) {
        if (ib0Var != null) {
            return;
        }
        k21.n("Component not created");
    }

    public static final void k(j05 j05Var) {
        if (j05Var == null) {
            k21.n("Component not created");
        } else {
            if (j05Var.b) {
                return;
            }
            k21.n("Component not initialized: ".concat(String.valueOf(j05Var.getClass())));
        }
    }

    public static final void l(q55 q55Var) {
        if (q55Var == null) {
            k21.n("Component not created");
        } else {
            if (q55Var.b) {
                return;
            }
            k21.n("Component not initialized: ".concat(String.valueOf(q55Var.getClass())));
        }
    }

    public static r45 r(Context context, ix4 ix4Var, Long l, Long l2) {
        Bundle bundle;
        if (ix4Var != null) {
            Bundle bundle2 = ix4Var.q;
            ix4Var = new ix4(ix4Var.n, ix4Var.o, ix4Var.p, bundle2, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (F == null) {
            synchronized (r45.class) {
                try {
                    if (F == null) {
                        F = new r45(new f65(context, ix4Var, l, l2));
                    }
                } finally {
                }
            }
        } else if (ix4Var != null && (bundle = ix4Var.q) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(F);
            F.y = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(F);
        return F;
    }

    public final boolean a() {
        return g() == 0;
    }

    @Override // defpackage.s55
    public final pr3 b() {
        return this.c;
    }

    @Override // defpackage.s55
    public final a25 c() {
        a25 a25Var = this.f;
        l(a25Var);
        return a25Var;
    }

    @Override // defpackage.s55
    public final j45 d() {
        j45 j45Var = this.g;
        l(j45Var);
        return j45Var;
    }

    @Override // defpackage.s55
    public final Context e() {
        return this.a;
    }

    @Override // defpackage.s55
    public final Clock f() {
        return this.k;
    }

    public final int g() {
        j45 j45Var = this.g;
        l(j45Var);
        j45Var.v();
        ds4 ds4Var = this.d;
        if (ds4Var.J()) {
            return 1;
        }
        l(j45Var);
        j45Var.v();
        if (!this.z) {
            return 8;
        }
        f35 f35Var = this.e;
        j(f35Var);
        f35Var.v();
        Boolean boolValueOf = f35Var.z().contains("measurement_enabled") ? Boolean.valueOf(f35Var.z().getBoolean("measurement_enabled", true)) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue() ? 0 : 3;
        }
        pr3 pr3Var = ((r45) ds4Var.a).c;
        Boolean boolI = ds4Var.I("firebase_analytics_collection_enabled");
        return boolI != null ? boolI.booleanValue() ? 0 : 4 : (this.y == null || this.y.booleanValue()) ? 0 : 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h() {
        /*
            r7 = this;
            boolean r0 = r7.v
            r1 = 0
            if (r0 == 0) goto La5
            j45 r0 = r7.g
            l(r0)
            r0.v()
            java.lang.Boolean r0 = r7.w
            com.google.android.gms.common.util.Clock r2 = r7.k
            if (r0 == 0) goto L32
            long r3 = r7.x
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 == 0) goto L32
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L9e
            long r3 = r2.elapsedRealtime()
            long r5 = r7.x
            long r3 = r3 - r5
            long r3 = java.lang.Math.abs(r3)
            r5 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 <= 0) goto L9e
        L32:
            long r2 = r2.elapsedRealtime()
            r7.x = r2
            ac5 r0 = r7.i
            j(r0)
            java.lang.String r2 = "android.permission.INTERNET"
            boolean r2 = r0.X(r2)
            if (r2 == 0) goto L84
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r2 = r0.X(r2)
            if (r2 == 0) goto L84
            android.content.Context r2 = r7.a
            com.google.android.gms.common.wrappers.PackageManagerWrapper r3 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r2)
            boolean r3 = r3.isCallerInstantApp()
            r4 = 1
            if (r3 != 0) goto L83
            ds4 r3 = r7.d
            boolean r3 = r3.y()
            if (r3 != 0) goto L83
            boolean r3 = defpackage.ac5.p0(r2)
            if (r3 == 0) goto L84
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r2)
            java.lang.String r3 = "com.google.android.gms.measurement.AppMeasurementJobService"
            android.content.pm.PackageManager r5 = r2.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L84
            if (r5 != 0) goto L74
            goto L84
        L74:
            android.content.ComponentName r6 = new android.content.ComponentName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L84
            r6.<init>(r2, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L84
            android.content.pm.ServiceInfo r2 = r5.getServiceInfo(r6, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L84
            if (r2 == 0) goto L84
            boolean r2 = r2.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L84
            if (r2 == 0) goto L84
        L83:
            r1 = r4
        L84:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r1)
            r7.w = r2
            if (r1 == 0) goto L9e
            g15 r1 = r7.q()
            java.lang.String r1 = r1.C()
            boolean r0 = r0.B(r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r7.w = r0
        L9e:
            java.lang.Boolean r7 = r7.w
            boolean r7 = r7.booleanValue()
            return r7
        La5:
            java.lang.String r7 = "AppMeasurement is not initialized"
            defpackage.k21.n(r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r45.h():boolean");
    }

    public final p15 m() {
        return this.j;
    }

    public final m15 n() {
        k(this.q);
        return this.q;
    }

    public final o95 o() {
        k(this.r);
        return this.r;
    }

    public final st4 p() {
        l(this.s);
        return this.s;
    }

    public final g15 q() {
        k(this.t);
        return this.t;
    }
}
