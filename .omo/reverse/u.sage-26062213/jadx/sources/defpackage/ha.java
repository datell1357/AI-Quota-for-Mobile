package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ha implements op0, View.OnAttachStateChangeListener, Runnable {
    public final q9 n;
    public final h9 o;
    public gw4 p;
    public final dg2 q = new dg2();
    public final long r = 100;
    public fa s = fa.n;
    public boolean t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f123u;
    public tf2 v;
    public long w;
    public final tf2 x;
    public hh3 y;
    public boolean z;

    public ha(q9 q9Var, h9 h9Var) {
        this.n = q9Var;
        this.o = h9Var;
        new Handler(Looper.getMainLooper());
        tf2 tf2Var = is1.a;
        tf2Var.getClass();
        this.v = tf2Var;
        this.x = new tf2();
        this.y = new hh3(q9Var.getSemanticsOwner().a(), tf2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(defpackage.hs1 r34) {
        /*
            Method dump skipped, instruction units count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ha.a(hs1):void");
    }

    public final hs1 b() {
        if (this.t) {
            this.t = false;
            this.v = se0.m(this.n.getSemanticsOwner(), l9.s);
            this.w = System.currentTimeMillis();
        }
        return this.v;
    }

    public final void c() {
        gw4 gw4Var = this.p;
        if (gw4Var == null) {
            return;
        }
        Object obj = gw4Var.o;
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        dg2 dg2Var = this.q;
        if (dg2Var.i()) {
            Object[] objArr = dg2Var.a;
            int i = dg2Var.b;
            for (int i2 = 0; i2 < i; i2++) {
                yf0 yf0Var = (yf0) objArr[i2];
                int iOrdinal = yf0Var.c.ordinal();
                if (iOrdinal == 0) {
                    dd1 dd1Var = yf0Var.d;
                    if (dd1Var != null) {
                        ViewStructure viewStructure = (ViewStructure) dd1Var.o;
                        if (Build.VERSION.SDK_INT >= 29) {
                            vf.f(x8.e(obj), viewStructure);
                        }
                    }
                } else {
                    if (iOrdinal != 1) {
                        p61.x();
                        return;
                    }
                    AutofillId autofillIdA = gw4Var.A(yf0Var.a);
                    if (autofillIdA != null && Build.VERSION.SDK_INT >= 29) {
                        vf.g(x8.e(obj), autofillIdA);
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                ContentCaptureSession contentCaptureSessionE = x8.e(obj);
                i3 i3VarC = gg4.C((View) gw4Var.p);
                Objects.requireNonNull(i3VarC);
                vf.i(contentCaptureSessionE, y2.f(i3VarC.a), new long[]{Long.MIN_VALUE});
            }
            dg2Var.d();
        }
    }

    public final void d() {
        Handler handler = this.n.getHandler();
        if (handler == null || this.p == null || this.z) {
            return;
        }
        this.z = true;
        long jUptimeMillis = (this.f123u + this.r) - SystemClock.uptimeMillis();
        if (jUptimeMillis <= 0) {
            handler.post(this);
        } else {
            handler.postDelayed(this, jUptimeMillis);
        }
    }

    public final void e(gh3 gh3Var, hh3 hh3Var) {
        int i = 0;
        ga gaVar = new ga(i, hh3Var, this);
        gh3Var.getClass();
        List listJ = gh3.j(4, gh3Var);
        int size = listJ.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = listJ.get(i3);
            if (b().a(((gh3) obj).f)) {
                gaVar.f(Integer.valueOf(i2), obj);
                i2++;
            }
        }
        List listJ2 = gh3.j(4, gh3Var);
        int size2 = listJ2.size();
        while (i < size2) {
            gh3 gh3Var2 = (gh3) listJ2.get(i);
            hs1 hs1VarB = b();
            int i4 = gh3Var2.f;
            if (hs1VarB.a(i4)) {
                tf2 tf2Var = this.x;
                if (tf2Var.a(i4)) {
                    Object objB = tf2Var.b(i4);
                    if (objB == null) {
                        throw di0.m("node not present in pruned tree before this change");
                    }
                    e(gh3Var2, (hh3) objB);
                } else {
                    continue;
                }
            }
            i++;
        }
    }

    public final void f(int i, String str) {
        gw4 gw4Var;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 && (gw4Var = this.p) != null) {
            AutofillId autofillIdA = gw4Var.A(i);
            if (autofillIdA == null) {
                throw di0.m("Invalid content capture ID");
            }
            if (i2 >= 29) {
                vf.h(x8.e(gw4Var.o), autofillIdA, str);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(int r19, defpackage.gh3 r20) {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ha.g(int, gh3):void");
    }

    public final void h(gh3 gh3Var) {
        if (this.p != null) {
            this.q.a(new yf0(gh3Var.f, this.w, zf0.o, null));
            List listJ = gh3.j(4, gh3Var);
            int size = listJ.size();
            for (int i = 0; i < size; i++) {
                h((gh3) listJ.get(i));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            r17 = this;
            r0 = r17
            tf2 r1 = r0.x
            r1.c()
            hs1 r2 = r0.b()
            int[] r3 = r2.b
            java.lang.Object[] r4 = r2.c
            long[] r2 = r2.a
            int r5 = r2.length
            int r5 = r5 + (-2)
            if (r5 < 0) goto L5e
            r7 = 0
        L17:
            r8 = r2[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L59
            int r10 = r7 - r5
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = 0
        L31:
            if (r12 >= r10) goto L57
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L53
            int r13 = r7 << 3
            int r13 = r13 + r12
            r14 = r3[r13]
            r13 = r4[r13]
            ih3 r13 = (defpackage.ih3) r13
            hh3 r15 = new hh3
            gh3 r13 = r13.a
            hs1 r6 = r0.b()
            r15.<init>(r13, r6)
            r1.h(r14, r15)
        L53:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L31
        L57:
            if (r10 != r11) goto L5e
        L59:
            if (r7 == r5) goto L5e
            int r7 = r7 + 1
            goto L17
        L5e:
            hh3 r1 = new hh3
            q9 r2 = r0.n
            jh3 r2 = r2.getSemanticsOwner()
            gh3 r2 = r2.a()
            hs1 r3 = r0.b()
            r1.<init>(r2, r3)
            r0.y = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ha.i():void");
    }

    @Override // defpackage.op0
    public final void j(p22 p22Var) {
        h(this.n.getSemanticsOwner().a());
        c();
        this.p = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.n.getHandler();
        if (handler != null) {
            handler.removeCallbacks(this);
        }
        this.p = null;
    }

    @Override // defpackage.op0
    public final void r(p22 p22Var) {
        this.p = (gw4) this.o.a();
        g(-1, this.n.getSemanticsOwner().a());
        c();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r20 = this;
            r0 = r20
            q9 r1 = r0.n
            long r2 = android.os.SystemClock.uptimeMillis()
            r0.f123u = r2
            r2 = 0
            r0.z = r2
            gw4 r3 = r0.p
            if (r3 == 0) goto Lb9
            r0.c()
            java.lang.String r3 = "ContentCapture:changeChecker"
            android.os.Trace.beginSection(r3)
            r3 = 1
            r1.q(r3)     // Catch: java.lang.Throwable -> Lb4
            tf2 r3 = r0.x     // Catch: java.lang.Throwable -> Lb4
            int[] r4 = r3.b     // Catch: java.lang.Throwable -> Lb4
            long[] r3 = r3.a     // Catch: java.lang.Throwable -> Lb4
            int r5 = r3.length     // Catch: java.lang.Throwable -> Lb4
            int r5 = r5 + (-2)
            if (r5 < 0) goto L8c
            r6 = r2
        L29:
            r7 = r3[r6]     // Catch: java.lang.Throwable -> Lb4
            long r9 = ~r7     // Catch: java.lang.Throwable -> Lb4
            r11 = 7
            long r9 = r9 << r11
            long r9 = r9 & r7
            r11 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r9 = r9 & r11
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 == 0) goto L82
            int r9 = r6 - r5
            int r9 = ~r9     // Catch: java.lang.Throwable -> Lb4
            int r9 = r9 >>> 31
            r10 = 8
            int r9 = 8 - r9
            r11 = r2
        L43:
            if (r11 >= r9) goto L7d
            r12 = 255(0xff, double:1.26E-321)
            long r12 = r12 & r7
            r14 = 128(0x80, double:6.32E-322)
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 >= 0) goto L74
            int r12 = r6 << 3
            int r12 = r12 + r11
            r14 = r4[r12]     // Catch: java.lang.Throwable -> Lb4
            hs1 r12 = r0.b()     // Catch: java.lang.Throwable -> Lb4
            boolean r12 = r12.a(r14)     // Catch: java.lang.Throwable -> Lb4
            if (r12 != 0) goto L74
            dg2 r12 = r0.q     // Catch: java.lang.Throwable -> Lb4
            yf0 r13 = new yf0     // Catch: java.lang.Throwable -> Lb4
            r19 = r3
            long r2 = r0.w     // Catch: java.lang.Throwable -> Lb4
            zf0 r17 = defpackage.zf0.o     // Catch: java.lang.Throwable -> Lb4
            r18 = 0
            r15 = r2
            r13.<init>(r14, r15, r17, r18)     // Catch: java.lang.Throwable -> Lb4
            r12.a(r13)     // Catch: java.lang.Throwable -> Lb4
            r0.d()     // Catch: java.lang.Throwable -> Lb4
            goto L76
        L74:
            r19 = r3
        L76:
            long r7 = r7 >> r10
            int r11 = r11 + 1
            r3 = r19
            r2 = 0
            goto L43
        L7d:
            r19 = r3
            if (r9 != r10) goto L8c
            goto L84
        L82:
            r19 = r3
        L84:
            if (r6 == r5) goto L8c
            int r6 = r6 + 1
            r3 = r19
            r2 = 0
            goto L29
        L8c:
            java.lang.String r2 = "ContentCapture:sendAppearEvents"
            android.os.Trace.beginSection(r2)     // Catch: java.lang.Throwable -> Lb4
            jh3 r1 = r1.getSemanticsOwner()     // Catch: java.lang.Throwable -> Laf
            gh3 r1 = r1.a()     // Catch: java.lang.Throwable -> Laf
            hh3 r2 = r0.y     // Catch: java.lang.Throwable -> Laf
            r0.e(r1, r2)     // Catch: java.lang.Throwable -> Laf
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lb4
            hs1 r1 = r0.b()     // Catch: java.lang.Throwable -> Lb4
            r0.a(r1)     // Catch: java.lang.Throwable -> Lb4
            r0.i()     // Catch: java.lang.Throwable -> Lb4
            android.os.Trace.endSection()
            return
        Laf:
            r0 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lb4
            throw r0     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r0 = move-exception
            android.os.Trace.endSection()
            throw r0
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ha.run():void");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
