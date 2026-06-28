package defpackage;

import android.util.Log;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class km3 {
    public final gk3 a;
    public final uj3 b;
    public final tj3 c;
    public final iz3 d;
    public final lm0 e;
    public final yy2 f;
    public final hi0 g;
    public gj3 h;
    public boolean i;
    public boolean j;
    public String k;

    public km3(gk3 gk3Var, uj3 uj3Var, tj3 tj3Var, iz3 iz3Var, lm0 lm0Var, yy2 yy2Var, hi0 hi0Var) {
        gk3Var.getClass();
        uj3Var.getClass();
        tj3Var.getClass();
        iz3Var.getClass();
        lm0Var.getClass();
        yy2Var.getClass();
        hi0Var.getClass();
        this.a = gk3Var;
        this.b = uj3Var;
        this.c = tj3Var;
        this.d = iz3Var;
        this.e = lm0Var;
        this.f = yy2Var;
        this.g = hi0Var;
        this.k = "";
        ca.y(dm0.c(hi0Var), null, null, new gm3(this, null, 0), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.km3 r5, java.lang.String r6, defpackage.hm3 r7, defpackage.dh0 r8) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.km3.a(km3, java.lang.String, hm3, dh0):java.lang.Object");
    }

    public final void b() {
        this.i = false;
        if (this.h == null) {
            Log.d("FirebaseSessions", "App backgrounded, but local SessionData not initialized");
            return;
        }
        Log.d("FirebaseSessions", "App backgrounded on " + this.f.a());
        ca.y(dm0.c(this.g), null, null, new gm3(this, null, 1), 3);
    }

    public final void c() {
        this.i = true;
        gj3 gj3Var = this.h;
        if (gj3Var == null) {
            this.j = true;
            Log.d("FirebaseSessions", "App foregrounded, but local SessionData not initialized");
            return;
        }
        dh0 dh0Var = null;
        if (gj3Var == null) {
            nt1.X("localSessionData");
            throw null;
        }
        Log.d("FirebaseSessions", "App foregrounded on " + this.f.a());
        if (e(gj3Var) || d(gj3Var)) {
            ca.y(dm0.c(this.g), null, null, new d93(this, gj3Var, dh0Var, 4), 3);
        }
    }

    public final boolean d(gj3 gj3Var) {
        Map map = gj3Var.c;
        boolean z = true;
        yy2 yy2Var = this.f;
        if (map == null) {
            Log.d("FirebaseSessions", "No process data for " + yy2Var.a());
            return true;
        }
        yy2Var.getClass();
        wy2 wy2Var = (wy2) map.get(yy2Var.a());
        if (wy2Var != null && wy2Var.a == yy2Var.c && nt1.g(wy2Var.b, (String) yy2Var.d.getValue())) {
            z = false;
        }
        if (z) {
            Log.d("FirebaseSessions", "Process " + yy2Var.a() + " is stale");
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(defpackage.gj3 r11) {
        /*
            r10 = this;
            hz3 r0 = r11.b
            lj3 r11 = r11.a
            java.lang.String r1 = "Session "
            java.lang.String r2 = "FirebaseSessions"
            r3 = 0
            if (r0 == 0) goto L77
            iz3 r4 = r10.d
            r4.getClass()
            hz3 r4 = defpackage.iz3.a()
            bx3 r5 = defpackage.cy0.o
            long r4 = r4.a
            long r6 = r0.a
            long r4 = r4 - r6
            gy0 r0 = defpackage.gy0.MILLISECONDS
            long r4 = defpackage.c75.T(r4, r0)
            gk3 r10 = r10.a
            sk3 r0 = r10.a
            cy0 r0 = r0.d()
            r6 = 0
            if (r0 == 0) goto L3a
            long r8 = r0.n
            int r0 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r0 <= 0) goto L3a
            boolean r0 = defpackage.cy0.f(r8)
            if (r0 != 0) goto L3a
            goto L57
        L3a:
            sk3 r10 = r10.b
            cy0 r10 = r10.d()
            if (r10 == 0) goto L4f
            long r8 = r10.n
            int r10 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r10 <= 0) goto L4f
            boolean r10 = defpackage.cy0.f(r8)
            if (r10 != 0) goto L4f
            goto L57
        L4f:
            r10 = 30
            gy0 r0 = defpackage.gy0.MINUTES
            long r8 = defpackage.c75.S(r10, r0)
        L57:
            int r10 = defpackage.cy0.c(r4, r8)
            if (r10 <= 0) goto L5e
            r3 = 1
        L5e:
            if (r3 == 0) goto L76
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r1)
            java.lang.String r11 = r11.a
            r10.append(r11)
            java.lang.String r11 = " is expired"
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            android.util.Log.d(r2, r10)
        L76:
            return r3
        L77:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r1)
            java.lang.String r11 = r11.a
            r10.append(r11)
            java.lang.String r11 = " has not backgrounded yet"
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            android.util.Log.d(r2, r10)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.km3.e(gj3):boolean");
    }
}
