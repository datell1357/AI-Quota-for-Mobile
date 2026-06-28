package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b21 implements lu3, uk0, cj1, h51, km2, ov2, rv2, iz2, om3 {
    public static volatile b21 o;
    public final /* synthetic */ int n;

    public /* synthetic */ b21(int i) {
        this.n = i;
    }

    public static final String r(g00 g00Var, g00[] g00VarArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        g00 g00Var2 = r03.b;
        int iC = g00Var.c();
        int i5 = 0;
        while (i5 < iC) {
            int i6 = (i5 + iC) / 2;
            while (i6 > -1 && g00Var.h(i6) != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (g00Var.h(i2) == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    byte bH = g00VarArr[i10].h(i11);
                    byte[] bArr = fi4.a;
                    int i13 = bH & 255;
                    z = z2;
                    i3 = i13;
                }
                byte bH2 = g00Var.h(i7 + i12);
                byte[] bArr2 = fi4.a;
                i4 = i3 - (bH2 & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 == i9) {
                    break;
                }
                if (g00VarArr[i10].c() != i11) {
                    z2 = z;
                } else {
                    if (i10 == g00VarArr.length - 1) {
                        break;
                    }
                    i10++;
                    i11 = -1;
                    z2 = true;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i9 - i12;
                    int iC2 = g00VarArr[i10].c() - i11;
                    int length = g00VarArr.length;
                    for (int i15 = i10 + 1; i15 < length; i15++) {
                        iC2 += g00VarArr[i15].c();
                    }
                    if (iC2 >= i14) {
                        if (iC2 <= i14) {
                            return g00Var.n(i7, i9 + i7).m(k40.a);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            iC = i6;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x006e -> B:27:0x0072). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object s(java.io.FileOutputStream r11, defpackage.fh0 r12) throws java.io.IOException {
        /*
            boolean r0 = r12 instanceof defpackage.ve2
            if (r0 == 0) goto L13
            r0 = r12
            ve2 r0 = (defpackage.ve2) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            ve2 r0 = new ve2
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.s
            int r1 = r0.t
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L2a
            long r3 = r0.r
            java.io.FileOutputStream r11 = r0.q
            defpackage.gg4.T(r12)
            r12 = r0
            goto L72
        L2a:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r11)
            r11 = 0
            return r11
        L31:
            defpackage.gg4.T(r12)
            r3 = 10
            r12 = r0
        L37:
            r0 = 60000(0xea60, double:2.9644E-319)
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 > 0) goto L77
            java.nio.channels.FileChannel r5 = r11.getChannel()     // Catch: java.io.IOException -> L52
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            r6 = 0
            java.nio.channels.FileLock r0 = r5.lock(r6, r8, r10)     // Catch: java.io.IOException -> L52
            r0.getClass()     // Catch: java.io.IOException -> L52
            goto L8a
        L52:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            if (r1 == 0) goto L76
            java.lang.String r5 = "Resource deadlock would occur"
            r6 = 0
            boolean r1 = defpackage.zs3.B0(r1, r5, r6)
            if (r1 != r2) goto L76
            r12.q = r11
            r12.r = r3
            r12.t = r2
            java.lang.Object r0 = defpackage.zf5.A(r3, r12)
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L72
            r0 = r1
            goto L8a
        L72:
            r0 = 2
            long r3 = r3 * r0
            goto L37
        L76:
            throw r0
        L77:
            java.nio.channels.FileChannel r5 = r11.getChannel()
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            r6 = 0
            java.nio.channels.FileLock r0 = r5.lock(r6, r8, r10)
            r0.getClass()
        L8a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b21.s(java.io.FileOutputStream, fh0):java.lang.Object");
    }

    public static ArrayList t(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((d03) obj) != d03.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(p70.a0(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            arrayList2.add(((d03) obj2).n);
        }
        return arrayList2;
    }

    public static byte[] u(List list) {
        list.getClass();
        sy syVar = new sy();
        ArrayList arrayListT = t(list);
        int size = arrayListT.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayListT.get(i);
            i++;
            String str = (String) obj;
            syVar.o0(str.length());
            syVar.u0(str);
        }
        return syVar.K(syVar.o);
    }

    public static yh2 v(di2 di2Var, qi2 qi2Var, Bundle bundle, g22 g22Var, ji2 ji2Var) {
        String string = UUID.randomUUID().toString();
        string.getClass();
        qi2Var.getClass();
        g22Var.getClass();
        return new yh2(di2Var, qi2Var, bundle, g22Var, ji2Var, string, null);
    }

    public static Typeface w(String str, pb1 pb1Var, int i) {
        if (i == 0 && nt1.g(pb1Var, pb1.p) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        int iB = gg4.B(pb1Var, i);
        return (str == null || str.length() == 0) ? Typeface.defaultFromStyle(iB) : Typeface.create(str, iB);
    }

    public static pa3 x(b21 b21Var, List list, int i, int i2) {
        char c;
        long j;
        List listL;
        float f;
        float f2;
        ArrayList arrayList;
        int i3;
        char c2 = ' ';
        long j2 = 4294967295L;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(0.5f)) << 32) | (((long) Float.floatToRawIntBits(0.5f)) & 4294967295L);
        int i4 = 0;
        float f3 = 360.0f;
        if ((i2 & 8) == 0) {
            a42 a42VarP = tv4.p();
            ArrayList arrayList2 = new ArrayList(list.size());
            int size = list.size();
            int i5 = 0;
            while (i5 < size) {
                char c3 = c2;
                sa2 sa2Var = (sa2) list.get(i5);
                b21 b21Var2 = ta2.a;
                long j3 = j2;
                long jD = go2.d(sa2Var.a, jFloatToRawIntBits);
                arrayList2.add(Float.valueOf((((float) Math.atan2(Float.intBitsToFloat((int) (jD & j3)), Float.intBitsToFloat((int) (jD >> c3)))) * 180.0f) / 3.1415927f));
                i5++;
                c2 = c3;
                j2 = j3;
            }
            c = c2;
            j = j2;
            float f4 = 3.1415927f;
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i6 = 0; i6 < size2; i6++) {
                arrayList3.add(Float.valueOf(go2.c(go2.d(((sa2) list.get(i6)).a, jFloatToRawIntBits))));
            }
            int i7 = i * 2;
            float f5 = 360.0f / i7;
            int i8 = 0;
            while (i8 < i7) {
                Iterator it = new ms1(i4, list.size() - 1, 1).iterator();
                while (((ls1) it).p) {
                    int iNextInt = ((es1) it).nextInt();
                    int i9 = i8 % 2;
                    if (i9 != 0) {
                        iNextInt = (list.size() - 1) - iNextInt;
                    }
                    if (iNextInt > 0 || i9 == 0) {
                        b21 b21Var3 = ta2.a;
                        f = f4;
                        float fFloatValue = (((i8 * f5) + (i9 == 0 ? ((Number) arrayList2.get(iNextInt)).floatValue() : (((Number) arrayList2.get(i4)).floatValue() * 2.0f) + (f5 - ((Number) arrayList2.get(iNextInt)).floatValue()))) / f3) * 2.0f * f;
                        f2 = f3;
                        arrayList = arrayList2;
                        double d = fFloatValue;
                        i3 = i8;
                        a42VarP.add(new sa2(go2.e(go2.f(((Number) arrayList3.get(iNextInt)).floatValue(), (((long) Float.floatToRawIntBits((float) Math.sin(d))) & j) | (((long) Float.floatToRawIntBits((float) Math.cos(d))) << c)), jFloatToRawIntBits), ((sa2) list.get(iNextInt)).b));
                    } else {
                        f = f4;
                        i3 = i8;
                        f2 = f3;
                        arrayList = arrayList2;
                    }
                    i8 = i3;
                    f3 = f2;
                    f4 = f;
                    arrayList2 = arrayList;
                    i4 = 0;
                }
                i8++;
                i4 = 0;
            }
            listL = tv4.l(a42VarP);
        } else {
            c = ' ';
            j = 4294967295L;
            int size3 = list.size();
            ms1 ms1VarA0 = ix.a0(0, size3 * i);
            ArrayList arrayList4 = new ArrayList(p70.a0(ms1VarA0, 10));
            Iterator it2 = ms1VarA0.iterator();
            while (((ls1) it2).p) {
                int iNextInt2 = ((es1) it2).nextInt();
                b21 b21Var4 = ta2.a;
                int i10 = iNextInt2 % size3;
                long jD2 = go2.d(((sa2) list.get(i10)).a, jFloatToRawIntBits);
                int i11 = (int) (jD2 >> 32);
                long j4 = jFloatToRawIntBits;
                double d2 = ((((iNextInt2 / size3) * 360.0f) / i) / 360.0f) * 2.0f * 3.1415927f;
                int i12 = (int) (jD2 & 4294967295L);
                arrayList4.add(new sa2(go2.e((((long) Float.floatToRawIntBits((Float.intBitsToFloat(i11) * ((float) Math.cos(d2))) - (Float.intBitsToFloat(i12) * ((float) Math.sin(d2))))) << 32) | (((long) Float.floatToRawIntBits((Float.intBitsToFloat(i12) * ((float) Math.cos(d2))) + (Float.intBitsToFloat(i11) * ((float) Math.sin(d2))))) & 4294967295L), j4), ((sa2) list.get(i10)).b));
                jFloatToRawIntBits = j4;
                size3 = size3;
            }
            listL = arrayList4;
        }
        long j5 = jFloatToRawIntBits;
        int size4 = listL.size() * 2;
        float[] fArr = new float[size4];
        for (int i13 = 0; i13 < size4; i13++) {
            long j6 = ((sa2) listL.get(i13 / 2)).a;
            fArr[i13] = Float.intBitsToFloat((int) (i13 % 2 == 0 ? j6 >> c : j6 & j));
        }
        a42 a42VarP2 = tv4.p();
        Iterator it3 = listL.iterator();
        while (it3.hasNext()) {
            a42VarP2.add(((sa2) it3.next()).b);
        }
        return c75.f(fArr, bi0.b, tv4.l(a42VarP2), Float.intBitsToFloat((int) (j5 >> c)), Float.intBitsToFloat((int) (j5 & j)));
    }

    @Override // defpackage.km2
    public boolean b(md2 md2Var) {
        return false;
    }

    @Override // defpackage.rv2
    public Typeface c(pb1 pb1Var, int i) {
        return w(null, pb1Var, i);
    }

    @Override // defpackage.km2
    public int d() {
        return 8;
    }

    @Override // defpackage.om3
    public a81 e(vt3 vt3Var) {
        return new e81();
    }

    @Override // defpackage.rv2
    public Typeface f(vg1 vg1Var, pb1 pb1Var, int i) {
        String strConcat = vg1Var.e;
        int i2 = pb1Var.n / 100;
        if (i2 >= 0 && i2 < 2) {
            strConcat = strConcat.concat("-thin");
        } else if (2 <= i2 && i2 < 4) {
            strConcat = strConcat.concat("-light");
        } else if (i2 != 4) {
            if (i2 == 5) {
                strConcat = strConcat.concat("-medium");
            } else if ((6 > i2 || i2 >= 8) && 8 <= i2 && i2 < 11) {
                strConcat = strConcat.concat("-black");
            }
        }
        Typeface typeface = null;
        if (strConcat.length() != 0) {
            Typeface typefaceW = w(strConcat, pb1Var, i);
            if (!nt1.g(typefaceW, Typeface.create(Typeface.DEFAULT, gg4.B(pb1Var, i))) && !nt1.g(typefaceW, w(null, pb1Var, i))) {
                typeface = typefaceW;
            }
        }
        return typeface == null ? w(vg1Var.e, pb1Var, i) : typeface;
    }

    @Override // defpackage.h51
    public String g() {
        return null;
    }

    @Override // defpackage.km2
    public boolean h(md2 md2Var) {
        return se0.x(ca.b(w80.R(md2Var), false));
    }

    @Override // defpackage.cj1
    public boolean i() {
        boolean z;
        synchronized (e51.a) {
            try {
                int i = e51.c;
                e51.c = i + 1;
                if (i >= 30 || SystemClock.uptimeMillis() > e51.d + 30000) {
                    e51.c = 0;
                    e51.d = SystemClock.uptimeMillis();
                    String[] list = e51.b.list();
                    if (list == null) {
                        list = new String[0];
                    }
                    e51.e = list.length < 800;
                }
                z = e51.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.km2
    public void j(xy1 xy1Var, long j, zj1 zj1Var, int i, boolean z) {
        bo boVar = xy1Var.S;
        mm2 mm2Var = (mm2) boVar.e;
        o83 o83Var = mm2.d0;
        ((mm2) boVar.e).T0(mm2.g0, mm2Var.L0(j), zj1Var, 1, z);
    }

    @Override // defpackage.cj1
    public boolean k(ln3 ln3Var) {
        cu0 cu0Var = ln3Var.a;
        boolean z = cu0Var instanceof au0;
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        if ((z ? ((au0) cu0Var).a : Integer.MAX_VALUE) <= 100) {
            return false;
        }
        cu0 cu0Var2 = ln3Var.b;
        if (cu0Var2 instanceof au0) {
            i = ((au0) cu0Var2).a;
        }
        return i > 100;
    }

    @Override // defpackage.iz2
    public void l() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // defpackage.km2
    public boolean m(zj1 zj1Var, xy1 xy1Var) {
        return false;
    }

    @Override // defpackage.iz2
    public void n(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
    }

    @Override // defpackage.lu3
    public mu3 p(pv1 pv1Var) {
        return new je1((Context) pv1Var.e, pv1Var.b, (d90) pv1Var.f, pv1Var.c, pv1Var.d);
    }

    @Override // defpackage.km2
    public boolean q(xy1 xy1Var) {
        bh3 bh3VarX = xy1Var.x();
        boolean z = false;
        if (bh3VarX != null && bh3VarX.q) {
            z = true;
        }
        return !z;
    }

    public String toString() {
        switch (this.n) {
            case 29:
                return "SharingStarted.Eagerly";
            default:
                return super.toString();
        }
    }

    public pa3 y() {
        pa3 pa3Var = ta2.m;
        if (pa3Var != null) {
            return pa3Var;
        }
        pa3 pa3VarB = x(this, tv4.F(new sa2((((long) Float.floatToRawIntBits(0.193f)) << 32) | (((long) Float.floatToRawIntBits(0.277f)) & 4294967295L), new bi0(2, 0.053f)), new sa2((((long) Float.floatToRawIntBits(0.176f)) << 32) | (((long) Float.floatToRawIntBits(0.055f)) & 4294967295L), new bi0(2, 0.053f))), 10, 12).b();
        ta2.m = pa3VarB;
        return pa3VarB;
    }

    @Override // defpackage.h51
    public void a() {
    }

    @Override // defpackage.h51
    public void o(long j, String str) {
    }
}
