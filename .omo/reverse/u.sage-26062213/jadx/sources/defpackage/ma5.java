package defpackage;

import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ma5 {
    public static final z43 a;

    static {
        hp1 hp1Var = lp1.o;
        Object[] objArr = new Object[24];
        objArr[0] = "Version";
        objArr[1] = "GoogleConsent";
        objArr[2] = "VendorConsent";
        objArr[3] = "VendorLegitimateInterest";
        objArr[4] = "gdprApplies";
        objArr[5] = "EnableAdvertiserConsentMode";
        objArr[6] = "PolicyVersion";
        objArr[7] = "PurposeConsents";
        objArr[8] = "PurposeOneTreatment";
        objArr[9] = "Purpose1";
        objArr[10] = "Purpose3";
        objArr[11] = "Purpose4";
        System.arraycopy(new String[]{"Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics"}, 0, objArr, 12, 12);
        w80.m(24, objArr);
        a = lp1.i(24, objArr);
    }

    public static String a(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    public static final boolean b(km4 km4Var, e53 e53Var, e53 e53Var2, jn3 jn3Var, char[] cArr, int i, int i2, int i3, String str, String str2, String str3, boolean z, boolean z2) {
        la5 la5Var;
        char c;
        int iC = c(km4Var);
        if (iC > 0 && (i2 != 1 || i != 1)) {
            cArr[iC] = '2';
        }
        if (g(km4Var, e53Var2) == lm4.o) {
            c = '3';
        } else {
            if (km4Var == km4.o && i3 == 1 && jn3Var.q.equals(str)) {
                if (iC > 0 && cArr[iC] != '2') {
                    cArr[iC] = '1';
                }
                return true;
            }
            if (e53Var.containsKey(km4Var) && (la5Var = (la5) e53Var.get(km4Var)) != null) {
                int iOrdinal = la5Var.ordinal();
                lm4 lm4Var = lm4.q;
                if (iOrdinal != 0) {
                    lm4 lm4Var2 = lm4.p;
                    if (iOrdinal != 1) {
                        if (iOrdinal == 2) {
                            return g(km4Var, e53Var2) == lm4Var ? f(km4Var, cArr, str3, z2) : e(km4Var, cArr, str2, z);
                        }
                        if (iOrdinal == 3) {
                            return g(km4Var, e53Var2) == lm4Var2 ? e(km4Var, cArr, str2, z) : f(km4Var, cArr, str3, z2);
                        }
                        c = '0';
                    } else if (g(km4Var, e53Var2) != lm4Var2) {
                        return f(km4Var, cArr, str3, z2);
                    }
                } else if (g(km4Var, e53Var2) != lm4Var) {
                    return e(km4Var, cArr, str2, z);
                }
                c = '8';
            } else {
                c = '0';
            }
        }
        if (iC <= 0 || cArr[iC] == '2') {
            return false;
        }
        cArr[iC] = c;
        return false;
    }

    public static final int c(km4 km4Var) {
        if (km4Var == km4.o) {
            return 1;
        }
        if (km4Var == km4.q) {
            return 2;
        }
        if (km4Var == km4.r) {
            return 3;
        }
        return km4Var == km4.s ? 4 : -1;
    }

    public static final String d(km4 km4Var, String str, String str2) {
        String strValueOf = "0";
        String strValueOf2 = (TextUtils.isEmpty(str) || str.length() < km4Var.zza()) ? "0" : String.valueOf(str.charAt(km4Var.zza() - 1));
        if (!TextUtils.isEmpty(str2) && str2.length() >= km4Var.zza()) {
            strValueOf = String.valueOf(str2.charAt(km4Var.zza() - 1));
        }
        return String.valueOf(strValueOf2).concat(String.valueOf(strValueOf));
    }

    public static final boolean e(km4 km4Var, char[] cArr, String str, boolean z) {
        char c;
        int iC = c(km4Var);
        if (!z) {
            c = '4';
        } else {
            if (str.length() >= km4Var.zza()) {
                char cCharAt = str.charAt(km4Var.zza() - 1);
                boolean z2 = cCharAt == '1';
                if (iC > 0 && cArr[iC] != '2') {
                    cArr[iC] = cCharAt != '1' ? '6' : '1';
                }
                return z2;
            }
            c = '0';
        }
        if (iC > 0 && cArr[iC] != '2') {
            cArr[iC] = c;
        }
        return false;
    }

    public static final boolean f(km4 km4Var, char[] cArr, String str, boolean z) {
        char c;
        int iC = c(km4Var);
        if (!z) {
            c = '5';
        } else {
            if (str.length() >= km4Var.zza()) {
                char cCharAt = str.charAt(km4Var.zza() - 1);
                boolean z2 = cCharAt == '1';
                if (iC > 0 && cArr[iC] != '2') {
                    cArr[iC] = cCharAt != '1' ? '7' : '1';
                }
                return z2;
            }
            c = '0';
        }
        if (iC > 0 && cArr[iC] != '2') {
            cArr[iC] = c;
        }
        return false;
    }

    public static final lm4 g(km4 km4Var, e53 e53Var) {
        Object obj = e53Var.get(km4Var);
        if (obj == null) {
            obj = lm4.r;
        }
        return (lm4) obj;
    }
}
