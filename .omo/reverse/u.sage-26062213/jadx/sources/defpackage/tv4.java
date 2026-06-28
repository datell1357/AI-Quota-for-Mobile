package defpackage;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.UserManager;
import android.view.KeyEvent;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class tv4 {
    public static UserManager a = null;
    public static volatile boolean b = false;
    public static final byte[] c = {112, 114, 111, 0};
    public static final byte[] d = {112, 114, 109, 0};
    public static so1 e;

    public static oq1 A(dy0 dy0Var, int i) {
        return new oq1(dy0Var, d63.n);
    }

    public static final void B(ag1 ag1Var, df1 df1Var) {
        df1Var.getClass();
        n44.R(2, df1Var);
        df1Var.f(ag1Var, 1);
    }

    public static final boolean C(KeyEvent keyEvent) {
        long jC = k30.c(keyEvent.getKeyCode());
        return nx1.a(jC, nx1.h) || nx1.a(jC, nx1.k) || nx1.a(jC, nx1.o) || nx1.a(jC, nx1.j);
    }

    public static final boolean D(Bitmap.Config config) {
        return Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE;
    }

    public static List E(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        listSingletonList.getClass();
        return listSingletonList;
    }

    public static List F(Object... objArr) {
        if (objArr.length <= 0) {
            return g01.n;
        }
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static List G(xn3 xn3Var, int i, xn3 xn3Var2, boolean z, boolean z2, boolean z3) {
        List list;
        boolean z4;
        int i2;
        int i3;
        int iU = xn3Var.u(i);
        int i4 = i + iU;
        int iF = xn3Var.f(i);
        int iF2 = xn3Var.f(i4);
        int i5 = iF2 - iF;
        boolean z5 = i >= 0 && (xn3Var.b[(xn3Var.r(i) * 5) + 1] & 201326592) != 0;
        xn3Var2.w(iU);
        xn3Var2.x(i5, xn3Var2.t);
        if (xn3Var.g < i4) {
            xn3Var.B(i4);
        }
        if (xn3Var.k < iF2) {
            xn3Var.C(iF2, i4);
        }
        int[] iArr = xn3Var2.b;
        int i6 = xn3Var2.t;
        int i7 = i6 * 5;
        ji.N(i7, i * 5, i4 * 5, xn3Var.b, iArr);
        Object[] objArr = xn3Var2.c;
        int i8 = xn3Var2.i;
        System.arraycopy(xn3Var.c, iF, objArr, i8, i5);
        int i9 = xn3Var2.v;
        iArr[i7 + 2] = i9;
        int i10 = i6 - i;
        int i11 = i6 + iU;
        int iG = i8 - xn3Var2.g(iArr, i6);
        int i12 = xn3Var2.m;
        int i13 = xn3Var2.l;
        int length = objArr.length;
        boolean z6 = z5;
        int i14 = i12;
        int i15 = i6;
        while (i15 < i11) {
            if (i15 != i6) {
                int i16 = (i15 * 5) + 2;
                iArr[i16] = iArr[i16] + i10;
            }
            int[] iArr2 = iArr;
            int iG2 = xn3Var2.g(iArr, i15) + iG;
            if (i14 < i15) {
                i2 = i6;
                i3 = 0;
            } else {
                i2 = i6;
                i3 = xn3Var2.k;
            }
            iArr2[(i15 * 5) + 4] = xn3.i(iG2, i3, i13, length);
            if (i15 == i14) {
                i14++;
            }
            i15++;
            i6 = i2;
            iArr = iArr2;
        }
        int[] iArr3 = iArr;
        xn3Var2.m = i14;
        int iA = wn3.a(xn3Var.d, i, xn3Var.p());
        int iA2 = wn3.a(xn3Var.d, i4, xn3Var.p());
        if (iA < iA2) {
            ArrayList arrayList = xn3Var.d;
            ArrayList arrayList2 = new ArrayList(iA2 - iA);
            for (int i17 = iA; i17 < iA2; i17++) {
                vf1 vf1Var = (vf1) arrayList.get(i17);
                vf1Var.a += i10;
                arrayList2.add(vf1Var);
            }
            xn3Var2.d.addAll(wn3.a(xn3Var2.d, xn3Var2.t, xn3Var2.p()), arrayList2);
            arrayList.subList(iA, iA2).clear();
            list = arrayList2;
        } else {
            list = g01.n;
        }
        if (!list.isEmpty()) {
            HashMap map = xn3Var.e;
            HashMap map2 = xn3Var2.e;
            if (map != null && map2 != null) {
                int size = list.size();
                for (int i18 = 0; i18 < size; i18++) {
                }
            }
        }
        int i19 = xn3Var2.v;
        xn3Var2.O(i9);
        int iE = xn3Var.E(xn3Var.b, i);
        if (!z3) {
            z4 = false;
        } else if (z) {
            boolean z7 = iE >= 0;
            if (z7) {
                xn3Var.P();
                xn3Var.a(iE - xn3Var.t);
                xn3Var.P();
            }
            xn3Var.a(i - xn3Var.t);
            boolean zH = xn3Var.H();
            if (z7) {
                xn3Var.M();
                xn3Var.j();
                xn3Var.M();
                xn3Var.j();
            }
            z4 = zH;
        } else {
            boolean zI = xn3Var.I(i, iU);
            xn3Var.J(iF, i5, i - 1);
            z4 = zI;
        }
        if (z4) {
            wb0.a("Unexpectedly removed anchors");
        }
        int i20 = xn3Var2.o;
        int i21 = iArr3[i7 + 1];
        xn3Var2.o = i20 + ((1073741824 & i21) != 0 ? 1 : i21 & 67108863);
        if (z2) {
            xn3Var2.t = i11;
            xn3Var2.i = i8 + i5;
        }
        if (z6) {
            xn3Var2.T(i9);
        }
        return list;
    }

    public static ArrayList H(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new uh(objArr, true));
    }

    public static final List I(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : E(list.get(0)) : g01.n;
    }

    public static int[] J(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int I = 0;
        for (int i2 = 0; i2 < i; i2++) {
            I += (int) dm0.I(byteArrayInputStream, 2);
            iArr[i2] = I;
        }
        return iArr;
    }

    public static ft0[] K(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, ft0[] ft0VarArr) throws IOException {
        byte[] bArr3 = k30.k;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, k30.l)) {
                k21.n("Unsupported meta version");
                return null;
            }
            int I = (int) dm0.I(fileInputStream, 2);
            byte[] bArrH = dm0.H(fileInputStream, (int) dm0.I(fileInputStream, 4), (int) dm0.I(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                k21.n("Content found after the end of file");
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
            try {
                ft0[] ft0VarArrM = M(byteArrayInputStream, bArr2, I, ft0VarArr);
                byteArrayInputStream.close();
                return ft0VarArrM;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(k30.f, bArr2)) {
            k21.n("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            return null;
        }
        if (!Arrays.equals(bArr, bArr3)) {
            k21.n("Unsupported meta version");
            return null;
        }
        int I2 = (int) dm0.I(fileInputStream, 1);
        byte[] bArrH2 = dm0.H(fileInputStream, (int) dm0.I(fileInputStream, 4), (int) dm0.I(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            k21.n("Content found after the end of file");
            return null;
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrH2);
        try {
            ft0[] ft0VarArrL = L(byteArrayInputStream2, I2, ft0VarArr);
            byteArrayInputStream2.close();
            return ft0VarArrL;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static ft0[] L(ByteArrayInputStream byteArrayInputStream, int i, ft0[] ft0VarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new ft0[0];
        }
        if (i != ft0VarArr.length) {
            k21.n("Mismatched number of dex files found in metadata");
            return null;
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int I = (int) dm0.I(byteArrayInputStream, 2);
            iArr[i2] = (int) dm0.I(byteArrayInputStream, 2);
            strArr[i2] = new String(dm0.G(byteArrayInputStream, I), StandardCharsets.UTF_8);
        }
        for (int i3 = 0; i3 < i; i3++) {
            ft0 ft0Var = ft0VarArr[i3];
            if (!ft0Var.b.equals(strArr[i3])) {
                k21.n("Order of dexfiles in metadata did not match baseline");
                return null;
            }
            int i4 = iArr[i3];
            ft0Var.e = i4;
            ft0Var.h = J(byteArrayInputStream, i4);
        }
        return ft0VarArr;
    }

    public static ft0[] M(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, ft0[] ft0VarArr) {
        ft0 ft0Var;
        if (byteArrayInputStream.available() == 0) {
            return new ft0[0];
        }
        if (i != ft0VarArr.length) {
            k21.n("Mismatched number of dex files found in metadata");
            return null;
        }
        for (int i2 = 0; i2 < i; i2++) {
            dm0.I(byteArrayInputStream, 2);
            String str = new String(dm0.G(byteArrayInputStream, (int) dm0.I(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jI = dm0.I(byteArrayInputStream, 4);
            int I = (int) dm0.I(byteArrayInputStream, 2);
            if (ft0VarArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                for (int i3 = 0; i3 < ft0VarArr.length; i3++) {
                    if (ft0VarArr[i3].b.equals(strSubstring)) {
                        ft0Var = ft0VarArr[i3];
                        break;
                    }
                }
                ft0Var = null;
            } else {
                ft0Var = null;
            }
            if (ft0Var == null) {
                k21.n("Missing profile key: ".concat(str));
                return null;
            }
            ft0Var.d = jI;
            int[] iArrJ = J(byteArrayInputStream, I);
            if (Arrays.equals(bArr, k30.j)) {
                ft0Var.e = I;
                ft0Var.h = iArrJ;
            }
        }
        return ft0VarArr;
    }

    public static ft0[] N(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, k30.g)) {
            k21.n("Unsupported version");
            return null;
        }
        int I = (int) dm0.I(fileInputStream, 1);
        byte[] bArrH = dm0.H(fileInputStream, (int) dm0.I(fileInputStream, 4), (int) dm0.I(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            k21.n("Content found after the end of file");
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
        try {
            ft0[] ft0VarArrO = O(byteArrayInputStream, str, I);
            byteArrayInputStream.close();
            return ft0VarArrO;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static ft0[] O(ByteArrayInputStream byteArrayInputStream, String str, int i) throws IOException {
        int i2 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new ft0[0];
        }
        ft0[] ft0VarArr = new ft0[i];
        for (int i3 = 0; i3 < i; i3++) {
            int I = (int) dm0.I(byteArrayInputStream, 2);
            int I2 = (int) dm0.I(byteArrayInputStream, 2);
            ft0VarArr[i3] = new ft0(str, new String(dm0.G(byteArrayInputStream, I), StandardCharsets.UTF_8), dm0.I(byteArrayInputStream, 4), I2, (int) dm0.I(byteArrayInputStream, 4), (int) dm0.I(byteArrayInputStream, 4), new int[I2], new TreeMap());
        }
        int i4 = 0;
        while (i4 < i) {
            ft0 ft0Var = ft0VarArr[i4];
            int iAvailable = byteArrayInputStream.available();
            int i5 = ft0Var.f;
            int i6 = ft0Var.g;
            TreeMap treeMap = ft0Var.i;
            int i7 = iAvailable - i5;
            int I3 = i2;
            while (byteArrayInputStream.available() > i7) {
                I3 += (int) dm0.I(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(I3), 1);
                int I4 = (int) dm0.I(byteArrayInputStream, 2);
                while (I4 > 0) {
                    dm0.I(byteArrayInputStream, 2);
                    int I5 = (int) dm0.I(byteArrayInputStream, 1);
                    if (I5 != 6 && I5 != 7) {
                        while (I5 > 0) {
                            dm0.I(byteArrayInputStream, 1);
                            int i8 = i2;
                            int i9 = i4;
                            for (int I6 = (int) dm0.I(byteArrayInputStream, 1); I6 > 0; I6--) {
                                dm0.I(byteArrayInputStream, 2);
                            }
                            I5--;
                            i2 = i8;
                            i4 = i9;
                        }
                    }
                    I4--;
                    i2 = i2;
                    i4 = i4;
                }
            }
            int i10 = i2;
            int i11 = i4;
            if (byteArrayInputStream.available() != i7) {
                k21.n("Read too much data during profile line parse");
                return null;
            }
            ft0Var.h = J(byteArrayInputStream, ft0Var.e);
            BitSet bitSetValueOf = BitSet.valueOf(dm0.G(byteArrayInputStream, (((i6 * 2) + 7) & (-8)) / 8));
            for (int i12 = i10; i12 < i6; i12++) {
                int i13 = bitSetValueOf.get(i12) ? 2 : i10;
                if (bitSetValueOf.get(i12 + i6)) {
                    i13 |= 4;
                }
                if (i13 != 0) {
                    Integer numValueOf = (Integer) treeMap.get(Integer.valueOf(i12));
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i10);
                    }
                    treeMap.put(Integer.valueOf(i12), Integer.valueOf(i13 | numValueOf.intValue()));
                }
            }
            i4 = i11 + 1;
            i2 = i10;
        }
        return ft0VarArr;
    }

    public static void P(Context context, d84 d84Var, long j) {
        context.getClass();
        d84Var.getClass();
        if (RollingWindowWorker.g.get()) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
            return;
        }
        Iterator it = d84Var.c().iterator();
        long j2 = Long.MAX_VALUE;
        Long l = null;
        while (it.hasNext()) {
            Long lB = ((p84) it.next()).b();
            if (lB != null) {
                long jLongValue = lB.longValue();
                long j3 = 7000 + jLongValue;
                boolean z = j3 > System.currentTimeMillis();
                boolean z2 = j != jLongValue;
                if (z && z2 && j3 < j2) {
                    l = lB;
                    j2 = j3;
                }
            }
        }
        js2 js2Var = l != null ? new js2(Long.valueOf(j2), l) : null;
        if (js2Var == null) {
            SimpleDateFormat simpleDateFormat = it0.a;
            List<p84> listC = d84Var.c();
            ArrayList arrayList = new ArrayList(p70.a0(listC, 10));
            for (p84 p84Var : listC) {
                arrayList.add(p84Var.d() + "→reset=" + p84Var.b());
            }
            it0.a("scheduleNext: No future trigger found. Limits: " + arrayList);
            return;
        }
        long jLongValue2 = ((Number) js2Var.n).longValue();
        long jLongValue3 = ((Number) js2Var.o).longValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jLongValue2 <= jCurrentTimeMillis) {
            SimpleDateFormat simpleDateFormat2 = it0.a;
            it0.a("scheduleNext: Trigger time already passed. triggerTime=" + jLongValue2 + ", now=" + jCurrentTimeMillis);
            return;
        }
        long j4 = jLongValue2 - jCurrentTimeMillis;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("rolling_window_trigger_timestamp", Long.valueOf(jLongValue3));
        zl0 zl0Var = new zl0(linkedHashMap);
        bi4.L(zl0Var);
        np2 np2VarB = new np2(RollingWindowWorker.class, 0).b(j4, TimeUnit.MILLISECONDS);
        np2VarB.c.e = zl0Var;
        np2VarB.d.add("rolling_window");
        op2 op2Var = (op2) np2VarB.a();
        SimpleDateFormat simpleDateFormat3 = it0.a;
        it0.a("scheduleNext: Scheduling for " + new Date(jLongValue2) + " (delay=" + j4 + "ms, ts=" + jLongValue3 + ")");
        ra3 ra3Var = ez3.a;
        new Date(jLongValue2).toString();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        eg4.c(context).b("rolling_window_work", op2Var);
    }

    public static yq3 Q(float f, float f2, Object obj, int i) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1500.0f;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        return new yq3(f, f2, obj);
    }

    public static final int R(sf2 sf2Var) {
        int iC;
        int i = sf2Var.b;
        int iC2 = sf2Var.c(0);
        while (sf2Var.b != 0 && sf2Var.c(0) == iC2) {
            sf2Var.f(0, sf2Var.d());
            sf2Var.e(sf2Var.b - 1);
            int i2 = sf2Var.b;
            int i3 = i2 >>> 1;
            int i4 = 0;
            while (i4 < i3) {
                int iC3 = sf2Var.c(i4);
                int i5 = (i4 + 1) * 2;
                int i6 = i5 - 1;
                int iC4 = sf2Var.c(i6);
                if (i5 >= i2 || (iC = sf2Var.c(i5)) <= iC4) {
                    if (iC4 > iC3) {
                        sf2Var.f(i4, iC4);
                        sf2Var.f(i6, iC3);
                        i4 = i6;
                    }
                } else if (iC > iC3) {
                    sf2Var.f(i4, iC);
                    sf2Var.f(i5, iC3);
                    i4 = i5;
                }
            }
        }
        return iC2;
    }

    public static void S() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static int T(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean U(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, ft0[] ft0VarArr) throws IOException {
        int length;
        byte[] bArr2 = k30.j;
        byte[] bArr3 = k30.i;
        byte[] bArr4 = k30.f;
        int i = 0;
        if (Arrays.equals(bArr, bArr4)) {
            ArrayList arrayList = new ArrayList(3);
            ArrayList arrayList2 = new ArrayList(3);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                dm0.Q(byteArrayOutputStream2, ft0VarArr.length);
                int i2 = 2;
                int i3 = 2;
                for (ft0 ft0Var : ft0VarArr) {
                    dm0.P(byteArrayOutputStream2, ft0Var.c, 4);
                    dm0.P(byteArrayOutputStream2, ft0Var.d, 4);
                    dm0.P(byteArrayOutputStream2, ft0Var.g, 4);
                    String strS = s(ft0Var.a, ft0Var.b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    int length2 = strS.getBytes(charset).length;
                    dm0.Q(byteArrayOutputStream2, length2);
                    i3 = i3 + 14 + length2;
                    byteArrayOutputStream2.write(strS.getBytes(charset));
                }
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (i3 != byteArray.length) {
                    throw new IllegalStateException("Expected size " + i3 + ", does not match actual size " + byteArray.length);
                }
                qh4 qh4Var = new qh4(1, byteArray, false);
                byteArrayOutputStream2.close();
                arrayList.add(qh4Var);
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                int i4 = 0;
                int i5 = 0;
                while (i4 < ft0VarArr.length) {
                    try {
                        ft0 ft0Var2 = ft0VarArr[i4];
                        dm0.Q(byteArrayOutputStream3, i4);
                        dm0.Q(byteArrayOutputStream3, ft0Var2.e);
                        i5 = i5 + 4 + (ft0Var2.e * i2);
                        int[] iArr = ft0Var2.h;
                        int length3 = iArr.length;
                        int i6 = i;
                        int i7 = i2;
                        int i8 = i6;
                        while (i8 < length3) {
                            int i9 = iArr[i8];
                            dm0.Q(byteArrayOutputStream3, i9 - i6);
                            i8++;
                            i6 = i9;
                        }
                        i4++;
                        i2 = i7;
                        i = 0;
                    } catch (Throwable th) {
                    }
                }
                byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                if (i5 != byteArray2.length) {
                    throw new IllegalStateException("Expected size " + i5 + ", does not match actual size " + byteArray2.length);
                }
                qh4 qh4Var2 = new qh4(3, byteArray2, true);
                byteArrayOutputStream3.close();
                arrayList.add(qh4Var2);
                byteArrayOutputStream3 = new ByteArrayOutputStream();
                int i10 = 0;
                int i11 = 0;
                while (i10 < ft0VarArr.length) {
                    try {
                        ft0 ft0Var3 = ft0VarArr[i10];
                        Iterator it = ft0Var3.i.entrySet().iterator();
                        int iIntValue = 0;
                        while (it.hasNext()) {
                            iIntValue |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
                        }
                        ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            Y(byteArrayOutputStream4, iIntValue, ft0Var3);
                            byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            byteArrayOutputStream4 = new ByteArrayOutputStream();
                            try {
                                Z(byteArrayOutputStream4, ft0Var3);
                                byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                                byteArrayOutputStream4.close();
                                dm0.Q(byteArrayOutputStream3, i10);
                                int length4 = byteArray3.length + 2 + byteArray4.length;
                                int i12 = i11 + 6;
                                int i13 = i10;
                                dm0.P(byteArrayOutputStream3, length4, 4);
                                dm0.Q(byteArrayOutputStream3, iIntValue);
                                byteArrayOutputStream3.write(byteArray3);
                                byteArrayOutputStream3.write(byteArray4);
                                i11 = i12 + length4;
                                i10 = i13 + 1;
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                        try {
                            byteArrayOutputStream3.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                }
                byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
                if (i11 != byteArray5.length) {
                    throw new IllegalStateException("Expected size " + i11 + ", does not match actual size " + byteArray5.length);
                }
                qh4 qh4Var3 = new qh4(4, byteArray5, true);
                byteArrayOutputStream3.close();
                arrayList.add(qh4Var3);
                long size = 12 + ((long) (arrayList.size() * 16));
                dm0.P(byteArrayOutputStream, arrayList.size(), 4);
                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                    qh4 qh4Var4 = (qh4) arrayList.get(i14);
                    int i15 = qh4Var4.a;
                    byte[] bArr5 = qh4Var4.b;
                    dm0.P(byteArrayOutputStream, di0.k(i15), 4);
                    dm0.P(byteArrayOutputStream, size, 4);
                    if (qh4Var4.c) {
                        long length5 = bArr5.length;
                        byte[] bArrQ = dm0.q(bArr5);
                        arrayList2.add(bArrQ);
                        dm0.P(byteArrayOutputStream, bArrQ.length, 4);
                        dm0.P(byteArrayOutputStream, length5, 4);
                        length = bArrQ.length;
                    } else {
                        arrayList2.add(bArr5);
                        dm0.P(byteArrayOutputStream, bArr5.length, 4);
                        dm0.P(byteArrayOutputStream, 0L, 4);
                        length = bArr5.length;
                    }
                    size += (long) length;
                }
                for (int i16 = 0; i16 < arrayList2.size(); i16++) {
                    byteArrayOutputStream.write((byte[]) arrayList2.get(i16));
                }
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream2.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } else {
            byte[] bArr6 = k30.g;
            if (Arrays.equals(bArr, bArr6)) {
                byte[] bArrO = o(ft0VarArr, bArr6);
                dm0.P(byteArrayOutputStream, ft0VarArr.length, 1);
                dm0.P(byteArrayOutputStream, bArrO.length, 4);
                byte[] bArrQ2 = dm0.q(bArrO);
                dm0.P(byteArrayOutputStream, bArrQ2.length, 4);
                byteArrayOutputStream.write(bArrQ2);
                return true;
            }
            if (Arrays.equals(bArr, bArr3)) {
                dm0.P(byteArrayOutputStream, ft0VarArr.length, 1);
                for (ft0 ft0Var4 : ft0VarArr) {
                    int size2 = ft0Var4.i.size() * 4;
                    String strS2 = s(ft0Var4.a, ft0Var4.b, bArr3);
                    Charset charset2 = StandardCharsets.UTF_8;
                    dm0.Q(byteArrayOutputStream, strS2.getBytes(charset2).length);
                    dm0.Q(byteArrayOutputStream, ft0Var4.h.length);
                    dm0.P(byteArrayOutputStream, size2, 4);
                    dm0.P(byteArrayOutputStream, ft0Var4.c, 4);
                    byteArrayOutputStream.write(strS2.getBytes(charset2));
                    Iterator it2 = ft0Var4.i.keySet().iterator();
                    while (it2.hasNext()) {
                        dm0.Q(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                        dm0.Q(byteArrayOutputStream, 0);
                    }
                    for (int i17 : ft0Var4.h) {
                        dm0.Q(byteArrayOutputStream, i17);
                    }
                }
            } else {
                byte[] bArr7 = k30.h;
                if (Arrays.equals(bArr, bArr7)) {
                    byte[] bArrO2 = o(ft0VarArr, bArr7);
                    dm0.P(byteArrayOutputStream, ft0VarArr.length, 1);
                    dm0.P(byteArrayOutputStream, bArrO2.length, 4);
                    byte[] bArrQ3 = dm0.q(bArrO2);
                    dm0.P(byteArrayOutputStream, bArrQ3.length, 4);
                    byteArrayOutputStream.write(bArrQ3);
                    return true;
                }
                if (!Arrays.equals(bArr, bArr2)) {
                    return false;
                }
                dm0.Q(byteArrayOutputStream, ft0VarArr.length);
                for (ft0 ft0Var5 : ft0VarArr) {
                    String str = ft0Var5.a;
                    TreeMap treeMap = ft0Var5.i;
                    String strS3 = s(str, ft0Var5.b, bArr2);
                    Charset charset3 = StandardCharsets.UTF_8;
                    dm0.Q(byteArrayOutputStream, strS3.getBytes(charset3).length);
                    dm0.Q(byteArrayOutputStream, treeMap.size());
                    dm0.Q(byteArrayOutputStream, ft0Var5.h.length);
                    dm0.P(byteArrayOutputStream, ft0Var5.c, 4);
                    byteArrayOutputStream.write(strS3.getBytes(charset3));
                    Iterator it3 = treeMap.keySet().iterator();
                    while (it3.hasNext()) {
                        dm0.Q(byteArrayOutputStream, ((Integer) it3.next()).intValue());
                    }
                    for (int i18 : ft0Var5.h) {
                        dm0.Q(byteArrayOutputStream, i18);
                    }
                }
            }
        }
        return true;
    }

    public static d34 V(int i, int i2, my0 my0Var) {
        int i3 = (i2 & 2) != 0 ? 0 : 90;
        if ((i2 & 4) != 0) {
            my0Var = ny0.a;
        }
        return new d34(i, i3, my0Var);
    }

    public static void W(ByteArrayOutputStream byteArrayOutputStream, ft0 ft0Var) throws IOException {
        Z(byteArrayOutputStream, ft0Var);
        int i = ft0Var.g;
        int[] iArr = ft0Var.h;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            dm0.Q(byteArrayOutputStream, i4 - i3);
            i2++;
            i3 = i4;
        }
        byte[] bArr = new byte[(((i * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : ft0Var.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i5 = iIntValue / 8;
                bArr[i5] = (byte) (bArr[i5] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i6 = iIntValue + i;
                int i7 = i6 / 8;
                bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void X(ByteArrayOutputStream byteArrayOutputStream, ft0 ft0Var, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        dm0.Q(byteArrayOutputStream, str.getBytes(charset).length);
        dm0.Q(byteArrayOutputStream, ft0Var.e);
        dm0.P(byteArrayOutputStream, ft0Var.f, 4);
        dm0.P(byteArrayOutputStream, ft0Var.c, 4);
        dm0.P(byteArrayOutputStream, ft0Var.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void Y(ByteArrayOutputStream byteArrayOutputStream, int i, ft0 ft0Var) throws IOException {
        int i2 = ft0Var.g;
        byte[] bArr = new byte[(((Integer.bitCount(i & (-2)) * i2) + 7) & (-8)) / 8];
        for (Map.Entry entry : ft0Var.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i3 = 0;
            for (int i4 = 1; i4 <= 4; i4 <<= 1) {
                if (i4 != 1 && (i4 & i) != 0) {
                    if ((i4 & iIntValue2) == i4) {
                        int i5 = (i3 * i2) + iIntValue;
                        int i6 = i5 / 8;
                        bArr[i6] = (byte) ((1 << (i5 % 8)) | bArr[i6]);
                    }
                    i3++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void Z(ByteArrayOutputStream byteArrayOutputStream, ft0 ft0Var) {
        int i = 0;
        for (Map.Entry entry : ft0Var.i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                dm0.Q(byteArrayOutputStream, iIntValue - i);
                dm0.Q(byteArrayOutputStream, 0);
                i = iIntValue;
            }
        }
    }

    public static final void a(s52 s52Var, ag1 ag1Var, int i) {
        ag1 ag1Var2 = ag1Var;
        s52Var.getClass();
        ag1Var2.X(-1784711732);
        int i2 = i | (ag1Var2.h(s52Var) ? 4 : 2);
        if (ag1Var2.N(i2 & 1, (i2 & 3) != 2)) {
            k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            kd2 kd2Var = kd2.b;
            nd2 nd2VarH = is0.H(ag1Var2, kd2Var);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var2, k80VarA);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var2, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var2, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var2, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var2, nd2VarH);
            cb3 cb3VarA = bb3.a(th.a, mj1.y, ag1Var2, 48);
            int iHashCode2 = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL2 = ag1Var2.l();
            nd2 nd2VarH2 = is0.H(ag1Var2, kd2Var);
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            ht4.D(fdVar, ag1Var2, cb3VarA);
            ht4.D(fdVar2, ag1Var2, hu2VarL2);
            di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
            ht4.D(fdVar4, ag1Var2, nd2VarH2);
            String str = s52Var.a;
            is3 is3Var = wa2.a;
            kd2 kd2Var2 = kd2Var;
            lx3.b(str, null, ((ua2) ag1Var2.j(is3Var)).a.a, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(is3Var)).b.h, ag1Var, 0, 0, 131066);
            mt1.f(ag1Var, new nz1(1.0f, true));
            String str2 = new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Long.valueOf(s52Var.c));
            str2.getClass();
            lx3.b(str2, null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var.j(is3Var)).b.l, ag1Var, 0, 0, 131070);
            ag1Var2 = ag1Var;
            ag1Var2.p(true);
            ag1Var2.W(-1695712170);
            for (Map.Entry entry : s52Var.b.entrySet()) {
                kd2 kd2Var3 = kd2Var2;
                lx3.b(((String) entry.getKey()) + ": " + entry.getValue(), is0.O(kd2Var3, 8.0f, 0.0f, 0.0f, 14), 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(wa2.a)).b.l, ag1Var, 48, 0, 131068);
                ag1Var2 = ag1Var;
                kd2Var2 = kd2Var3;
            }
            ag1Var2.p(false);
            ag1Var2.p(true);
        } else {
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new sp0(i, 5, s52Var);
        }
    }

    public static final void b(nd2 nd2Var, pe1 pe1Var, ag1 ag1Var, int i) {
        ag1Var.X(-932836462);
        int i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i | (ag1Var.h(pe1Var) ? 32 : 16);
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            mt1.f(ag1Var, k75.u(nd2Var, pe1Var));
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i, 3, nd2Var, pe1Var);
        }
    }

    public static final void c(pe1 pe1Var, ne1 ne1Var, ag1 ag1Var, int i) {
        ag1Var.X(149705300);
        int i2 = 2;
        int i3 = i | (ag1Var.h(pe1Var) ? 4 : 2) | (ag1Var.h(ne1Var) ? 32 : 16);
        if (ag1Var.N(i3 & 1, (i3 & 19) != 18)) {
            ka0 ka0VarU = qj0.U(-992757480, new o4(11, ne1Var), ag1Var);
            WeakHashMap weakHashMap = qe4.v;
            n44.H(null, ka0VarU, null, null, null, 0, 0L, 0L, ls3.d(ag1Var).g, qj0.U(-855137949, new mn0(i2, pe1Var), ag1Var), ag1Var, 805306416, 253);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i, 20, pe1Var, ne1Var);
        }
    }

    public static final void d(n8 n8Var, ne1 ne1Var, ag1 ag1Var, int i) {
        ne1Var.getClass();
        ag1Var.X(-354590258);
        int i2 = i | (ag1Var.h(n8Var) ? 4 : 2) | (ag1Var.h(ne1Var) ? 32 : 16);
        int i3 = 0;
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            Context context = (Context) ag1Var.j(ea.b);
            pg2 pg2VarH = ca.h(n8Var.d, ag1Var);
            n44.H(null, qj0.U(1766244498, new g4(ne1Var, n8Var, context, pg2VarH), ag1Var), null, null, null, 0, 0L, 0L, null, qj0.U(1047442141, new mn0(i3, pg2VarH), ag1Var), ag1Var, 805306416, 509);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i, 4, n8Var, ne1Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void e(defpackage.nd2 r20, float r21, long r22, defpackage.ag1 r24, final int r25, final int r26) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tv4.e(nd2, float, long, ag1, int, int):void");
    }

    public static final void f(y84 y84Var, ne1 ne1Var, ag1 ag1Var, int i) {
        ag1Var.X(2080294423);
        int i2 = (ag1Var.d(y84Var.ordinal()) ? 4 : 2) | i | (ag1Var.h(ne1Var) ? 32 : 16);
        int i3 = 1;
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            u51 u51Var = on3.a;
            is3 is3Var = wa2.a;
            k75.a(ne1Var, u51Var, false, null, c75.n(((ua2) ag1Var.j(is3Var)).a.I, ag1Var), null, new fx(1.0f, new sp3(((ua2) ag1Var.j(is3Var)).a.B)), qj0.U(1704751628, new mn0(3, y84Var), ag1Var), ag1Var, ((i2 >> 3) & 14) | 100663344);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new al3(y84Var, ne1Var, i, i3);
        }
    }

    public static final boolean g(ay3 ay3Var) {
        mv2 mv2Var;
        pv2 pv2Var = ay3Var.c;
        uz0 uz0Var = (pv2Var == null || (mv2Var = pv2Var.a) == null) ? null : new uz0(mv2Var.b);
        boolean z = false;
        if (uz0Var != null && uz0Var.a == 1) {
            z = true;
        }
        return !z;
    }

    public static final void h(sf2 sf2Var, int i) {
        if (sf2Var.b == 0 || !(sf2Var.c(0) == i || sf2Var.c(sf2Var.b - 1) == i)) {
            int i2 = sf2Var.b;
            sf2Var.a(i);
            while (i2 > 0) {
                int i3 = ((i2 + 1) >>> 1) - 1;
                int iC = sf2Var.c(i3);
                if (i <= iC) {
                    break;
                }
                sf2Var.f(i2, iC);
                i2 = i3;
            }
            sf2Var.f(i2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object i(defpackage.xf3 r4, float r5, defpackage.yq3 r6, defpackage.fh0 r7) {
        /*
            boolean r0 = r7 instanceof defpackage.bf3
            if (r0 == 0) goto L13
            r0 = r7
            bf3 r0 = (defpackage.bf3) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            bf3 r0 = new bf3
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.r
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            t33 r4 = r0.q
            defpackage.gg4.T(r7)
            goto L4b
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L2e:
            defpackage.gg4.T(r7)
            t33 r7 = new t33
            r7.<init>()
            cf3 r1 = new cf3
            r1.<init>(r5, r6, r7, r2)
            r0.q = r7
            r0.s = r3
            xg2 r5 = defpackage.xg2.n
            java.lang.Object r4 = r4.f(r5, r1, r0)
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L4a
            return r5
        L4a:
            r4 = r7
        L4b:
            float r4 = r4.n
            java.lang.Float r5 = new java.lang.Float
            r5.<init>(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tv4.i(xf3, float, yq3, fh0):java.lang.Object");
    }

    public static ArrayList j(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new uh(objArr, true));
    }

    public static int k(ArrayList arrayList, Comparable comparable) {
        int size = arrayList.size();
        arrayList.getClass();
        int size2 = arrayList.size();
        int i = 0;
        if (size < 0) {
            throw new IllegalArgumentException("fromIndex (0) is greater than toIndex (" + size + ").");
        }
        if (size > size2) {
            k21.g("toIndex (", size, ") is greater than size (", size2, ").");
            return 0;
        }
        int i2 = size - 1;
        while (i <= i2) {
            int i3 = (i + i2) >>> 1;
            int i4 = ca.i((Comparable) arrayList.get(i3), comparable);
            if (i4 < 0) {
                i = i3 + 1;
            } else {
                if (i4 <= 0) {
                    return i3;
                }
                i2 = i3 - 1;
            }
        }
        return -(i + 1);
    }

    public static a42 l(a42 a42Var) {
        a42Var.h();
        a42Var.p = true;
        return a42Var.o > 0 ? a42Var : a42.q;
    }

    public static nd2 m(nd2 nd2Var, vf2 vf2Var, n93 n93Var, boolean z, q93 q93Var, ne1 ne1Var, int i) {
        if ((i & 16) != 0) {
            q93Var = null;
        }
        q93 q93Var2 = q93Var;
        return nd2Var.c(n93Var != null ? new b60(ne1Var, n93Var, vf2Var, q93Var2, false, z) : n93Var == null ? new b60(ne1Var, null, vf2Var, q93Var2, false, z) : vf2Var != null ? wp1.a(kd2.b, vf2Var, n93Var).c(new b60(ne1Var, null, vf2Var, q93Var2, false, z)) : new qb0(new d60(n93Var, z, q93Var2, ne1Var)));
    }

    public static nd2 n(nd2 nd2Var, ne1 ne1Var) {
        return nd2Var.c(new b60(ne1Var, null, null, null, true, true));
    }

    public static byte[] o(ft0[] ft0VarArr, byte[] bArr) throws IOException {
        int i = 0;
        int length = 0;
        for (ft0 ft0Var : ft0VarArr) {
            length += ((((ft0Var.g * 2) + 7) & (-8)) / 8) + (ft0Var.e * 2) + s(ft0Var.a, ft0Var.b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + ft0Var.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, k30.h)) {
            int length2 = ft0VarArr.length;
            while (i < length2) {
                ft0 ft0Var2 = ft0VarArr[i];
                X(byteArrayOutputStream, ft0Var2, s(ft0Var2.a, ft0Var2.b, bArr));
                W(byteArrayOutputStream, ft0Var2);
                i++;
            }
        } else {
            for (ft0 ft0Var3 : ft0VarArr) {
                X(byteArrayOutputStream, ft0Var3, s(ft0Var3.a, ft0Var3.b, bArr));
            }
            int length3 = ft0VarArr.length;
            while (i < length3) {
                W(byteArrayOutputStream, ft0VarArr[i]);
                i++;
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static a42 p() {
        return new a42(10);
    }

    public static final long q() {
        return Thread.currentThread().getId();
    }

    public static void r(long j, Context context) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("rolling_window_trigger_timestamp", Long.valueOf(j));
        linkedHashMap.put("force_rolling_window", Boolean.FALSE);
        zl0 zl0Var = new zl0(linkedHashMap);
        bi4.L(zl0Var);
        np2 np2Var = new np2(RollingWindowWorker.class, 0);
        np2Var.c.e = zl0Var;
        np2Var.d.add("rolling_window");
        op2 op2Var = (op2) np2Var.a();
        context.getClass();
        eg4.c(context).b("rolling_window_work_immediate", op2Var);
    }

    public static String s(String str, String str2, byte[] bArr) {
        byte[] bArr2 = k30.i;
        byte[] bArr3 = k30.j;
        String str3 = (Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(str3)) {
                return str2.replace(":", "!");
            }
            if (":".equals(str3)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(str3)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(str3)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                return xw1.s(sb, (Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    public static final i50 t(gi3 gi3Var) {
        gi3Var.getClass();
        if (!(gi3Var instanceof yg0) && (gi3Var instanceof hi3)) {
            return t(((hi3) gi3Var).a);
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String u(defpackage.p84 r6, android.content.Context r7, defpackage.y84 r8) {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tv4.u(p84, android.content.Context, y84):java.lang.String");
    }

    public static int v(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static final i22 w(p22 p22Var) {
        h22 lifecycle = p22Var.getLifecycle();
        lifecycle.getClass();
        wu4 wu4Var = lifecycle.a;
        while (true) {
            i22 i22Var = (i22) ((AtomicReference) wu4Var.o).get();
            if (i22Var != null) {
                return i22Var;
            }
            bu3 bu3VarF = k30.f();
            zp0 zp0Var = zu0.a;
            i22 i22Var2 = new i22(lifecycle, ca.B(bu3VarF, n92.a.s));
            AtomicReference atomicReference = (AtomicReference) wu4Var.o;
            do {
                dh0 dh0Var = null;
                if (atomicReference.compareAndSet(null, i22Var2)) {
                    zp0 zp0Var2 = zu0.a;
                    ca.y(i22Var2, n92.a.s, null, new p4(i22Var2, dh0Var, 5), 2);
                    return i22Var2;
                }
            } while (atomicReference.get() == null);
        }
    }

    public static String x(Class cls) {
        LinkedHashMap linkedHashMap = mk2.b;
        String strValue = (String) linkedHashMap.get(cls);
        if (strValue == null) {
            kk2 kk2Var = (kk2) cls.getAnnotation(kk2.class);
            strValue = kk2Var != null ? kk2Var.value() : null;
            if (strValue == null || strValue.length() <= 0) {
                k21.l("No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
                return null;
            }
            linkedHashMap.put(cls, strValue);
        }
        strValue.getClass();
        return strValue;
    }

    public static final String y(int i, ag1 ag1Var) {
        ag1Var.j(ea.a);
        return ((Resources) ag1Var.j(ea.c)).getString(i);
    }

    public static final int z(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            return action != 1 ? 0 : 1;
        }
        return 2;
    }
}
