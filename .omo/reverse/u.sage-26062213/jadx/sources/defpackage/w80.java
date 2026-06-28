package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.UserManager;
import android.util.Log;
import android.widget.EdgeEffect;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.math.RoundingMode;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Scanner;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class w80 {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ka0 c = new ka0(-315816506, false, new sq(9));
    public static final ka0 d = new ka0(1781426470, false, new sq(10));
    public static final ka0 e = new ka0(336369132, false, new lq(3));
    public static final ka0 f = new ka0(1039340003, false, new lq(4));
    public static final ka0 g = new ka0(-1115543577, false, new lq(5));
    public static final ka0 h = new ka0(-412572706, false, new lq(6));
    public static final bp1 i = new bp1(false);
    public static final float j = 38.0f;
    public static final float k = 48.0f;
    public static final ll3 l = ll3.p;
    public static final float m = 48.0f;
    public static final Object n = new Object();
    public static volatile qo3 o;
    public static so1 p;
    public static so1 q;

    public static final void A(eh3 eh3Var) {
        R(eh3Var).F();
    }

    public static boolean B() {
        if (Build.PRODUCT.contains("sdk")) {
            return true;
        }
        String str = Build.HARDWARE;
        return str.contains("goldfish") || str.contains("ranchu");
    }

    public static boolean C() {
        boolean zB = B();
        String str = Build.TAGS;
        if ((zB || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !zB && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static boolean D(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }

    public static e20 E(hi0 hi0Var, df1 df1Var) {
        hi0Var.getClass();
        return on4.w(new gd0(hi0Var, ti0.n, df1Var, 4));
    }

    public static int F(int i2) {
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        if (i2 <= 0) {
            k21.f(xw1.q("x (", i2, ") must be > 0"));
            return 0;
        }
        switch (gs1.a[roundingMode.ordinal()]) {
            case 1:
                if (!((i2 > 0) & (((i2 + (-1)) & i2) == 0))) {
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                }
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i2 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i2);
                return (31 - iNumberOfLeadingZeros) + ((~(~(((-1257966797) >>> iNumberOfLeadingZeros) - i2))) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    public static void G(String str, String str2) {
        if (str == null) {
            k21.f(str2.concat(" may not be null"));
        } else if (ht4.v(str)) {
            k21.f(str2.concat(" may not be blank"));
        }
    }

    public static void H(String str, String str2) {
        if (str == null) {
            k21.f(str2.concat(" may not be null"));
        } else {
            if (str.length() != 0) {
                return;
            }
            k21.f(str2.concat(" may not be empty"));
        }
    }

    public static void I(Collection collection, String str) {
        if (collection == null) {
            k21.f(str.concat(" may not be null"));
        } else if (collection.isEmpty()) {
            k21.f(str.concat(" may not be empty"));
        }
    }

    public static void J(int i2, String str) {
        if (i2 >= 0) {
            return;
        }
        k21.f(str.concat(" may not be negative"));
    }

    public static void K(long j2) {
        if (j2 >= 0) {
            return;
        }
        k21.f("Content length may not be negative");
    }

    public static void L(Object obj, String str) {
        if (obj != null) {
            return;
        }
        k21.f(str.concat(" may not be null"));
    }

    public static String M(X509Certificate x509Certificate) {
        StringBuilder sb = new StringBuilder("sha256/");
        g00 g00Var = g00.q;
        byte[] encoded = x509Certificate.getPublicKey().getEncoded();
        encoded.getClass();
        int length = encoded.length;
        is0.q(encoded.length, 0L, length);
        int i2 = 0;
        byte[] bArr = new g00(ji.S(encoded, 0, length)).b("SHA-256").n;
        byte[] bArr2 = a.a;
        bArr.getClass();
        bArr2.getClass();
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length2 = bArr.length - (bArr.length % 3);
        int i3 = 0;
        while (i2 < length2) {
            byte b2 = bArr[i2];
            int i4 = i2 + 2;
            byte b3 = bArr[i2 + 1];
            i2 += 3;
            byte b4 = bArr[i4];
            bArr3[i3] = bArr2[(b2 & 255) >> 2];
            bArr3[i3 + 1] = bArr2[((b2 & 3) << 4) | ((b3 & 255) >> 4)];
            int i5 = i3 + 3;
            bArr3[i3 + 2] = bArr2[((b3 & 15) << 2) | ((b4 & 255) >> 6)];
            i3 += 4;
            bArr3[i5] = bArr2[b4 & 63];
        }
        int length3 = bArr.length - length2;
        if (length3 == 1) {
            byte b5 = bArr[i2];
            bArr3[i3] = bArr2[(b5 & 255) >> 2];
            bArr3[i3 + 1] = bArr2[(b5 & 3) << 4];
            bArr3[i3 + 2] = 61;
            bArr3[i3 + 3] = 61;
        } else if (length3 == 2) {
            int i6 = i2 + 1;
            byte b6 = bArr[i2];
            byte b7 = bArr[i6];
            bArr3[i3] = bArr2[(b6 & 255) >> 2];
            bArr3[i3 + 1] = bArr2[((b6 & 3) << 4) | ((b7 & 255) >> 4)];
            bArr3[i3 + 2] = bArr2[(b7 & 15) << 2];
            bArr3[i3 + 3] = 61;
        }
        sb.append(new String(bArr3, k40.a));
        return sb.toString();
    }

    public static void N(int i2, String str) {
        if (i2 > 0) {
            return;
        }
        k21.f(str.concat(" may not be negative or zero"));
    }

    public static final lf3 O(ag1 ag1Var) {
        Object[] objArr = new Object[0];
        boolean zD = ag1Var.d(0);
        Object objK = ag1Var.K();
        if (zD || objK == rb0.a) {
            objK = new t52(23);
            ag1Var.g0(objK);
        }
        return (lf3) n44.J0(objArr, lf3.k, (ne1) objK, ag1Var, 0);
    }

    public static final mm2 P(jr0 jr0Var, int i2) {
        mm2 mm2Var = ((md2) jr0Var).n.f206u;
        mm2Var.getClass();
        if (mm2Var.O0() != jr0Var || !nm2.g(i2)) {
            return mm2Var;
        }
        mm2 mm2Var2 = mm2Var.G;
        mm2Var2.getClass();
        return mm2Var2;
    }

    public static final mm2 Q(jr0 jr0Var) {
        if (!((md2) jr0Var).n.A) {
            ar1.b("Cannot get LayoutCoordinates, Modifier.Node is not attached.");
        }
        mm2 mm2VarP = P(jr0Var, 2);
        if (!mm2VarP.O0().A) {
            ar1.b("LayoutCoordinates is not attached.");
        }
        return mm2VarP;
    }

    public static final xy1 R(jr0 jr0Var) {
        mm2 mm2Var = ((md2) jr0Var).n.f206u;
        if (mm2Var != null) {
            return mm2Var.F;
        }
        throw di0.m("Cannot obtain node coordinator. Is the Modifier.Node attached?");
    }

    public static final sr2 S(jr0 jr0Var) {
        sr2 sr2Var = R(jr0Var).A;
        if (sr2Var != null) {
            return sr2Var;
        }
        throw di0.m("This node does not have an owner.");
    }

    public static nd2 T(nd2 nd2Var, lf3 lf3Var, boolean z) {
        hr2 hr2Var = hr2.n;
        hr2 hr2Var2 = z ? hr2Var : hr2.o;
        vf2 vf2Var = lf3Var.e;
        kd2 kd2Var = kd2.b;
        return nd2Var.c(hr2Var2 == hr2Var ? n44.c0(kd2Var, fk1.c) : n44.c0(kd2Var, fk1.b)).c(new mf3(null, null, vf2Var, hr2Var2, lf3Var, true, true)).c(new yf3(lf3Var, z));
    }

    public static final Object U(oz3 oz3Var, df1 df1Var) {
        n44.s0(oz3Var, true, new mv0(zf5.F(oz3Var.s.e()).r(oz3Var.t, oz3Var, oz3Var.r)));
        return gg4.S(oz3Var, false, oz3Var, df1Var);
    }

    public static String V(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            return z(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            Log.e("FirebaseCrashlytics", "Could not create hashing algorithm: SHA-1, returning empty string.", e2);
            return "";
        }
    }

    public static String W(FileInputStream fileInputStream) {
        Scanner scannerUseDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
        try {
            String next = scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "";
            scannerUseDelimiter.close();
            return next;
        } catch (Throwable th) {
            if (scannerUseDelimiter != null) {
                try {
                    scannerUseDelimiter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static final void X(int i2, int i3, gi3 gi3Var) {
        gi3Var.getClass();
        ArrayList arrayList = new ArrayList();
        int i4 = (~i2) & i3;
        for (int i5 = 0; i5 < 32; i5++) {
            if ((i4 & 1) != 0) {
                arrayList.add(gi3Var.e(i5));
            }
            i4 >>>= 1;
        }
        throw new hd2(gi3Var.b(), arrayList);
    }

    public static final Object Y(long j2, df1 df1Var, fh0 fh0Var) {
        if (j2 > 0) {
            return U(new oz3(j2, fh0Var), df1Var);
        }
        throw new nz3("Timed out immediately", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Z(long r6, defpackage.df1 r8, defpackage.fh0 r9) {
        /*
            boolean r0 = r9 instanceof defpackage.pz3
            if (r0 == 0) goto L13
            r0 = r9
            pz3 r0 = (defpackage.pz3) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            pz3 r0 = new pz3
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.r
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            w33 r6 = r0.q
            defpackage.gg4.T(r9)     // Catch: defpackage.nz3 -> L28
            return r9
        L28:
            r7 = move-exception
            goto L56
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r2
        L30:
            defpackage.gg4.T(r9)
            r4 = 0
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 > 0) goto L3a
            goto L5c
        L3a:
            w33 r9 = new w33
            r9.<init>()
            r0.q = r9     // Catch: defpackage.nz3 -> L54
            r0.s = r3     // Catch: defpackage.nz3 -> L54
            oz3 r1 = new oz3     // Catch: defpackage.nz3 -> L54
            r1.<init>(r6, r0)     // Catch: defpackage.nz3 -> L54
            r9.n = r1     // Catch: defpackage.nz3 -> L54
            java.lang.Object r6 = U(r1, r8)     // Catch: defpackage.nz3 -> L54
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L53
            return r7
        L53:
            return r6
        L54:
            r7 = move-exception
            r6 = r9
        L56:
            tu1 r8 = r7.n
            java.lang.Object r6 = r6.n
            if (r8 != r6) goto L5d
        L5c:
            return r2
        L5d:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w80.Z(long, df1, fh0):java.lang.Object");
    }

    public static final void a(final long j2, final ay3 ay3Var, final df1 df1Var, ag1 ag1Var, final int i2) {
        int i3;
        ag1Var.X(-684938728);
        if ((i2 & 6) == 0) {
            i3 = (ag1Var.e(j2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= ag1Var.f(ay3Var) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= ag1Var.h(df1Var) ? 256 : 128;
        }
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            lc0 lc0Var = lx3.a;
            gg4.b(new j03[]{bg0.a.a(new t70(j2)), lc0Var.a(((ay3) ag1Var.j(lc0Var)).c(ay3Var))}, df1Var, ag1Var, ((i3 >> 3) & 112) | 8);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: i03
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    w80.a(j2, ay3Var, df1Var, (ag1) obj, qj0.f0(i2 | 1));
                    return t64.a;
                }
            };
        }
    }

    public static float b(EdgeEffect edgeEffect, float f2, float f3, as0 as0Var) {
        float f4 = py0.a;
        double dB = as0Var.b() * 386.0878f * 160.0f * 0.84f;
        double dAbs = Math.abs(f2) * 0.35f;
        double d2 = ((double) py0.a) * dB;
        float fExp = (float) (Math.exp((py0.b / py0.c) * Math.log(dAbs / d2)) * d2);
        int i2 = Build.VERSION.SDK_INT;
        if (fExp > (i2 >= 31 ? zf.c(edgeEffect) : 0.0f) * f3) {
            return 0.0f;
        }
        int iV = is0.V(f2);
        if (i2 >= 31) {
            edgeEffect.onAbsorb(iV);
            return f2;
        }
        if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(iV);
        }
        return f2;
    }

    public static final void c(ug2 ug2Var, md2 md2Var) {
        ug2 ug2VarZ = R(md2Var).z();
        int i2 = ug2VarZ.p - 1;
        Object[] objArr = ug2VarZ.n;
        if (i2 < objArr.length) {
            while (i2 >= 0) {
                ug2Var.c((md2) ((xy1) objArr[i2]).S.g);
                i2--;
            }
        }
    }

    public static final int d(k82 k82Var, y7 y7Var) {
        k82 k82VarN0 = k82Var.n0();
        if (k82VarN0 == null) {
            ar1.b("Child of " + k82Var + " cannot be null when calculating alignment line");
        }
        if (k82Var.v0().c().containsKey(y7Var)) {
            Integer num = (Integer) k82Var.v0().c().get(y7Var);
            if (num != null) {
                return num.intValue();
            }
        } else {
            int iV = k82VarN0.V(y7Var);
            if (iV != Integer.MIN_VALUE) {
                boolean z = k82Var.A;
                boolean z2 = k82Var.B;
                k82VarN0.A = true;
                k82Var.B = true;
                k82Var.B0();
                k82VarN0.A = z;
                k82Var.B = z2;
                return iV + ((int) (y7Var instanceof ck1 ? k82VarN0.x0() & 4294967295L : k82VarN0.x0() >> 32));
            }
        }
        return Integer.MIN_VALUE;
    }

    public static final boolean e(float f2) {
        return Float.isNaN(f2) || Math.abs(f2) < 0.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final float f(defpackage.cv2 r6, boolean r7, defpackage.ek1[] r8, float r9) {
        /*
            int r0 = r8.length
            r1 = 2143289344(0x7fc00000, float:NaN)
            r2 = 0
            r3 = r2
        L5:
            if (r3 >= r0) goto L20
            r4 = r8[r3]
            float r4 = r6.c(r4)
            boolean r5 = java.lang.Float.isNaN(r1)
            if (r5 != 0) goto L1c
            int r5 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r5 <= 0) goto L19
            r5 = 1
            goto L1a
        L19:
            r5 = r2
        L1a:
            if (r7 != r5) goto L1d
        L1c:
            r1 = r4
        L1d:
            int r3 = r3 + 1
            goto L5
        L20:
            boolean r6 = java.lang.Float.isNaN(r1)
            if (r6 == 0) goto L27
            return r9
        L27:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w80.f(cv2, boolean, ek1[], float):float");
    }

    public static final md2 g(ug2 ug2Var) {
        int i2;
        if (ug2Var == null || (i2 = ug2Var.p) == 0) {
            return null;
        }
        return (md2) ug2Var.l(i2 - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final oy1 h(md2 md2Var) {
        if ((md2Var.p & 2) != 0) {
            if (md2Var instanceof oy1) {
                return (oy1) md2Var;
            }
            if (md2Var instanceof kr0) {
                md2 md2Var2 = ((kr0) md2Var).C;
                while (md2Var2 != 0) {
                    if (md2Var2 instanceof oy1) {
                        return (oy1) md2Var2;
                    }
                    md2Var2 = (!(md2Var2 instanceof kr0) || (md2Var2.p & 2) == 0) ? md2Var2.s : ((kr0) md2Var2).C;
                }
            }
        }
        return null;
    }

    public static e20 i(zq0 zq0Var) {
        b20 b20Var = new b20();
        b20Var.c = new j73();
        e20 e20Var = new e20(b20Var);
        b20Var.b = e20Var;
        b20Var.a = di0.class;
        try {
            zq0Var.V(new oc(5, b20Var, zq0Var));
            b20Var.a = "Deferred.asListenableFuture";
            return e20Var;
        } catch (Exception e2) {
            e20Var.o.k(e2);
            return e20Var;
        }
    }

    public static final int j(long[] jArr, long j2) {
        int length = jArr.length - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (i2 + length) >>> 1;
            long j3 = jArr[i3];
            if (j2 > j3) {
                i2 = i3 + 1;
            } else {
                if (j2 >= j3) {
                    return i3;
                }
                length = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static synchronized long k(Context context) {
        ActivityManager.MemoryInfo memoryInfo;
        memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static void l(String str, boolean z) {
        if (z) {
            return;
        }
        k21.f(str);
    }

    public static void m(int i2, Object[] objArr) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (objArr[i3] == null) {
                q73.r(di0.q(i3, "at index "));
                return;
            }
        }
    }

    public static void n(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                Log.e("FirebaseCrashlytics", str, e2);
            }
        }
    }

    public static final Object o(dh0 dh0Var, b81 b81Var, ne1 ne1Var, ff1 ff1Var, a81[] a81VarArr) {
        p80 p80Var = new p80(null, b81Var, ne1Var, ff1Var, a81VarArr);
        d81 d81Var = new d81(dh0Var, dh0Var.e());
        Object objS = gg4.S(d81Var, true, d81Var, p80Var);
        return objS == ri0.n ? objS : t64.a;
    }

    public static Handler p(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return tf.b(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException e2) {
            e = e2;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InstantiationException e3) {
            e = e3;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (NoSuchMethodException e4) {
            e = e4;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static void q(r51 r51Var, bt2 bt2Var) {
        if (r51Var.B(bt2Var)) {
            return;
        }
        try {
            r51Var.R(bt2Var, false).close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void r(r51 r51Var, bt2 bt2Var) throws IOException {
        try {
            IOException iOException = null;
            for (bt2 bt2Var2 : r51Var.F(bt2Var)) {
                try {
                    if (r51Var.K(bt2Var2).b) {
                        r(r51Var, bt2Var2);
                    }
                    r51Var.z(bt2Var2);
                } catch (IOException e2) {
                    if (iOException == null) {
                        iOException = e2;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        if (((r7 == java.math.RoundingMode.HALF_EVEN) & ((r0 & 1) != 0)) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0046, code lost:
    
        if (r1 > 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
    
        if (r5 > 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
    
        if (r5 < 0) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int s(int r5, int r6, java.math.RoundingMode r7) {
        /*
            r7.getClass()
            if (r6 == 0) goto L5b
            int r0 = r5 / r6
            int r1 = r6 * r0
            int r1 = r5 - r1
            if (r1 != 0) goto Le
            goto L52
        Le:
            r5 = r5 ^ r6
            int r5 = r5 >> 31
            r2 = 1
            r5 = r5 | r2
            int[] r3 = defpackage.gs1.a
            int r4 = r7.ordinal()
            r3 = r3[r4]
            switch(r3) {
                case 1: goto L50;
                case 2: goto L52;
                case 3: goto L4c;
                case 4: goto L4e;
                case 5: goto L49;
                case 6: goto L24;
                case 7: goto L24;
                case 8: goto L24;
                default: goto L1e;
            }
        L1e:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L24:
            int r1 = java.lang.Math.abs(r1)
            int r6 = java.lang.Math.abs(r6)
            int r6 = r6 - r1
            int r1 = r1 - r6
            if (r1 != 0) goto L46
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_UP
            if (r7 == r6) goto L4e
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_EVEN
            r1 = 0
            if (r7 != r6) goto L3b
            r6 = r2
            goto L3c
        L3b:
            r6 = r1
        L3c:
            r7 = r0 & 1
            if (r7 == 0) goto L41
            goto L42
        L41:
            r2 = r1
        L42:
            r6 = r6 & r2
            if (r6 == 0) goto L52
            goto L4e
        L46:
            if (r1 <= 0) goto L52
            goto L4e
        L49:
            if (r5 <= 0) goto L52
            goto L4e
        L4c:
            if (r5 >= 0) goto L52
        L4e:
            int r0 = r0 + r5
            return r0
        L50:
            if (r1 != 0) goto L53
        L52:
            return r0
        L53:
            java.lang.ArithmeticException r5 = new java.lang.ArithmeticException
            java.lang.String r6 = "mode was UNNECESSARY, but rounding was necessary"
            r5.<init>(r6)
            throw r5
        L5b:
            java.lang.ArithmeticException r5 = new java.lang.ArithmeticException
            java.lang.String r6 = "/ by zero"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w80.s(int, int, java.math.RoundingMode):int");
    }

    public static final l33 t(md2 md2Var, boolean z, boolean z2) {
        if (!md2Var.n.A) {
            return l33.e;
        }
        if (z) {
            return P(md2Var, 8).j1();
        }
        mm2 mm2VarP = P(md2Var, 8);
        return zf5.D(mm2VarP).H(mm2VarP, z2);
    }

    public static final so1 u() {
        so1 so1Var = p;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Outlined.Analytics", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i2 = ea4.a;
        long j2 = t70.b;
        sp3 sp3Var = new sp3(j2);
        ct2 ct2Var = new ct2();
        ct2Var.h(19.0f, 3.0f);
        ct2Var.d(5.0f);
        ct2Var.b(3.9f, 3.0f, 3.0f, 3.9f, 3.0f, 5.0f);
        ct2Var.m(14.0f);
        ct2Var.c(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
        ct2Var.e(14.0f);
        ct2Var.c(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        ct2Var.l(5.0f);
        ct2Var.b(21.0f, 3.9f, 20.1f, 3.0f, 19.0f, 3.0f);
        ct2Var.a();
        ct2Var.h(19.0f, 19.0f);
        ct2Var.d(5.0f);
        ct2Var.l(5.0f);
        ct2Var.e(14.0f);
        ct2Var.l(19.0f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        sp3 sp3Var2 = new sp3(j2);
        ArrayList arrayList = new ArrayList(32);
        arrayList.add(new jt2(7.0f, 12.0f));
        arrayList.add(new pt2(2.0f));
        arrayList.add(new vt2(5.0f));
        arrayList.add(new pt2(-2.0f));
        ft2 ft2Var = ft2.c;
        arrayList.add(ft2Var);
        ro1.a(ro1Var, arrayList, sp3Var2);
        sp3 sp3Var3 = new sp3(j2);
        ArrayList arrayList2 = new ArrayList(32);
        arrayList2.add(new jt2(15.0f, 7.0f));
        arrayList2.add(new pt2(2.0f));
        arrayList2.add(new vt2(10.0f));
        arrayList2.add(new pt2(-2.0f));
        arrayList2.add(ft2Var);
        ro1.a(ro1Var, arrayList2, sp3Var3);
        sp3 sp3Var4 = new sp3(j2);
        ArrayList arrayList3 = new ArrayList(32);
        arrayList3.add(new jt2(11.0f, 14.0f));
        arrayList3.add(new pt2(2.0f));
        arrayList3.add(new vt2(3.0f));
        arrayList3.add(new pt2(-2.0f));
        arrayList3.add(ft2Var);
        ro1.a(ro1Var, arrayList3, sp3Var4);
        sp3 sp3Var5 = new sp3(j2);
        ArrayList arrayList4 = new ArrayList(32);
        arrayList4.add(new jt2(11.0f, 10.0f));
        arrayList4.add(new pt2(2.0f));
        arrayList4.add(new vt2(2.0f));
        arrayList4.add(new pt2(-2.0f));
        arrayList4.add(ft2Var);
        ro1.a(ro1Var, arrayList4, sp3Var5);
        so1 so1VarB = ro1Var.b();
        p = so1VarB;
        return so1VarB;
    }

    public static final so1 v() {
        so1 so1Var = q;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Outlined.BugReport", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i2 = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(20.0f, 8.0f);
        ct2Var.e(-2.81f);
        ct2Var.c(-0.45f, -0.78f, -1.07f, -1.45f, -1.82f, -1.96f);
        ct2Var.f(17.0f, 4.41f);
        ct2Var.f(15.59f, 3.0f);
        ct2Var.g(-2.17f, 2.17f);
        ct2Var.b(12.96f, 5.06f, 12.49f, 5.0f, 12.0f, 5.0f);
        ct2Var.j(-0.96f, 0.06f, -1.41f, 0.17f);
        ct2Var.f(8.41f, 3.0f);
        ct2Var.f(7.0f, 4.41f);
        ct2Var.g(1.62f, 1.63f);
        ct2Var.b(7.88f, 6.55f, 7.26f, 7.22f, 6.81f, 8.0f);
        ct2Var.f(4.0f, 8.0f);
        ct2Var.m(2.0f);
        ct2Var.e(2.09f);
        ct2Var.c(-0.05f, 0.33f, -0.09f, 0.66f, -0.09f, 1.0f);
        ct2Var.m(1.0f);
        ct2Var.f(4.0f, 12.0f);
        ct2Var.m(2.0f);
        ct2Var.e(2.0f);
        ct2Var.m(1.0f);
        ct2Var.c(0.0f, 0.34f, 0.04f, 0.67f, 0.09f, 1.0f);
        ct2Var.f(4.0f, 16.0f);
        ct2Var.m(2.0f);
        ct2Var.e(2.81f);
        ct2Var.c(1.04f, 1.79f, 2.97f, 3.0f, 5.19f, 3.0f);
        ct2Var.j(4.15f, -1.21f, 5.19f, -3.0f);
        ct2Var.f(20.0f, 18.0f);
        ct2Var.m(-2.0f);
        ct2Var.e(-2.09f);
        ct2Var.c(0.05f, -0.33f, 0.09f, -0.66f, 0.09f, -1.0f);
        ct2Var.m(-1.0f);
        ct2Var.e(2.0f);
        ct2Var.m(-2.0f);
        ct2Var.e(-2.0f);
        ct2Var.m(-1.0f);
        ct2Var.c(0.0f, -0.34f, -0.04f, -0.67f, -0.09f, -1.0f);
        ct2Var.f(20.0f, 10.0f);
        ct2Var.f(20.0f, 8.0f);
        ct2Var.a();
        ct2Var.h(16.0f, 12.0f);
        ct2Var.m(3.0f);
        ct2Var.c(0.0f, 0.22f, -0.03f, 0.47f, -0.07f, 0.7f);
        ct2Var.g(-0.1f, 0.65f);
        ct2Var.g(-0.37f, 0.65f);
        ct2Var.c(-0.72f, 1.24f, -2.04f, 2.0f, -3.46f, 2.0f);
        ct2Var.j(-2.74f, -0.77f, -3.46f, -2.0f);
        ct2Var.g(-0.37f, -0.64f);
        ct2Var.g(-0.1f, -0.65f);
        ct2Var.b(8.03f, 15.48f, 8.0f, 15.23f, 8.0f, 15.0f);
        ct2Var.m(-4.0f);
        ct2Var.c(0.0f, -0.23f, 0.03f, -0.48f, 0.07f, -0.7f);
        ct2Var.g(0.1f, -0.65f);
        ct2Var.g(0.37f, -0.65f);
        ct2Var.c(0.3f, -0.52f, 0.72f, -0.97f, 1.21f, -1.31f);
        ct2Var.g(0.57f, -0.39f);
        ct2Var.g(0.74f, -0.18f);
        ct2Var.c(0.31f, -0.08f, 0.63f, -0.12f, 0.94f, -0.12f);
        ct2Var.c(0.32f, 0.0f, 0.63f, 0.04f, 0.95f, 0.12f);
        ct2Var.g(0.68f, 0.16f);
        ct2Var.g(0.61f, 0.42f);
        ct2Var.c(0.5f, 0.34f, 0.91f, 0.78f, 1.21f, 1.31f);
        ct2Var.g(0.38f, 0.65f);
        ct2Var.g(0.1f, 0.65f);
        ct2Var.c(0.04f, 0.22f, 0.07f, 0.47f, 0.07f, 0.69f);
        ct2Var.m(1.0f);
        ct2Var.a();
        ct2Var.h(10.0f, 14.0f);
        ct2Var.e(4.0f);
        ct2Var.m(2.0f);
        ct2Var.e(-4.0f);
        ct2Var.a();
        ct2Var.h(10.0f, 10.0f);
        ct2Var.e(4.0f);
        ct2Var.m(2.0f);
        ct2Var.e(-4.0f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        q = so1VarB;
        return so1VarB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static int w() {
        boolean zB = B();
        ?? r0 = zB;
        if (C()) {
            r0 = (zB ? 1 : 0) | 2;
        }
        return (Debug.isDebuggerConnected() || Debug.waitingForDebugger()) ? r0 | 4 : r0;
    }

    public static int x(Context context, String str, String str2) {
        String packageName;
        Resources resources = context.getResources();
        int i2 = context.getApplicationContext().getApplicationInfo().icon;
        if (i2 > 0) {
            try {
                packageName = context.getResources().getResourcePackageName(i2);
                if ("android".equals(packageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, packageName);
    }

    public static final s64 y(ag1 ag1Var) {
        WeakHashMap weakHashMap = qe4.v;
        jd jdVar = ls3.d(ag1Var).g;
        WeakHashMap weakHashMap2 = qe4.v;
        return new s64(jdVar, ls3.d(ag1Var).b);
    }

    public static String z(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            int i3 = i2 * 2;
            char[] cArr2 = a;
            cArr[i3] = cArr2[(b2 & 255) >>> 4];
            cArr[i3 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }
}
