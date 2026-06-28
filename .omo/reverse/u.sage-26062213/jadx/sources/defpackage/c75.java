package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.UserManager;
import android.util.Log;
import android.widget.RemoteViews;
import com.google.android.gms.common.api.Api;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class c75 implements n01 {
    public static UserManager a = null;
    public static volatile boolean b = false;
    public static final ka0 c = new ka0(-437900470, false, new sq(3));
    public static final ds0 d = new ds0(1.0f, 1.0f);
    public static final yb e = new yb(8);
    public static final qv1 f = new qv1(2);
    public static final j71 g = new j71();
    public static so1 h;

    public static boolean A(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static boolean B(Object[] objArr, Object[] objArr2) {
        if (objArr == null) {
            return objArr2 == null;
        }
        if (objArr2 == null || objArr.length != objArr2.length) {
            return false;
        }
        for (int i = 0; i < objArr.length; i++) {
            if (!A(objArr[i], objArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static final float C(w41 w41Var, w41 w41Var2) {
        w41Var.getClass();
        List list = w41Var.a;
        w41Var2.getClass();
        List list2 = w41Var2.a;
        if ((w41Var instanceof u41) && (w41Var2 instanceof u41) && ((u41) w41Var).d != ((u41) w41Var2).d) {
            return Float.MAX_VALUE;
        }
        float fA = (((cl0) o70.o0(list)).a() + ((cl0) o70.h0(list)).a[0]) / 2.0f;
        float fB = (((cl0) o70.o0(list)).b() + ((cl0) o70.h0(list)).a[1]) / 2.0f;
        float fA2 = (((cl0) o70.o0(list2)).a() + ((cl0) o70.h0(list2)).a[0]) / 2.0f;
        float f2 = fA - fA2;
        float fB2 = fB - ((((cl0) o70.o0(list2)).b() + ((cl0) o70.h0(list2)).a[1]) / 2.0f);
        return (fB2 * fB2) + (f2 * f2);
    }

    public static final int D() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = (int) jCurrentTimeMillis;
        int i2 = (int) (jCurrentTimeMillis >> 32);
        int i3 = ~i;
        uh4 uh4Var = new uh4();
        uh4Var.o = i;
        uh4Var.p = i2;
        uh4Var.q = 0;
        uh4Var.r = 0;
        uh4Var.s = i3;
        uh4Var.t = (i << 10) ^ (i2 >>> 4);
        if ((i2 | i | i3) == 0) {
            k21.f("Initial state must have at least one non-zero element.");
            return 0;
        }
        for (int i4 = 0; i4 < 64; i4++) {
            uh4Var.a();
        }
        return uh4Var.a();
    }

    public static final qc E(hi0 hi0Var) {
        qc qcVar = (qc) hi0Var.K(mj1.Y);
        if (qcVar != null) {
            return qcVar;
        }
        k21.n("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
        return null;
    }

    public static final rg3 F(Object obj) {
        if (obj != qc0.a) {
            return (rg3) obj;
        }
        k21.n("Does not contain segment");
        return null;
    }

    public static String G(Context context, int i) {
        context.getClass();
        return context.getSharedPreferences("widget_preferences", 0).getString("service_type_" + i, null);
    }

    public static int H(int i, int i2) {
        return (i * 37) + i2;
    }

    public static int I(int i, Object obj) {
        return H(i, obj != null ? obj.hashCode() : 0);
    }

    public static final boolean J(Object obj) {
        return obj == qc0.a;
    }

    public static boolean K(Context context, int i) {
        boolean z = context.getSharedPreferences("widget_preferences", 0).getBoolean("is_refreshing_" + i, false);
        ra3 ra3Var = ez3.a;
        Thread.currentThread().getName();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        return z;
    }

    public static final int L(g12 g12Var, boolean z) {
        int i;
        int i2;
        if (z) {
            i = g12Var.o;
            i2 = g12Var.q;
        } else {
            i = g12Var.n;
            i2 = g12Var.p;
        }
        return i + i2;
    }

    public static cu3 M(cu3 cu3Var) {
        return ((cu3Var instanceof eu3) || (cu3Var instanceof du3)) ? cu3Var : cu3Var instanceof Serializable ? new du3(cu3Var) : new eu3(cu3Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x029a, code lost:
    
        defpackage.k21.f("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x029d, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010a, code lost:
    
        r25 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0110, code lost:
    
        if (r5 == r26.length()) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0116, code lost:
    
        if (r2 == '+') goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0118, code lost:
    
        if (r2 == '-') goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011a, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x011c, code lost:
    
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0120, code lost:
    
        if (r5 == (r23 + r2)) goto L195;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0199 A[LOOP:7: B:106:0x0197->B:107:0x0199, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x015c A[LOOP:5: B:95:0x015a->B:96:0x015c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long N(java.lang.String r26) {
        /*
            Method dump skipped, instruction units count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c75.N(java.lang.String):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long O(int r13, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c75.O(int, java.lang.String):long");
    }

    public static void P(Context context, int i, boolean z) {
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences("widget_preferences", 0);
        sharedPreferences.getBoolean("is_refreshing_" + i, false);
        sharedPreferences.edit().putBoolean("is_refreshing_" + i, z).apply();
        ra3 ra3Var = ez3.a;
        Thread.currentThread().getName();
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    public static final long Q(float f2, long j) {
        float fMax = Math.max(0.0f, Float.intBitsToFloat((int) (j >> 32)) - f2);
        float fMax2 = Math.max(0.0f, Float.intBitsToFloat((int) (j & 4294967295L)) - f2);
        return (((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax2)) & 4294967295L);
    }

    public static final int R(long j) {
        float[] fArr = e80.a;
        return (int) (t70.a(j, e80.e) >>> 32);
    }

    public static final long S(int i, gy0 gy0Var) {
        if (gy0Var.compareTo(gy0.SECONDS) > 0) {
            return T(i, gy0Var);
        }
        long jConvert = TimeUnit.NANOSECONDS.convert(i, gy0Var.n);
        bx3 bx3Var = cy0.o;
        long j = jConvert << 1;
        int i2 = ey0.a;
        return j;
    }

    public static final long T(long j, gy0 gy0Var) {
        TimeUnit timeUnit = gy0Var.n;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        long jConvert = timeUnit.convert(4611686018426999999L, timeUnit2);
        if ((-jConvert) <= j && j <= jConvert) {
            long jConvert2 = timeUnit2.convert(j, timeUnit);
            bx3 bx3Var = cy0.o;
            long j2 = jConvert2 << 1;
            int i = ey0.a;
            return j2;
        }
        if (gy0Var.compareTo(gy0.MILLISECONDS) < 0) {
            return z(ix.l(TimeUnit.MILLISECONDS.convert(j, timeUnit), -4611686018427387903L, 4611686018427387903L));
        }
        long jSignum = Long.signum(j);
        if (j < -9223372036854775807L) {
            j = -9223372036854775807L;
        }
        return z(k75.p(Math.abs(j), gy0Var) * jSignum);
    }

    public static int U(cu0 cu0Var, rd3 rd3Var) {
        if (cu0Var instanceof au0) {
            return ((au0) cu0Var).a;
        }
        int iOrdinal = rd3Var.ordinal();
        if (iOrdinal == 0) {
            return Integer.MIN_VALUE;
        }
        if (iOrdinal == 1) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        p61.x();
        return 0;
    }

    public static s0 V(Context context, Callable callable, Executor executor) {
        gt4 gt4Var = new gt4(7, callable);
        if (W(context)) {
            a34 a34Var = new a34();
            a34Var.v = new z24(a34Var, gt4Var);
            executor.execute(a34Var);
            return a34Var;
        }
        jk3 jk3Var = new jk3();
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        b75 b75Var = new b75(atomicBoolean, context, jk3Var, gt4Var, executor);
        context.registerReceiver(b75Var, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        if (!W(context) || !atomicBoolean.compareAndSet(false, true)) {
            jk3Var.a(new e30(jk3Var, atomicBoolean, context, b75Var, 6, false), fu0.n);
            return jk3Var;
        }
        try {
            context.unregisterReceiver(b75Var);
        } catch (IllegalArgumentException e2) {
            Log.w("DirectBootUtils", "Failed to unregister receiver", e2);
        }
        a34 a34Var2 = new a34();
        a34Var2.v = new z24(a34Var2, gt4Var);
        executor.execute(a34Var2);
        jk3Var.o(a34Var2);
        return jk3Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
    
        r5 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean W(android.content.Context r7) {
        /*
            boolean r0 = defpackage.c75.b
            r1 = 1
            if (r0 == 0) goto L6
            return r1
        L6:
            java.lang.Class<c75> r0 = defpackage.c75.class
            monitor-enter(r0)
            boolean r2 = defpackage.c75.b     // Catch: java.lang.Throwable -> Lf
            if (r2 == 0) goto L11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            return r1
        Lf:
            r7 = move-exception
            goto L54
        L11:
            r2 = r1
        L12:
            r3 = 2
            r4 = 0
            r5 = 0
            if (r2 > r3) goto L4a
            android.os.UserManager r3 = defpackage.c75.a     // Catch: java.lang.Throwable -> Lf
            if (r3 != 0) goto L25
            java.lang.Class<android.os.UserManager> r3 = android.os.UserManager.class
            java.lang.Object r3 = r7.getSystemService(r3)     // Catch: java.lang.Throwable -> Lf
            android.os.UserManager r3 = (android.os.UserManager) r3     // Catch: java.lang.Throwable -> Lf
            defpackage.c75.a = r3     // Catch: java.lang.Throwable -> Lf
        L25:
            android.os.UserManager r3 = defpackage.c75.a     // Catch: java.lang.Throwable -> Lf
            if (r3 != 0) goto L2b
            r5 = r1
            goto L4e
        L2b:
            boolean r6 = r3.isUserUnlocked()     // Catch: java.lang.Throwable -> Lf java.lang.NullPointerException -> L3d
            if (r6 != 0) goto L3b
            android.os.UserHandle r6 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> Lf java.lang.NullPointerException -> L3d
            boolean r7 = r3.isUserRunning(r6)     // Catch: java.lang.Throwable -> Lf java.lang.NullPointerException -> L3d
            if (r7 != 0) goto L4a
        L3b:
            r5 = r1
            goto L4a
        L3d:
            r3 = move-exception
            java.lang.String r5 = "DirectBootUtils"
            java.lang.String r6 = "Failed to check if user is unlocked."
            android.util.Log.w(r5, r6, r3)     // Catch: java.lang.Throwable -> Lf
            defpackage.c75.a = r4     // Catch: java.lang.Throwable -> Lf
            int r2 = r2 + 1
            goto L12
        L4a:
            if (r5 == 0) goto L4e
            defpackage.c75.a = r4     // Catch: java.lang.Throwable -> Lf
        L4e:
            if (r5 == 0) goto L52
            defpackage.c75.b = r1     // Catch: java.lang.Throwable -> Lf
        L52:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            return r5
        L54:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lf
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c75.W(android.content.Context):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long a(float r21, float r22, float r23, float r24, defpackage.b80 r25) {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c75.a(float, float, float, float, b80):long");
    }

    public static final long b(int i) {
        long j = ((long) i) << 32;
        int i2 = t70.g;
        return j;
    }

    public static final long c(long j) {
        long j2 = j << 32;
        int i = t70.g;
        return j2;
    }

    public static long d(int i, int i2, int i3) {
        return b(((i & 255) << 16) | (-16777216) | ((i2 & 255) << 8) | (i3 & 255));
    }

    public static final void e(ka0 ka0Var, df1 df1Var, df1 df1Var2, ay3 ay3Var, long j, long j2, ag1 ag1Var, int i) {
        ay3 ay3Var2;
        df1 df1Var3;
        long j3;
        long j4;
        cw cwVar;
        boolean z;
        int i2;
        boolean z2;
        ag1Var.X(-321841045);
        int i3 = i | (ag1Var.h(ka0Var) ? 4 : 2) | (ag1Var.h(df1Var) ? 32 : 16) | (ag1Var.h(df1Var2) ? 256 : 128) | (ag1Var.f(ay3Var) ? 2048 : 1024) | (ag1Var.e(j) ? 16384 : 8192) | (ag1Var.e(j2) ? 131072 : 65536);
        if (ag1Var.N(i3 & 1, (74899 & i3) != 74898)) {
            nd2 nd2VarO = is0.O(kd2.b, 16.0f, df1Var2 == null ? 8.0f : 0.0f, 0.0f, 10);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new oa(5);
                ag1Var.g0(objK);
            }
            db2 db2Var = (db2) objK;
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarO);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var, db2Var);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var, nd2VarH);
            nd2 nd2VarM = is0.M(on4.E("text"), 0.0f, 6.0f, 1);
            cw cwVar2 = mj1.o;
            db2 db2VarD = qx.d(cwVar2, false);
            int iHashCode2 = Long.hashCode(ag1Var.T);
            hu2 hu2VarL2 = ag1Var.l();
            nd2 nd2VarH2 = is0.H(ag1Var, nd2VarM);
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(fdVar, ag1Var, db2VarD);
            ht4.D(fdVar2, ag1Var, hu2VarL2);
            di0.C(iHashCode2, ag1Var, fdVar3, ag1Var, l9Var);
            ht4.D(fdVar4, ag1Var, nd2VarH2);
            ka0Var.f(ag1Var, Integer.valueOf(i3 & 14));
            ag1Var.p(true);
            if (df1Var != null) {
                ag1Var.W(989211000);
                nd2 nd2VarE = on4.E("action");
                db2 db2VarD2 = qx.d(cwVar2, false);
                int iHashCode3 = Long.hashCode(ag1Var.T);
                hu2 hu2VarL3 = ag1Var.l();
                nd2 nd2VarH3 = is0.H(ag1Var, nd2VarE);
                ag1Var.Z();
                if (ag1Var.S) {
                    ag1Var.k(ic0Var);
                } else {
                    ag1Var.j0();
                }
                ht4.D(fdVar, ag1Var, db2VarD2);
                ht4.D(fdVar2, ag1Var, hu2VarL3);
                di0.C(iHashCode3, ag1Var, fdVar3, ag1Var, l9Var);
                ht4.D(fdVar4, ag1Var, nd2VarH3);
                i2 = 8;
                cwVar = cwVar2;
                j3 = j;
                ay3Var2 = ay3Var;
                gg4.b(new j03[]{bg0.a.a(new t70(j3)), lx3.a.a(ay3Var2)}, df1Var, ag1Var, (i3 & 112) | 8);
                ag1Var.p(true);
                z = false;
                ag1Var.p(false);
            } else {
                ay3Var2 = ay3Var;
                cwVar = cwVar2;
                z = false;
                i2 = 8;
                j3 = j;
                ag1Var.W(989526208);
                ag1Var.p(false);
            }
            if (df1Var2 != null) {
                ag1Var.W(989574568);
                nd2 nd2VarE2 = on4.E("dismissAction");
                db2 db2VarD3 = qx.d(cwVar, z);
                int i4 = i2;
                int iHashCode4 = Long.hashCode(ag1Var.T);
                hu2 hu2VarL4 = ag1Var.l();
                nd2 nd2VarH4 = is0.H(ag1Var, nd2VarE2);
                ag1Var.Z();
                if (ag1Var.S) {
                    ag1Var.k(ic0Var);
                } else {
                    ag1Var.j0();
                }
                ht4.D(fdVar, ag1Var, db2VarD3);
                ht4.D(fdVar2, ag1Var, hu2VarL4);
                di0.C(iHashCode4, ag1Var, fdVar3, ag1Var, l9Var);
                ht4.D(fdVar4, ag1Var, nd2VarH4);
                j4 = j2;
                df1Var3 = df1Var2;
                gg4.a(bg0.a.a(new t70(j4)), df1Var3, ag1Var, i4 | ((i3 >> 3) & 112));
                z2 = true;
                ag1Var.p(true);
                ag1Var.p(false);
            } else {
                df1Var3 = df1Var2;
                j4 = j2;
                boolean z3 = z;
                z2 = true;
                ag1Var.W(989843648);
                ag1Var.p(z3);
            }
            ag1Var.p(z2);
        } else {
            ay3Var2 = ay3Var;
            df1Var3 = df1Var2;
            j3 = j;
            j4 = j2;
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new lo3(ka0Var, df1Var, df1Var3, ay3Var2, j3, j4, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final pa3 f(float[] fArr, bi0 bi0Var, AbstractList abstractList, float f2, float f3) {
        float f4;
        long jA;
        int i;
        ArrayList arrayList;
        List listE;
        cl0 cl0VarA;
        bi0 bi0Var2;
        float f5 = 1.0f;
        Float fValueOf = Float.valueOf(1.0f);
        bi0Var.getClass();
        pa3 pa3Var = null;
        if (fArr.length < 6) {
            k21.f("Polygons must have at least 3 vertices");
            return null;
        }
        int i2 = 2;
        int i3 = 1;
        if (fArr.length % 2 == 1) {
            k21.f("The vertices array should have even size");
            return null;
        }
        if (abstractList != null && abstractList.size() * 2 != fArr.length) {
            k21.f("perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)");
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        int length = fArr.length / 2;
        ArrayList arrayList3 = new ArrayList();
        int i4 = 0;
        int i5 = 0;
        while (i5 < length) {
            bi0 bi0Var3 = (abstractList == null || (bi0Var2 = (bi0) abstractList.get(i5)) == null) ? bi0Var : bi0Var2;
            int i6 = (((i5 + length) - 1) % length) * 2;
            int i7 = i5 + 1;
            int i8 = (i7 % length) * 2;
            int i9 = i5 * 2;
            arrayList3.add(new la3(v71.a(fArr[i6], fArr[i6 + 1]), v71.a(fArr[i9], fArr[i9 + 1]), v71.a(fArr[i8], fArr[i8 + 1]), bi0Var3));
            i5 = i7;
            f5 = f5;
        }
        float f6 = f5;
        ms1 ms1VarA0 = ix.a0(0, length);
        ArrayList arrayList4 = new ArrayList(p70.a0(ms1VarA0, 10));
        Iterator it = ms1VarA0.iterator();
        while (true) {
            f4 = 0.0f;
            if (!((ls1) it).p) {
                break;
            }
            int iNextInt = ((es1) it).nextInt();
            int i10 = (iNextInt + 1) % length;
            float f7 = ((la3) arrayList3.get(iNextInt)).h + ((la3) arrayList3.get(i10)).h;
            float fC = ((la3) arrayList3.get(i10)).c() + ((la3) arrayList3.get(iNextInt)).c();
            int i11 = iNextInt * 2;
            float f8 = fArr[i11];
            float f9 = fArr[i11 + 1];
            int i12 = i10 * 2;
            float f10 = f8 - fArr[i12];
            float f11 = f9 - fArr[i12 + 1];
            float f12 = k94.b;
            float fSqrt = (float) Math.sqrt((f11 * f11) + (f10 * f10));
            arrayList4.add(f7 > fSqrt ? new js2(Float.valueOf(fSqrt / f7), Float.valueOf(0.0f)) : fC > fSqrt ? new js2(fValueOf, Float.valueOf((fSqrt - f7) / (fC - f7))) : new js2(fValueOf, fValueOf));
        }
        int i13 = 0;
        while (i13 < length) {
            float[] fArrCopyOf = new float[i2];
            pa3 pa3Var2 = pa3Var;
            int i14 = i4;
            int i15 = i14;
            while (i15 < i2) {
                int i16 = i2;
                js2 js2Var = (js2) arrayList4.get((((i13 + length) - 1) + i15) % length);
                int i17 = i4;
                float f13 = f4;
                float fC2 = ((((la3) arrayList3.get(i13)).c() - ((la3) arrayList3.get(i13)).h) * ((Number) js2Var.o).floatValue()) + (((la3) arrayList3.get(i13)).h * ((Number) js2Var.n).floatValue());
                int i18 = i14 + 1;
                if (fArrCopyOf.length < i18) {
                    fArrCopyOf = Arrays.copyOf(fArrCopyOf, Math.max(i18, (fArrCopyOf.length * 3) / 2));
                }
                fArrCopyOf[i14] = fC2;
                i15++;
                f4 = f13;
                i14 = i18;
                i4 = i17;
                i2 = i16;
            }
            int i19 = i2;
            int i20 = i4;
            float f14 = f4;
            la3 la3Var = (la3) arrayList3.get(i13);
            if (i14 <= 0) {
                mk0.h("Index must be between 0 and size");
                return pa3Var2;
            }
            float f15 = fArrCopyOf[i20];
            if (i3 >= i14) {
                mk0.h("Index must be between 0 and size");
                return pa3Var2;
            }
            float f16 = fArrCopyOf[i3];
            long j = la3Var.e;
            int i21 = i3;
            int i22 = length;
            long j2 = la3Var.d;
            float f17 = la3Var.f;
            ArrayList arrayList5 = arrayList2;
            long j3 = la3Var.b;
            float fMin = Math.min(f15, f16);
            float f18 = la3Var.h;
            if (f18 < 1.0E-4f || fMin < 1.0E-4f || f17 < 1.0E-4f) {
                i = i13;
                arrayList = arrayList4;
                la3Var.i = j3;
                float fX = ix.x(j3);
                float fY = ix.y(j3);
                float fX2 = ix.x(j3);
                float fY2 = ix.y(j3);
                listE = tv4.E(is0.a(fX, fY, k94.c(fX, fX2, 0.33333334f), k94.c(fY, fY2, 0.33333334f), k94.c(fX, fX2, 0.6666667f), k94.c(fY, fY2, 0.6666667f), fX2, fY2));
            } else {
                float fMin2 = Math.min(fMin, f18);
                float fA = la3Var.a(f15);
                float fA2 = la3Var.a(f16);
                float f19 = (f17 * fMin2) / f18;
                float f20 = k94.b;
                i = i13;
                la3Var.i = ix.K(j3, ix.V((float) Math.sqrt((fMin2 * fMin2) + (f19 * f19)), ix.u(ix.o(2.0f, ix.K(j2, j)))));
                long jK = ix.K(j3, ix.V(fMin2, j2));
                long jK2 = ix.K(j3, ix.V(fMin2, j));
                cl0 cl0VarB = la3.b(fMin2, fA, la3Var.b, la3Var.a, jK, jK2, la3Var.i, f19);
                cl0 cl0VarB2 = la3.b(fMin2, fA2, la3Var.b, la3Var.c, jK2, jK, la3Var.i, f19);
                float fA3 = cl0VarB2.a();
                float fB = cl0VarB2.b();
                float[] fArr2 = cl0VarB2.a;
                cl0 cl0VarA2 = is0.a(fA3, fB, fArr2[4], fArr2[5], fArr2[i19], fArr2[3], fArr2[i20], fArr2[i21]);
                float fX3 = ix.x(la3Var.i);
                float fY3 = ix.y(la3Var.i);
                float fA4 = cl0VarB.a();
                float fB2 = cl0VarB.b();
                float[] fArr3 = cl0VarA2.a;
                float f21 = fArr3[i20];
                float f22 = fArr3[i21];
                long jB = k94.b(fA4 - fX3, fB2 - fY3);
                float f23 = f21 - fX3;
                float f24 = f22 - fY3;
                long jB2 = k94.b(f23, f24);
                arrayList = arrayList4;
                long jA2 = v71.a(-ix.y(jB), ix.x(jB));
                long jA3 = v71.a(-ix.y(jB2), ix.x(jB2));
                int i23 = (ix.y(jA2) * f24) + (ix.x(jA2) * f23) >= f14 ? i21 : i20;
                float fP = ix.p(jB, jB2);
                if (fP > 0.999f) {
                    cl0VarA = is0.a(fA4, fB2, k94.c(fA4, f21, 0.33333334f), k94.c(fB2, f22, 0.33333334f), k94.c(fA4, f21, 0.6666667f), k94.c(fB2, f22, 0.6666667f), f21, f22);
                } else {
                    float fSqrt2 = (((((float) Math.sqrt(2.0f * r8)) - ((float) Math.sqrt(f6 - (fP * fP)))) * ((((float) Math.sqrt((r12 * r12) + (r11 * r11))) * 4.0f) / 3.0f)) / (f6 - fP)) * (i23 != 0 ? f6 : -1.0f);
                    cl0VarA = is0.a(fA4, fB2, (ix.x(jA2) * fSqrt2) + fA4, (ix.y(jA2) * fSqrt2) + fB2, f21 - (ix.x(jA3) * fSqrt2), f22 - (ix.y(jA3) * fSqrt2), f21, f22);
                }
                listE = tv4.F(cl0VarB, cl0VarA, cl0VarA2);
            }
            arrayList5.add(listE);
            i13 = i + 1;
            f4 = f14;
            arrayList2 = arrayList5;
            pa3Var = pa3Var2;
            i4 = i20;
            i2 = i19;
            length = i22;
            i3 = i21;
            arrayList4 = arrayList;
        }
        ArrayList arrayList6 = arrayList2;
        int i24 = i3;
        int i25 = i4;
        float f25 = f4;
        ArrayList arrayList7 = new ArrayList();
        int i26 = i25;
        while (i26 < length) {
            int i27 = i26 + 1;
            int i28 = i27 % length;
            int i29 = i26 * 2;
            long jA4 = v71.a(fArr[i29], fArr[i29 + 1]);
            int i30 = (((i26 + length) - 1) % length) * 2;
            long jA5 = v71.a(fArr[i30], fArr[i30 + 1]);
            int i31 = i28 * 2;
            long jA6 = v71.a(fArr[i31], fArr[i31 + 1]);
            long jD = ix.D(jA4, jA5);
            long jD2 = ix.D(jA6, jA4);
            arrayList7.add(new u41((List) arrayList6.get(i26), jA4, ((la3) arrayList3.get(i26)).i, (ix.y(jD2) * ix.x(jD)) - (ix.x(jD2) * ix.y(jD)) > f25 ? i24 : i25));
            float fA5 = ((cl0) o70.o0((List) arrayList6.get(i26))).a();
            float fB3 = ((cl0) o70.o0((List) arrayList6.get(i26))).b();
            float f26 = ((cl0) o70.h0((List) arrayList6.get(i28))).a[i25];
            float f27 = ((cl0) o70.h0((List) arrayList6.get(i28))).a[i24];
            arrayList7.add(new v41(tv4.E(is0.a(fA5, fB3, k94.c(fA5, f26, 0.33333334f), k94.c(fB3, f27, 0.33333334f), k94.c(fA5, f26, 0.6666667f), k94.c(fB3, f27, 0.6666667f), f26, f27))));
            i26 = i27;
        }
        if (f2 == Float.MIN_VALUE || f3 == Float.MIN_VALUE) {
            float f28 = f25;
            float f29 = f28;
            int i32 = i25;
            while (i32 < fArr.length) {
                int i33 = i32 + 1;
                f29 += fArr[i32];
                i32 += 2;
                f28 += fArr[i33];
            }
            jA = v71.a((f29 / fArr.length) / 2.0f, (f28 / fArr.length) / 2.0f);
        } else {
            jA = v71.a(f2, f3);
        }
        return new pa3(arrayList7, Float.intBitsToFloat((int) (jA >> 32)), Float.intBitsToFloat((int) (jA & 4294967295L)));
    }

    public static final void g(final nd2 nd2Var, final df1 df1Var, final df1 df1Var2, final jl3 jl3Var, final long j, final long j2, final long j3, final long j4, final ka0 ka0Var, ag1 ag1Var, final int i) {
        int i2;
        df1 df1Var3;
        df1 df1Var4;
        jl3 jl3Var2;
        ka0 ka0Var2;
        ag1Var.X(-1218779924);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            df1Var3 = df1Var;
            i2 |= ag1Var.h(df1Var3) ? 32 : 16;
        } else {
            df1Var3 = df1Var;
        }
        if ((i & 384) == 0) {
            df1Var4 = df1Var2;
            i2 |= ag1Var.h(df1Var4) ? 256 : 128;
        } else {
            df1Var4 = df1Var2;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.g(false) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            jl3Var2 = jl3Var;
            i2 |= ag1Var.f(jl3Var2) ? 16384 : 8192;
        } else {
            jl3Var2 = jl3Var;
        }
        if ((196608 & i) == 0) {
            i2 |= ag1Var.e(j) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= ag1Var.e(j2) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= ag1Var.e(j3) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= ag1Var.e(j4) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        if ((805306368 & i) == 0) {
            ka0Var2 = ka0Var;
            i2 |= ag1Var.h(ka0Var2) ? 536870912 : 268435456;
        } else {
            ka0Var2 = ka0Var;
        }
        if (ag1Var.N(i2 & 1, (306783379 & i2) != 306783378)) {
            ag1Var.S();
            if ((i & 1) != 0 && !ag1Var.x()) {
                ag1Var.Q();
            }
            ag1Var.q();
            float f2 = mt1.f;
            ka0 ka0VarU = qj0.U(-1343524879, new vj2(df1Var3, ka0Var2, df1Var4, j3, j4), ag1Var);
            int i3 = (i2 & 14) | 12779520;
            int i4 = i2 >> 9;
            wu3.a(nd2Var, jl3Var2, j, j2, f2, null, ka0VarU, ag1Var, (i4 & 7168) | i3 | (i4 & 112) | (i4 & 896), 80);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: ko3
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(i | 1);
                    c75.g(nd2Var, df1Var, df1Var2, jl3Var, j, j2, j3, j4, ka0Var, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void h(final fo3 fo3Var, nd2 nd2Var, jl3 jl3Var, long j, long j2, long j3, long j4, long j5, ag1 ag1Var, final int i) {
        int i2;
        final nd2 nd2Var2;
        final jl3 jl3Var2;
        final long j6;
        final long j7;
        final long j8;
        final long j9;
        final long j10;
        long jD;
        long jD2;
        jl3 jl3Var3;
        nd2 nd2Var3;
        int i3;
        long j11;
        long j12;
        long j13;
        ag1Var.X(274621471);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(fo3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i4 = i2 | 432;
        if ((i & 3072) == 0) {
            i4 = i2 | 1456;
        }
        if ((i & 24576) == 0) {
            i4 |= 8192;
        }
        if ((196608 & i) == 0) {
            i4 |= 65536;
        }
        if ((1572864 & i) == 0) {
            i4 |= 524288;
        }
        if ((12582912 & i) == 0) {
            i4 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i4 |= MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        if (ag1Var.N(i4 & 1, (38347923 & i4) != 38347922)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                jl3 jl3VarA = ol3.a(mt1.g, ag1Var);
                jD = a80.d(mt1.e, ag1Var);
                jD2 = a80.d(mt1.i, ag1Var);
                z70 z70Var = mt1.c;
                long jD3 = a80.d(z70Var, ag1Var);
                long jD4 = a80.d(z70Var, ag1Var);
                long jD5 = a80.d(mt1.h, ag1Var);
                int i5 = i4 & (-268434433);
                jl3Var3 = jl3VarA;
                nd2Var3 = kd2.b;
                i3 = i5;
                j11 = jD3;
                j12 = jD4;
                j13 = jD5;
            } else {
                ag1Var.Q();
                int i6 = i4 & (-268434433);
                jl3Var3 = jl3Var;
                jD = j;
                jD2 = j2;
                j11 = j3;
                j12 = j4;
                j13 = j5;
                i3 = i6;
                nd2Var3 = nd2Var;
            }
            ag1Var.q();
            fo3Var.a.getClass();
            ag1Var.W(-663528921);
            ag1Var.p(false);
            fo3Var.a.getClass();
            ag1Var.W(-662527001);
            ag1Var.p(false);
            jl3 jl3Var4 = jl3Var3;
            long j14 = jD;
            long j15 = jD2;
            j9 = j12;
            j10 = j13;
            g(is0.K(nd2Var3, 12.0f), null, null, jl3Var4, j14, j15, j9, j10, qj0.U(-1266389126, new eo3(fo3Var, 1), ag1Var), ag1Var, ((i3 << 3) & 7168) | 805306368);
            nd2Var2 = nd2Var3;
            jl3Var2 = jl3Var4;
            j6 = j14;
            j7 = j15;
            j8 = j11;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            jl3Var2 = jl3Var;
            j6 = j;
            j7 = j2;
            j8 = j3;
            j9 = j4;
            j10 = j5;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: jo3
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(i | 1);
                    c75.h(fo3Var, nd2Var2, jl3Var2, j6, j7, j8, j9, j10, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long i(float r17, float r18, float r19, float r20, defpackage.b80 r21) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c75.i(float, float, float, float, b80):long");
    }

    public static final long j(long j, long j2) {
        if (j != 4611686018427387903L && j != -4611686018427387903L) {
            return (j2 == 4611686018427387903L || j2 == -4611686018427387903L) ? j2 : ix.l(j + j2, -4611686018427387903L, 4611686018427387903L);
        }
        if ((-4611686018427387903L >= j2 || j2 >= 4611686018427387903L) && (j2 ^ j) < 0) {
            return 9223372036854759646L;
        }
        return j;
    }

    public static final pq1 k(rq1 rq1Var, float f2, float f3, oq1 oq1Var, ag1 ag1Var) {
        Float fValueOf = Float.valueOf(f2);
        Float fValueOf2 = Float.valueOf(f3);
        Object objK = ag1Var.K();
        bx3 bx3Var = rb0.a;
        if (objK == bx3Var) {
            objK = new pq1(rq1Var, fValueOf, fValueOf2, oq1Var);
            ag1Var.g0(objK);
        }
        pq1 pq1Var = (pq1) objK;
        boolean zH = ag1Var.h(oq1Var);
        Object objK2 = ag1Var.K();
        if (zH || objK2 == bx3Var) {
            objK2 = new j4(fValueOf, pq1Var, fValueOf2, oq1Var, 1);
            ag1Var.g0(objK2);
        }
        zf5.g((ne1) objK2, ag1Var);
        boolean zH2 = ag1Var.h(rq1Var);
        Object objK3 = ag1Var.K();
        if (zH2 || objK3 == bx3Var) {
            objK3 = new m(10, rq1Var, pq1Var);
            ag1Var.g0(objK3);
        }
        zf5.a(pq1Var, (pe1) objK3, ag1Var);
        return pq1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object l(defpackage.hz2 r4, defpackage.ne1 r5, defpackage.fh0 r6) {
        /*
            boolean r0 = r6 instanceof defpackage.fz2
            if (r0 == 0) goto L13
            r0 = r6
            fz2 r0 = (defpackage.fz2) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            fz2 r0 = new fz2
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.r
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            ne1 r5 = r0.q
            defpackage.gg4.T(r6)     // Catch: java.lang.Throwable -> L28
            goto L64
        L28:
            r4 = move-exception
            goto L6a
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L30:
            defpackage.gg4.T(r6)
            hi0 r6 = r0.o
            r6.getClass()
            mj1 r1 = defpackage.mj1.W
            fi0 r6 = r6.K(r1)
            if (r6 != r4) goto L6e
            r0.q = r5     // Catch: java.lang.Throwable -> L28
            r0.s = r3     // Catch: java.lang.Throwable -> L28
            o20 r6 = new o20     // Catch: java.lang.Throwable -> L28
            dh0 r0 = defpackage.dm0.A(r0)     // Catch: java.lang.Throwable -> L28
            r6.<init>(r3, r0)     // Catch: java.lang.Throwable -> L28
            r6.x()     // Catch: java.lang.Throwable -> L28
            ly r0 = new ly     // Catch: java.lang.Throwable -> L28
            r1 = 4
            r0.<init>(r1, r6)     // Catch: java.lang.Throwable -> L28
            zy r4 = r4.s     // Catch: java.lang.Throwable -> L28
            r4.z(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.Object r4 = r6.v()     // Catch: java.lang.Throwable -> L28
            ri0 r6 = defpackage.ri0.n
            if (r4 != r6) goto L64
            return r6
        L64:
            r5.a()
            t64 r4 = defpackage.t64.a
            return r4
        L6a:
            r5.a()
            throw r4
        L6e:
            java.lang.String r4 = "awaitClose() can only be invoked from the producer context"
            defpackage.k21.n(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c75.l(hz2, ne1, fh0):java.lang.Object");
    }

    public static final RemoteViews m(Context context, y84 y84Var, p84 p84Var, int i, int i2, int i3, long j) {
        int i4;
        String str;
        float f2;
        y84Var.getClass();
        p84Var.getClass();
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_limit_item);
        zf5.K(y84Var);
        ts1 ts1VarA = y84Var.a();
        float f3 = context.getResources().getDisplayMetrics().density;
        float f4 = context.getResources().getDisplayMetrics().scaledDensity;
        float f5 = (i2 - 44) * f3;
        String strU = tv4.u(p84Var, context, y84Var);
        String strA = ts1VarA.a(p84Var.e());
        if (Build.VERSION.SDK_INT >= 31) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setTextSize(f4 * 14.0f);
            float fMeasureText = (f5 - paint.measureText(strA)) - (8.0f * f3);
            float f6 = 14.0f;
            while (f6 > 10.0f && paint.measureText(strU) > fMeasureText) {
                f6 -= 0.5f;
                paint.setTextSize(f6 * f4);
            }
            i4 = R.id.widget_limit_title;
            remoteViews.setTextViewTextSize(R.id.widget_limit_title, 2, f6);
        } else {
            i4 = R.id.widget_limit_title;
            remoteViews.setFloat(R.id.widget_limit_title, "setTextSize", 14.0f);
        }
        remoteViews.setTextViewText(i4, strU);
        remoteViews.setTextViewText(R.id.widget_limit_percentage, strA);
        remoteViews.setProgressBar(R.id.widget_limit_usage_progress, 1000, (int) (ix.i(p84Var.e() / 100.0d, 0.0d, 1.0d) * 1000.0d), false);
        String strA2 = e10.a(context, p84Var.b(), j, p84Var.a());
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        float f7 = f3 * 8.0f;
        if (p84Var.c() == null || p84Var.b() == null) {
            str = "setTextSize";
            remoteViews.setProgressBar(R.id.widget_limit_time_progress, 1000, 0, false);
            remoteViews.setViewVisibility(R.id.widget_limit_time_percentage, 8);
            paint2.setTextSize(12.0f * f4);
            f2 = 12.0f;
            while (f2 > 9.0f && paint2.measureText(strA2) > f5) {
                f2 -= 0.5f;
                paint2.setTextSize(f2 * f4);
            }
        } else {
            str = "setTextSize";
            long jLongValue = p84Var.b().longValue() - p84Var.c().longValue();
            long jLongValue2 = j - p84Var.c().longValue();
            if (jLongValue > 0) {
                double dI = ix.i(jLongValue2 / jLongValue, 0.0d, 1.0d);
                remoteViews.setProgressBar(R.id.widget_limit_time_progress, 1000, (int) (dI * 1000.0d), false);
                String str2 = ((int) (dI * 100.0d)) + "%";
                float f8 = f4 * 12.0f;
                paint2.setTextSize(f8);
                float fMeasureText2 = (f5 - paint2.measureText(str2)) - f7;
                f2 = 12.0f;
                while (f2 > 9.0f && paint2.measureText(strA2) > fMeasureText2) {
                    f2 -= 0.5f;
                    paint2.setTextSize(f2 * f4);
                }
                if (paint2.measureText(strA2) > fMeasureText2) {
                    remoteViews.setViewVisibility(R.id.widget_limit_time_percentage, 8);
                    paint2.setTextSize(f8);
                    f2 = 12.0f;
                    while (f2 > 9.0f && paint2.measureText(strA2) > f5) {
                        f2 -= 0.5f;
                        paint2.setTextSize(f2 * f4);
                    }
                } else {
                    remoteViews.setTextViewText(R.id.widget_limit_time_percentage, str2);
                    remoteViews.setViewVisibility(R.id.widget_limit_time_percentage, 0);
                }
            } else {
                remoteViews.setProgressBar(R.id.widget_limit_time_progress, 1000, 0, false);
                remoteViews.setViewVisibility(R.id.widget_limit_time_percentage, 8);
                paint2.setTextSize(f4 * 12.0f);
                f2 = 12.0f;
                while (f2 > 9.0f && paint2.measureText(strA2) > f5) {
                    f2 -= 0.5f;
                    paint2.setTextSize(f2 * f4);
                }
            }
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 31) {
            remoteViews.setTextViewTextSize(R.id.widget_limit_reset_time, 2, f2);
        } else {
            remoteViews.setFloat(R.id.widget_limit_reset_time, str, 12.0f);
        }
        remoteViews.setTextViewText(R.id.widget_limit_reset_time, strA2);
        remoteViews.setOnClickFillInIntent(R.id.widget_limit_item_root, new Intent());
        int iMin = Math.min(i < 112 ? 1 : (i - 48) / 64, i3);
        int iMax = Math.max(0, ((i - 48) - (iMin * 8)) / iMin);
        if (iMax < 56) {
            remoteViews.setViewVisibility(R.id.widget_limit_progress_container, 8);
            remoteViews.setViewVisibility(R.id.widget_limit_spacer_above_progress, 8);
            remoteViews.setViewVisibility(R.id.widget_limit_spacer_below_progress, 8);
        } else {
            remoteViews.setViewVisibility(R.id.widget_limit_progress_container, 0);
            remoteViews.setViewVisibility(R.id.widget_limit_spacer_above_progress, 0);
            remoteViews.setViewVisibility(R.id.widget_limit_spacer_below_progress, 0);
        }
        if (i5 >= 31) {
            remoteViews.setViewLayoutHeight(R.id.widget_limit_item_container, iMax, 1);
            return remoteViews;
        }
        remoteViews.setInt(R.id.widget_limit_item_container, "setMinimumHeight", (int) (iMax * context.getResources().getDisplayMetrics().density));
        return remoteViews;
    }

    public static z20 n(long j, ag1 ag1Var) {
        long j2;
        long jB = a80.b(j, ag1Var);
        long j3 = t70.f;
        long jB2 = t70.b(0.38f, jB);
        y70 y70Var = ((ua2) ag1Var.j(wa2.a)).a;
        z20 z20Var = y70Var.Z;
        if (z20Var == null) {
            z70 z70Var = qj0.b;
            j2 = jB;
            z20 z20Var2 = new z20(a80.c(y70Var, z70Var), a80.a(y70Var, a80.c(y70Var, z70Var)), q(t70.b(qj0.e, a80.c(y70Var, qj0.d)), a80.c(y70Var, z70Var)), t70.b(0.38f, a80.a(y70Var, a80.c(y70Var, z70Var))));
            y70Var.Z = z20Var2;
            z20Var = z20Var2;
        } else {
            j2 = jB;
        }
        long j4 = j != 16 ? j : z20Var.a;
        long j5 = j2 != 16 ? j2 : z20Var.b;
        if (j3 == 16) {
            j3 = z20Var.c;
        }
        long j6 = j3;
        if (jB2 == 16) {
            jB2 = z20Var.d;
        }
        return new z20(j4, j5, j6, jB2);
    }

    public static a30 o() {
        return new a30(qj0.g, qj0.f);
    }

    public static final void p(int i) {
        if (i >= 1) {
            return;
        }
        k21.l(di0.q(i, "Expected positive parallelism level, but got "));
    }

    public static final long q(long j, long j2) {
        float f2;
        float f3;
        long jA = t70.a(j, t70.f(j2));
        float fD = t70.d(j2);
        float fD2 = t70.d(jA);
        float f4 = 1.0f - fD2;
        float f5 = (fD * f4) + fD2;
        float fH = t70.h(jA);
        float fH2 = t70.h(j2);
        float f6 = 0.0f;
        if (f5 == 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = (((fH2 * fD) * f4) + (fH * fD2)) / f5;
        }
        float fG = t70.g(jA);
        float fG2 = t70.g(j2);
        if (f5 == 0.0f) {
            f3 = 0.0f;
        } else {
            f3 = (((fG2 * fD) * f4) + (fG * fD2)) / f5;
        }
        float fE = t70.e(jA);
        float fE2 = t70.e(j2);
        if (f5 != 0.0f) {
            f6 = (((fE2 * fD) * f4) + (fE * fD2)) / f5;
        }
        return i(f2, f3, f6, f5, t70.f(j2));
    }

    public static final long r(int i, int i2, ln3 ln3Var, rd3 rd3Var, ln3 ln3Var2) {
        int i3;
        int i4;
        if (!nt1.g(ln3Var, ln3.c)) {
            i = U(ln3Var.a, rd3Var);
            i2 = U(ln3Var.b, rd3Var);
        }
        cu0 cu0Var = ln3Var2.a;
        cu0 cu0Var2 = ln3Var2.b;
        if ((cu0Var instanceof au0) && i != Integer.MIN_VALUE && i != Integer.MAX_VALUE && i > (i4 = ((au0) cu0Var).a)) {
            i = i4;
        }
        if ((cu0Var2 instanceof au0) && i2 != Integer.MIN_VALUE && i2 != Integer.MAX_VALUE && i2 > (i3 = ((au0) cu0Var2).a)) {
            i2 = i3;
        }
        return (((long) i2) & 4294967295L) | (((long) i) << 32);
    }

    public static final double s(int i, int i2, int i3, int i4, rd3 rd3Var, ln3 ln3Var) {
        double dMax;
        double d2 = i;
        double d3 = ((double) i3) / d2;
        double d4 = i2;
        double d5 = ((double) i4) / d4;
        int iOrdinal = rd3Var.ordinal();
        if (iOrdinal == 0) {
            dMax = Math.max(d3, d5);
        } else {
            if (iOrdinal != 1) {
                p61.x();
                return 0.0d;
            }
            dMax = Math.min(d3, d5);
        }
        cu0 cu0Var = ln3Var.a;
        if (cu0Var instanceof au0) {
            double d6 = ((double) ((au0) cu0Var).a) / d2;
            if (dMax > d6) {
                dMax = d6;
            }
        }
        cu0 cu0Var2 = ln3Var.b;
        if (cu0Var2 instanceof au0) {
            double d7 = ((double) ((au0) cu0Var2).a) / d4;
            if (dMax > d7) {
                return d7;
            }
        }
        return dMax;
    }

    public static final bf t(bf bfVar) {
        bf bfVarC = bfVar.c();
        int iB = bfVarC.b();
        for (int i = 0; i < iB; i++) {
            bfVarC.e(i, bfVar.a(i));
        }
        return bfVarC;
    }

    public static d84 u() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return new d84(tv4.F(new p84("Current session", 70.0d, Long.valueOf(jCurrentTimeMillis - 5400000), Long.valueOf(jCurrentTimeMillis - (-12600000))), new p84("Weekly limits", 45.0d, Long.valueOf(jCurrentTimeMillis - 393120000), Long.valueOf(jCurrentTimeMillis - (-211680000)))), jCurrentTimeMillis);
    }

    public static tl2 v(int[] iArr, int[] iArr2) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e2) {
                t72 t72VarG = t72.g();
                String str = tl2.b;
                String str2 = tl2.b;
                String str3 = "Ignoring adding capability '" + i + '\'';
                if (t72VarG.n <= 5) {
                    Log.w(str2, str3, e2);
                }
            }
        }
        int[] iArr3 = dm0.J;
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = iArr3[i2];
            if (!ji.J(iArr, i3)) {
                try {
                    builder.removeCapability(i3);
                } catch (IllegalArgumentException e3) {
                    t72 t72VarG2 = t72.g();
                    String str4 = tl2.b;
                    String str5 = tl2.b;
                    String str6 = "Ignoring removing default capability '" + i3 + '\'';
                    if (t72VarG2.n <= 5) {
                        Log.w(str5, str6, e3);
                    }
                }
            }
        }
        for (int i4 : iArr2) {
            builder.addTransportType(i4);
        }
        NetworkRequest networkRequestBuild = builder.build();
        networkRequestBuild.getClass();
        return new tl2(networkRequestBuild);
    }

    public static final long w() {
        return Thread.currentThread().getId();
    }

    public static int x(int i, int i2, String str, boolean z) {
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArrayList y(a42 a42Var, a42 a42Var2) {
        Iterator it = new ms1(0, a42Var2.size() - 1, 1).iterator();
        ls1 ls1Var = (ls1) it;
        if (!ls1Var.p) {
            p61.v();
            return null;
        }
        es1 es1Var = (es1) it;
        int iNextInt = es1Var.nextInt();
        if (ls1Var.p) {
            float fC = C(((sz2) a42Var.get(0)).b, ((sz2) a42Var2.get(iNextInt)).b);
            do {
                int iNextInt2 = es1Var.nextInt();
                float fC2 = C(((sz2) a42Var.get(0)).b, ((sz2) a42Var2.get(iNextInt2)).b);
                if (Float.compare(fC, fC2) > 0) {
                    iNextInt = iNextInt2;
                    fC = fC2;
                }
            } while (ls1Var.p);
        }
        int iA = a42Var.a();
        int iA2 = a42Var2.a();
        ArrayList arrayListH = tv4.H(a42Var2.get(iNextInt));
        int i = iNextInt;
        for (int i2 = 1; i2 < iA; i2++) {
            int i3 = iNextInt - (iA - i2);
            if (i3 <= i) {
                i3 += iA2;
            }
            Iterator it2 = new ms1(i + 1, i3, 1).iterator();
            ls1 ls1Var2 = (ls1) it2;
            if (!ls1Var2.p) {
                p61.v();
                return null;
            }
            es1 es1Var2 = (es1) it2;
            int iNextInt3 = es1Var2.nextInt();
            if (ls1Var2.p) {
                float fC3 = C(((sz2) a42Var.get(i2)).b, ((sz2) a42Var2.get(iNextInt3 % iA2)).b);
                do {
                    int iNextInt4 = es1Var2.nextInt();
                    float fC4 = C(((sz2) a42Var.get(i2)).b, ((sz2) a42Var2.get(iNextInt4 % iA2)).b);
                    if (Float.compare(fC3, fC4) > 0) {
                        iNextInt3 = iNextInt4;
                        fC3 = fC4;
                    }
                } while (ls1Var2.p);
            }
            i = iNextInt3;
            arrayListH.add(a42Var2.get(i % iA2));
        }
        return arrayListH;
    }

    public static final long z(long j) {
        long j2 = (j << 1) + 1;
        cy0.o.getClass();
        int i = ey0.a;
        return j2;
    }
}
