package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vm4 {
    public static int a(byte[] bArr, int i, e91 e91Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return c(b, bArr, i2, e91Var);
        }
        e91Var.a = b;
        return i2;
    }

    public static String b(Context context, String str) {
        Preconditions.checkNotNull(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str)) {
            str = y35.a(context);
        }
        int identifier = resources.getIdentifier("google_app_id", "string", str);
        if (identifier == 0) {
            return null;
        }
        try {
            return resources.getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static int c(int i, byte[] bArr, int i2, e91 e91Var) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            e91Var.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            e91Var.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            e91Var.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            e91Var.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                e91Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int d(byte[] bArr, int i, e91 e91Var) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            e91Var.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        e91Var.b = j2;
        return i3;
    }

    public static String e(String str, String[] strArr, String[] strArr2) {
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < iMin; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }

    public static int f(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static long g(int i, byte[] bArr) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static int h(byte[] bArr, int i, e91 e91Var) throws fo4 {
        int iA = a(bArr, i, e91Var);
        int i2 = e91Var.a;
        if (i2 < 0) {
            q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 == 0) {
            e91Var.d = "";
            return iA;
        }
        e91Var.d = tp4.d(bArr, iA, i2);
        return iA + i2;
    }

    public static int i(byte[] bArr, int i, e91 e91Var) throws fo4 {
        int iA = a(bArr, i, e91Var);
        int i2 = e91Var.a;
        if (i2 < 0) {
            q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iA) {
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            e91Var.d = zm4.o;
            return iA;
        }
        e91Var.d = zm4.i(bArr, iA, i2);
        return iA + i2;
    }

    public static int j(Object obj, cp4 cp4Var, byte[] bArr, int i, int i2, e91 e91Var) throws fo4 {
        int iC = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iC = c(i3, bArr, iC, e91Var);
            i3 = e91Var.a;
        }
        int i4 = iC;
        if (i3 < 0 || i3 > i2 - i4) {
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = e91Var.c + 1;
        e91Var.c = i5;
        if (i5 >= 100) {
            q73.t("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i6 = i4 + i3;
        cp4Var.e(obj, bArr, i4, i6, e91Var);
        e91Var.c--;
        e91Var.d = obj;
        return i6;
    }

    public static int k(Object obj, cp4 cp4Var, byte[] bArr, int i, int i2, int i3, e91 e91Var) throws fo4 {
        uo4 uo4Var = (uo4) cp4Var;
        int i4 = e91Var.c + 1;
        e91Var.c = i4;
        if (i4 >= 100) {
            q73.t("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int iX = uo4Var.x(obj, bArr, i, i2, i3, e91Var);
        e91Var.c--;
        e91Var.d = obj;
        return iX;
    }

    public static int l(int i, byte[] bArr, int i2, int i3, do4 do4Var, e91 e91Var) {
        sn4 sn4Var = (sn4) do4Var;
        int iA = a(bArr, i2, e91Var);
        sn4Var.e(e91Var.a);
        while (iA < i3) {
            int iA2 = a(bArr, iA, e91Var);
            if (i != e91Var.a) {
                break;
            }
            iA = a(bArr, iA2, e91Var);
            sn4Var.e(e91Var.a);
        }
        return iA;
    }

    public static int m(byte[] bArr, int i, do4 do4Var, e91 e91Var) throws fo4 {
        sn4 sn4Var = (sn4) do4Var;
        int iA = a(bArr, i, e91Var);
        int i2 = e91Var.a + iA;
        while (iA < i2) {
            iA = a(bArr, iA, e91Var);
            sn4Var.e(e91Var.a);
        }
        if (iA == i2) {
            return iA;
        }
        q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int n(cp4 cp4Var, int i, byte[] bArr, int i2, int i3, do4 do4Var, e91 e91Var) throws fo4 {
        rn4 rn4VarZza = cp4Var.zza();
        cp4 cp4Var2 = cp4Var;
        byte[] bArr2 = bArr;
        int i4 = i3;
        e91 e91Var2 = e91Var;
        int iJ = j(rn4VarZza, cp4Var2, bArr2, i2, i4, e91Var2);
        cp4Var2.h(rn4VarZza);
        e91Var2.d = rn4VarZza;
        do4Var.add(rn4VarZza);
        while (iJ < i4) {
            e91 e91Var3 = e91Var2;
            int i5 = i4;
            int iA = a(bArr2, iJ, e91Var3);
            if (i != e91Var3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            cp4 cp4Var3 = cp4Var2;
            rn4 rn4VarZza2 = cp4Var3.zza();
            iJ = j(rn4VarZza2, cp4Var3, bArr3, iA, i5, e91Var3);
            cp4Var2 = cp4Var3;
            bArr2 = bArr3;
            i4 = i5;
            e91Var2 = e91Var3;
            cp4Var2.h(rn4VarZza2);
            e91Var2.d = rn4VarZza2;
            do4Var.add(rn4VarZza2);
        }
        return iJ;
    }

    public static int o(int i, byte[] bArr, int i2, int i3, lp4 lp4Var, e91 e91Var) throws fo4 {
        if ((i >>> 3) == 0) {
            q73.t("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iD = d(bArr, i2, e91Var);
            lp4Var.d(i, Long.valueOf(e91Var.b));
            return iD;
        }
        if (i4 == 1) {
            lp4Var.d(i, Long.valueOf(g(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iA = a(bArr, i2, e91Var);
            int i5 = e91Var.a;
            if (i5 < 0) {
                q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iA) {
                q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                lp4Var.d(i, zm4.o);
            } else {
                lp4Var.d(i, zm4.i(bArr, iA, i5));
            }
            return iA + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                lp4Var.d(i, Integer.valueOf(f(i2, bArr)));
                return i2 + 4;
            }
            q73.t("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        lp4 lp4VarA = lp4.a();
        int i7 = e91Var.c + 1;
        e91Var.c = i7;
        if (i7 >= 100) {
            q73.t("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iA2 = a(bArr, i2, e91Var);
            int i9 = e91Var.a;
            if (i9 == i6) {
                i8 = i9;
                i2 = iA2;
                break;
            }
            i2 = o(i9, bArr, iA2, i3, lp4VarA, e91Var);
            i8 = i9;
        }
        e91Var.c--;
        if (i2 > i3 || i8 != i6) {
            q73.t("Failed to parse the message.");
            return 0;
        }
        lp4Var.d(i, lp4VarA);
        return i2;
    }

    public static int p(int i, byte[] bArr, int i2, int i3, e91 e91Var) throws fo4 {
        if ((i >>> 3) == 0) {
            q73.t("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return d(bArr, i2, e91Var);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return a(bArr, i2, e91Var) + e91Var.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            q73.t("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = a(bArr, i2, e91Var);
            i6 = e91Var.a;
            if (i6 == i5) {
                break;
            }
            i2 = p(i6, bArr, i2, i3, e91Var);
        }
        if (i2 <= i3 && i6 == i5) {
            return i2;
        }
        q73.t("Failed to parse the message.");
        return 0;
    }
}
