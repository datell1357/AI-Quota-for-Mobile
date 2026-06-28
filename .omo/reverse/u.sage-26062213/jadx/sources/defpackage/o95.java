package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o95 extends j05 {
    public final j95 c;
    public n05 d;
    public volatile Boolean e;
    public final v85 f;
    public ScheduledExecutorService g;
    public final lj1 h;
    public final ArrayList i;
    public final v85 j;

    public o95(r45 r45Var) {
        super(r45Var);
        this.i = new ArrayList();
        this.h = new lj1(r45Var.k);
        this.c = new j95(this);
        this.f = new v85(this, r45Var, 0);
        this.j = new v85(this, r45Var, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A(android.os.Bundle r8) {
        /*
            r7 = this;
            r7.v()
            r7.w()
            zt4 r4 = new zt4
            r4.<init>(r8)
            r7.H()
            java.lang.Object r0 = r7.a
            r45 r0 = (defpackage.r45) r0
            ds4 r1 = r0.d
            r2 = 0
            d05 r3 = defpackage.e05.W0
            boolean r1 = r1.G(r2, r3)
            r2 = 0
            if (r1 == 0) goto L59
            m15 r0 = r0.n()
            java.lang.Object r1 = r0.a
            r45 r1 = (defpackage.r45) r1
            ac5 r3 = r1.i
            a25 r1 = r1.f
            defpackage.r45.j(r3)
            byte[] r3 = defpackage.ac5.d0(r4)
            if (r3 != 0) goto L3f
            defpackage.r45.l(r1)
            x15 r0 = r1.g
            java.lang.String r1 = "Null default event parameters; not writing to database"
            r0.a(r1)
        L3d:
            r0 = r2
            goto L54
        L3f:
            int r5 = r3.length
            r6 = 131072(0x20000, float:1.83671E-40)
            if (r5 <= r6) goto L4f
            defpackage.r45.l(r1)
            x15 r0 = r1.g
            java.lang.String r1 = "Default event parameters too long for local database. Sending directly to service"
            r0.a(r1)
            goto L3d
        L4f:
            r1 = 4
            boolean r0 = r0.C(r1, r3)
        L54:
            if (r0 == 0) goto L59
            r0 = 1
            r3 = r0
            goto L5a
        L59:
            r3 = r2
        L5a:
            vc5 r2 = r7.L(r2)
            q65 r0 = new q65
            r1 = r7
            r5 = r8
            r0.<init>(r1, r2, r3, r4, r5)
            r1.J(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o95.A(android.os.Bundle):void");
    }

    public final void B() {
        v();
        w();
        if (M()) {
            return;
        }
        if (C()) {
            j95 j95Var = this.c;
            o95 o95Var = j95Var.c;
            o95Var.v();
            Context context = ((r45) o95Var.a).a;
            synchronized (j95Var) {
                try {
                    if (j95Var.a) {
                        a25 a25Var = ((r45) j95Var.c.a).f;
                        r45.l(a25Var);
                        a25Var.n.a("Connection attempt already in progress");
                        return;
                    } else {
                        if (j95Var.b != null && (j95Var.b.isConnecting() || j95Var.b.isConnected())) {
                            a25 a25Var2 = ((r45) j95Var.c.a).f;
                            r45.l(a25Var2);
                            a25Var2.n.a("Already awaiting connection attempt");
                            return;
                        }
                        j95Var.b = new r15(context, Looper.getMainLooper(), 93, j95Var, j95Var, null);
                        a25 a25Var3 = ((r45) j95Var.c.a).f;
                        r45.l(a25Var3);
                        a25Var3.n.a("Connecting to remote service");
                        j95Var.a = true;
                        Preconditions.checkNotNull(j95Var.b);
                        j95Var.b.checkAvailabilityAndConnect();
                        return;
                    }
                } finally {
                }
            }
        }
        r45 r45Var = (r45) this.a;
        if (r45Var.d.y()) {
            return;
        }
        List<ResolveInfo> listQueryIntentServices = r45Var.a.getPackageManager().queryIntentServices(new Intent().setClassName(r45Var.a, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            a25 a25Var4 = r45Var.f;
            r45.l(a25Var4);
            a25Var4.f.a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(r45Var.a, "com.google.android.gms.measurement.AppMeasurementService"));
        j95 j95Var2 = this.c;
        o95 o95Var2 = j95Var2.c;
        o95Var2.v();
        Context context2 = ((r45) o95Var2.a).a;
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (j95Var2) {
            try {
                boolean z = j95Var2.a;
                o95 o95Var3 = j95Var2.c;
                if (z) {
                    a25 a25Var5 = ((r45) o95Var3.a).f;
                    r45.l(a25Var5);
                    a25Var5.n.a("Connection attempt already in progress");
                } else {
                    a25 a25Var6 = ((r45) o95Var3.a).f;
                    r45.l(a25Var6);
                    a25Var6.n.a("Using local app measurement service");
                    j95Var2.a = true;
                    connectionTracker.bindService(context2, intent, o95Var3.c, 129);
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean C() {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o95.C():boolean");
    }

    public final void D() {
        v();
        w();
        j95 j95Var = this.c;
        if (j95Var.b != null && (j95Var.b.isConnected() || j95Var.b.isConnecting())) {
            j95Var.b.disconnect();
        }
        j95Var.b = null;
        try {
            ConnectionTracker.getInstance().unbindService(((r45) this.a).a, j95Var);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    public final boolean E() {
        v();
        w();
        if (!C()) {
            return true;
        }
        ac5 ac5Var = ((r45) this.a).i;
        r45.j(ac5Var);
        return ac5Var.f0() >= ((Integer) e05.J0.a(null)).intValue();
    }

    public final boolean F() {
        v();
        w();
        if (!C()) {
            return true;
        }
        ac5 ac5Var = ((r45) this.a).i;
        r45.j(ac5Var);
        return ac5Var.f0() >= 241200;
    }

    public final void G(ComponentName componentName) {
        v();
        if (this.d != null) {
            this.d = null;
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.n.b(componentName, "Disconnected from device MeasurementService");
            v();
            B();
        }
    }

    public final void H() {
        ((r45) this.a).getClass();
    }

    public final void I() {
        v();
        lj1 lj1Var = this.h;
        lj1Var.n = ((Clock) lj1Var.o).elapsedRealtime();
        ((r45) this.a).getClass();
        this.f.b(((Long) e05.Y.a(null)).longValue());
    }

    public final void J(Runnable runnable) {
        v();
        if (M()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.i;
        long size = arrayList.size();
        r45 r45Var = (r45) this.a;
        r45Var.getClass();
        if (size >= 1000) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Discarding data. Max runnable queue size reached");
        } else {
            arrayList.add(runnable);
            this.j.b(60000L);
            B();
        }
    }

    public final void K() {
        v();
        r45 r45Var = (r45) this.a;
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        x15 x15Var = a25Var.n;
        ArrayList arrayList = this.i;
        x15Var.b(Integer.valueOf(arrayList.size()), "Processing queued up service tasks");
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            try {
                ((Runnable) obj).run();
            } catch (RuntimeException e) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.f.b(e, "Task exception while flushing queue");
            }
        }
        arrayList.clear();
        this.j.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.vc5 L(boolean r10) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o95.L(boolean):vc5");
    }

    public final boolean M() {
        v();
        w();
        return this.d != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:258:0x043a A[Catch: all -> 0x0476, TRY_ENTER, TryCatch #53 {all -> 0x0476, blocks: (B:268:0x0466, B:258:0x043a, B:260:0x0440, B:261:0x0443, B:278:0x0487, B:207:0x0371, B:209:0x037b, B:214:0x038c), top: B:401:0x0466 }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0472 A[PHI: r4 r6 r23 r24 r26 r36 r37
  0x0472: PHI (r4v15 android.database.sqlite.SQLiteDatabase) = 
  (r4v12 android.database.sqlite.SQLiteDatabase)
  (r4v13 android.database.sqlite.SQLiteDatabase)
  (r4v16 android.database.sqlite.SQLiteDatabase)
 binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]
  0x0472: PHI (r6v5 int) = (r6v3 int), (r6v3 int), (r6v6 int) binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]
  0x0472: PHI (r23v9 int) = (r23v6 int), (r23v7 int), (r23v10 int) binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]
  0x0472: PHI (r24v9 java.lang.String) = (r24v6 java.lang.String), (r24v7 java.lang.String), (r24v10 java.lang.String) binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]
  0x0472: PHI (r26v9 java.lang.String) = (r26v6 java.lang.String), (r26v7 java.lang.String), (r26v10 java.lang.String) binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]
  0x0472: PHI (r36v9 int) = (r36v6 int), (r36v7 int), (r36v10 int) binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]
  0x0472: PHI (r37v9 java.lang.String) = (r37v6 java.lang.String), (r37v7 java.lang.String), (r37v10 java.lang.String) binds: [B:264:0x0455, B:281:0x0499, B:272:0x0470] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x049c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:457:0x049c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:459:0x049c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void N(defpackage.n05 r70, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable r71, defpackage.vc5 r72) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o95.N(n05, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable, vc5):void");
    }

    public final void O(fq4 fq4Var) {
        boolean zC;
        Preconditions.checkNotNull(fq4Var);
        v();
        w();
        r45 r45Var = (r45) this.a;
        r45Var.getClass();
        m15 m15VarN = r45Var.n();
        r45 r45Var2 = (r45) m15VarN.a;
        r45.j(r45Var2.i);
        byte[] bArrD0 = ac5.d0(fq4Var);
        if (bArrD0.length > 131072) {
            a25 a25Var = r45Var2.f;
            r45.l(a25Var);
            a25Var.g.a("Conditional user property too long for local database. Sending directly to service");
            zC = false;
        } else {
            zC = m15VarN.C(2, bArrD0);
        }
        J(new o85(this, L(true), zC, new fq4(fq4Var)));
    }

    @Override // defpackage.j05
    public final boolean y() {
        return false;
    }

    public final void z(AtomicReference atomicReference) {
        v();
        w();
        J(new i63(this, atomicReference, L(false)));
    }
}
