package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ty4 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ ty4(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004a A[Catch: all -> 0x0028, RuntimeException -> 0x002c, TryCatch #1 {RuntimeException -> 0x002c, blocks: (B:3:0x0005, B:5:0x0019, B:7:0x001f, B:22:0x004a, B:25:0x0051, B:30:0x0063, B:35:0x0070, B:15:0x002f, B:17:0x0036, B:19:0x0042), top: B:44:0x0005, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(defpackage.jx4 r9, android.os.Bundle r10) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.o
            r1 = r0
            m75 r1 = (defpackage.m75) r1
            java.lang.Object r0 = r1.a     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            r45 r0 = (defpackage.r45) r0     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            a25 r2 = r0.f     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            defpackage.r45.l(r2)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            x15 r2 = r2.n     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            java.lang.String r3 = "onActivityCreated"
            r2.a(r3)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            android.content.Intent r2 = r9.p     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r2 == 0) goto L7f
            android.net.Uri r3 = r2.getData()     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r3 == 0) goto L2f
            boolean r4 = r3.isHierarchical()     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r4 != 0) goto L26
            goto L2f
        L26:
            r5 = r3
            goto L48
        L28:
            r0 = move-exception
            r8 = r0
            goto La1
        L2c:
            r0 = move-exception
            r8 = r0
            goto L8c
        L2f:
            android.os.Bundle r3 = r2.getExtras()     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            r4 = 0
            if (r3 == 0) goto L47
            java.lang.String r5 = "com.android.vending.referral_url"
            java.lang.String r3 = r3.getString(r5)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r5 != 0) goto L47
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            goto L26
        L47:
            r5 = r4
        L48:
            if (r5 == 0) goto L7f
            boolean r3 = r5.isHierarchical()     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r3 != 0) goto L51
            goto L7f
        L51:
            ac5 r3 = r0.i     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            defpackage.r45.j(r3)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            boolean r2 = defpackage.ac5.w0(r2)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r2 == 0) goto L60
            java.lang.String r2 = "gs"
        L5e:
            r6 = r2
            goto L63
        L60:
            java.lang.String r2 = "auto"
            goto L5e
        L63:
            java.lang.String r2 = "referrer"
            java.lang.String r7 = r5.getQueryParameter(r2)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            if (r10 != 0) goto L6e
            r2 = 1
        L6c:
            r4 = r2
            goto L70
        L6e:
            r2 = 0
            goto L6c
        L70:
            j45 r0 = r0.g     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            defpackage.r45.l(r0)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            q65 r2 = new q65     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            r3 = r8
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            r0.E(r2)     // Catch: java.lang.Throwable -> L28 java.lang.RuntimeException -> L2c
            goto L9c
        L7f:
            java.lang.Object r8 = r1.a
            r45 r8 = (defpackage.r45) r8
        L83:
            f85 r8 = r8.l
            defpackage.r45.k(r8)
            r8.C(r9, r10)
            return
        L8c:
            java.lang.Object r0 = r1.a     // Catch: java.lang.Throwable -> L28
            r45 r0 = (defpackage.r45) r0     // Catch: java.lang.Throwable -> L28
            a25 r0 = r0.f     // Catch: java.lang.Throwable -> L28
            defpackage.r45.l(r0)     // Catch: java.lang.Throwable -> L28
            x15 r0 = r0.f     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "Throwable caught in onActivityCreated"
            r0.b(r8, r2)     // Catch: java.lang.Throwable -> L28
        L9c:
            java.lang.Object r8 = r1.a
            r45 r8 = (defpackage.r45) r8
            goto L83
        La1:
            java.lang.Object r0 = r1.a
            r45 r0 = (defpackage.r45) r0
            f85 r0 = r0.l
            defpackage.r45.k(r0)
            r0.C(r9, r10)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ty4.c(jx4, android.os.Bundle):void");
    }

    public void d(jx4 jx4Var) {
        f85 f85Var = ((r45) ((m75) this.o).a).l;
        r45.k(f85Var);
        synchronized (f85Var.l) {
            try {
                if (Objects.equals(f85Var.g, jx4Var)) {
                    f85Var.g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (((r45) f85Var.a).d.K()) {
            f85Var.f.remove(Integer.valueOf(jx4Var.n));
        }
    }

    public void e(jx4 jx4Var) {
        r45 r45Var = (r45) ((m75) this.o).a;
        f85 f85Var = r45Var.l;
        r45.k(f85Var);
        synchronized (f85Var.l) {
            f85Var.k = false;
            f85Var.h = true;
        }
        r45 r45Var2 = (r45) f85Var.a;
        long jElapsedRealtime = r45Var2.k.elapsedRealtime();
        if (r45Var2.d.K()) {
            w75 w75VarF = f85Var.F(jx4Var);
            f85Var.d = f85Var.c;
            f85Var.c = null;
            j45 j45Var = r45Var2.g;
            r45.l(j45Var);
            j45Var.E(new b85(f85Var, w75VarF, jElapsedRealtime));
        } else {
            f85Var.c = null;
            j45 j45Var2 = r45Var2.g;
            r45.l(j45Var2);
            j45Var2.E(new ov4(f85Var, jElapsedRealtime));
        }
        ia5 ia5Var = r45Var.h;
        r45.k(ia5Var);
        r45 r45Var3 = (r45) ia5Var.a;
        long jElapsedRealtime2 = r45Var3.k.elapsedRealtime();
        j45 j45Var3 = r45Var3.g;
        r45.l(j45Var3);
        j45Var3.E(new z95(ia5Var, jElapsedRealtime2, 1));
    }

    public void f(jx4 jx4Var) {
        r45 r45Var = (r45) ((m75) this.o).a;
        ia5 ia5Var = r45Var.h;
        r45.k(ia5Var);
        r45 r45Var2 = (r45) ia5Var.a;
        long jElapsedRealtime = r45Var2.k.elapsedRealtime();
        j45 j45Var = r45Var2.g;
        r45.l(j45Var);
        j45Var.E(new z95(ia5Var, jElapsedRealtime, 0));
        f85 f85Var = r45Var.l;
        r45.k(f85Var);
        Object obj = f85Var.l;
        synchronized (obj) {
            try {
                f85Var.k = true;
                if (!Objects.equals(jx4Var, f85Var.g)) {
                    synchronized (obj) {
                        f85Var.g = jx4Var;
                        f85Var.h = false;
                        r45 r45Var3 = (r45) f85Var.a;
                        if (r45Var3.d.K()) {
                            f85Var.i = null;
                            j45 j45Var2 = r45Var3.g;
                            r45.l(j45Var2);
                            j45Var2.E(new z75(f85Var, 1));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        r45 r45Var4 = (r45) f85Var.a;
        if (!r45Var4.d.K()) {
            f85Var.c = f85Var.i;
            j45 j45Var3 = r45Var4.g;
            r45.l(j45Var3);
            j45Var3.E(new z75(f85Var, 0));
            return;
        }
        f85Var.D(jx4Var.o, f85Var.F(jx4Var), false);
        bx4 bx4Var = ((r45) f85Var.a).n;
        r45.i(bx4Var);
        r45 r45Var5 = (r45) bx4Var.a;
        long jElapsedRealtime2 = r45Var5.k.elapsedRealtime();
        j45 j45Var4 = r45Var5.g;
        r45.l(j45Var4);
        j45Var4.E(new ov4(bx4Var, jElapsedRealtime2));
    }

    public void g(jx4 jx4Var, Bundle bundle) {
        w75 w75Var;
        f85 f85Var = ((r45) ((m75) this.o).a).l;
        r45.k(f85Var);
        if (!((r45) f85Var.a).d.K() || bundle == null || (w75Var = (w75) f85Var.f.get(Integer.valueOf(jx4Var.n))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", w75Var.c);
        bundle2.putString("name", w75Var.a);
        bundle2.putString("referrer_name", w75Var.b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        switch (this.n) {
            case 0:
                ((uy4) this.o).c(new lx4(this, bundle, activity));
                break;
            default:
                c(jx4.Y(activity), bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        switch (this.n) {
            case 0:
                ((uy4) this.o).c(new qy4(this, activity, 4));
                break;
            default:
                d(jx4.Y(activity));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        switch (this.n) {
            case 0:
                ((uy4) this.o).c(new qy4(this, activity, 2));
                break;
            default:
                e(jx4.Y(activity));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        switch (this.n) {
            case 0:
                ((uy4) this.o).c(new qy4(this, activity, 1));
                break;
            default:
                f(jx4.Y(activity));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        switch (this.n) {
            case 0:
                dw4 dw4Var = new dw4();
                ((uy4) this.o).c(new lx4(this, activity, dw4Var));
                Bundle bundleF = dw4Var.F(50L);
                if (bundleF != null) {
                    bundle.putAll(bundleF);
                }
                break;
            default:
                g(jx4.Y(activity), bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.n) {
            case 0:
                ((uy4) this.o).c(new qy4(this, activity, 0));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        switch (this.n) {
            case 0:
                ((uy4) this.o).c(new qy4(this, activity, 3));
                break;
        }
    }

    private final void a(Activity activity) {
    }

    private final void b(Activity activity) {
    }
}
