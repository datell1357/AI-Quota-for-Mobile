package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zs3 extends gt3 {
    public static boolean B0(CharSequence charSequence, String str, boolean z) {
        charSequence.getClass();
        return G0(charSequence, str, 0, z, 2) >= 0;
    }

    public static boolean C0(CharSequence charSequence, char c) {
        charSequence.getClass();
        return F0(charSequence, c, 0, 2) >= 0;
    }

    public static boolean D0(CharSequence charSequence, String str) {
        return charSequence instanceof String ? gt3.r0((String) charSequence, str, false) : N0(charSequence, charSequence.length() - str.length(), str, 0, str.length(), false);
    }

    public static final int E0(CharSequence charSequence, String str, int i, boolean z) {
        charSequence.getClass();
        str.getClass();
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i);
        }
        int length = charSequence.length();
        if (i < 0) {
            i = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        ms1 ms1Var = new ms1(i, length, 1);
        boolean z2 = charSequence instanceof String;
        int i2 = ms1Var.p;
        int i3 = ms1Var.o;
        int i4 = ms1Var.n;
        if (!z2 || !(str instanceof String)) {
            boolean z3 = z;
            if ((i2 > 0 && i4 <= i3) || (i2 < 0 && i3 <= i4)) {
                while (true) {
                    CharSequence charSequence2 = charSequence;
                    boolean z4 = z3;
                    int i5 = i4;
                    if (!N0(str, 0, charSequence2, i5, str.length(), z4)) {
                        if (i5 == i3) {
                            break;
                        }
                        i4 = i5 + i2;
                        charSequence = charSequence2;
                        z3 = z4;
                    } else {
                        return i5;
                    }
                }
            }
        } else if ((i2 > 0 && i4 <= i3) || (i2 < 0 && i3 <= i4)) {
            int i6 = i4;
            while (true) {
                String str2 = str;
                boolean z5 = z;
                if (!gt3.u0(0, i6, str.length(), str2, (String) charSequence, z5)) {
                    if (i6 == i3) {
                        break;
                    }
                    i6 += i2;
                    str = str2;
                    z = z5;
                } else {
                    return i6;
                }
            }
        }
        return -1;
    }

    public static int F0(CharSequence charSequence, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        charSequence.getClass();
        return !(charSequence instanceof String) ? H0(charSequence, new char[]{c}, i, false) : ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int G0(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return E0(charSequence, str, i, z);
    }

    public static final int H0(CharSequence charSequence, char[] cArr, int i, boolean z) {
        charSequence.getClass();
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ji.b0(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int length = charSequence.length() - 1;
        if (i > length) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i);
            for (char c : cArr) {
                if (qj0.F(c, cCharAt, z)) {
                    return i;
                }
            }
            if (i == length) {
                return -1;
            }
            i++;
        }
    }

    public static boolean I0(CharSequence charSequence) {
        charSequence.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            if (!qj0.P(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static int J0(String str, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = str.length() - 1;
        }
        return str.lastIndexOf(c, i);
    }

    public static int K0(String str, int i, String str2) {
        int length;
        if ((i & 2) != 0) {
            str.getClass();
            length = str.length() - 1;
        } else {
            length = 0;
        }
        str.getClass();
        str2.getClass();
        return str.lastIndexOf(str2, length);
    }

    public static List L0(String str) {
        n32 n32Var = new n32(str);
        if (!n32Var.hasNext()) {
            return g01.n;
        }
        Object next = n32Var.next();
        if (!n32Var.hasNext()) {
            return tv4.E(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (n32Var.hasNext()) {
            arrayList.add(n32Var.next());
        }
        return arrayList;
    }

    public static String M0(int i, String str) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        if (i < 0) {
            k21.f(xw1.q("Desired length ", i, " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequenceSubSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            sb.append((CharSequence) str);
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }

    public static final boolean N0(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!qj0.F(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String O0(String str, String str2) {
        str.getClass();
        return gt3.y0(str, str2, false) ? str.substring(str2.length()) : str;
    }

    public static final List P0(CharSequence charSequence, String str) {
        int iE0 = E0(charSequence, str, 0, false);
        if (iE0 == -1) {
            return tv4.E(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        int length = 0;
        do {
            arrayList.add(charSequence.subSequence(length, iE0).toString());
            length = str.length() + iE0;
            iE0 = E0(charSequence, str, length, false);
        } while (iE0 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List Q0(CharSequence charSequence, String[] strArr) {
        charSequence.getClass();
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return P0(charSequence, str);
            }
        }
        List listAsList = Arrays.asList(strArr);
        listAsList.getClass();
        ii iiVar = new ii(2, new yr0(charSequence, new sp0(20, listAsList)));
        ArrayList arrayList = new ArrayList(p70.a0(iiVar, 10));
        Iterator it = iiVar.iterator();
        while (true) {
            xr0 xr0Var = (xr0) it;
            if (!xr0Var.hasNext()) {
                return arrayList;
            }
            ms1 ms1Var = (ms1) xr0Var.next();
            ms1Var.getClass();
            arrayList.add(charSequence.subSequence(ms1Var.n, ms1Var.o + 1).toString());
        }
    }

    public static List R0(String str, char[] cArr) {
        if (cArr.length == 1) {
            return P0(str, String.valueOf(cArr[0]));
        }
        ii iiVar = new ii(2, new yr0(str, new sp0(21, cArr)));
        ArrayList arrayList = new ArrayList(p70.a0(iiVar, 10));
        Iterator it = iiVar.iterator();
        while (true) {
            xr0 xr0Var = (xr0) it;
            if (!xr0Var.hasNext()) {
                return arrayList;
            }
            ms1 ms1Var = (ms1) xr0Var.next();
            ms1Var.getClass();
            arrayList.add(str.subSequence(ms1Var.n, ms1Var.o + 1).toString());
        }
    }

    public static String S0(String str, String str2) {
        str.getClass();
        str.getClass();
        int iG0 = G0(str, str2, 0, false, 6);
        return iG0 == -1 ? str : str.substring(str2.length() + iG0, str.length());
    }

    public static String T0(String str, char c, String str2) {
        int iJ0 = J0(str, c, 0, 6);
        return iJ0 == -1 ? str2 : str.substring(iJ0 + 1, str.length());
    }

    public static String U0(String str, char c) {
        str.getClass();
        str.getClass();
        int iF0 = F0(str, c, 0, 6);
        return iF0 == -1 ? str : str.substring(0, iF0);
    }

    public static String V0(String str, char c) {
        int iJ0 = J0(str, c, 0, 6);
        return iJ0 == -1 ? str : str.substring(0, iJ0);
    }

    public static CharSequence W0(int i, String str) {
        str.getClass();
        if (i < 0) {
            k21.l(xw1.q("Requested character count ", i, " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.subSequence(0, i);
    }

    public static String X0(int i, String str) {
        str.getClass();
        if (i < 0) {
            k21.l(xw1.q("Requested character count ", i, " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.substring(0, i);
    }

    public static CharSequence Y0(String str) {
        str.getClass();
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zP = qj0.P(str.charAt(!z ? i : length));
            if (z) {
                if (!zP) {
                    break;
                }
                length--;
            } else if (zP) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1);
    }
}
