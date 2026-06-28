package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class at3 extends kt4 {
    public static String n0(String str) {
        return ci3.L(new hw3(new s70(3, str), new ao0("    ", 10), 1), "\n");
    }

    public static String o0(String str) {
        Comparable comparable;
        String strSubstring;
        List listL0 = zs3.L0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listL0) {
            if (!zs3.I0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(p70.a0(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            String str2 = (String) obj2;
            int length = str2.length();
            int length2 = 0;
            while (true) {
                if (length2 >= length) {
                    length2 = -1;
                    break;
                }
                if (!qj0.P(str2.charAt(length2))) {
                    break;
                }
                length2++;
            }
            if (length2 == -1) {
                length2 = str2.length();
            }
            arrayList2.add(Integer.valueOf(length2));
        }
        Iterator it = arrayList2.iterator();
        if (it.hasNext()) {
            comparable = (Comparable) it.next();
            while (it.hasNext()) {
                Comparable comparable2 = (Comparable) it.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int iIntValue = num != null ? num.intValue() : 0;
        int length3 = str.length();
        listL0.size();
        int size2 = listL0.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : listL0) {
            int i3 = i + 1;
            if (i < 0) {
                tv4.S();
                throw null;
            }
            String str3 = (String) obj3;
            if ((i == 0 || i == size2) && zs3.I0(str3)) {
                strSubstring = null;
            } else {
                str3.getClass();
                if (iIntValue < 0) {
                    k21.l(xw1.q("Requested character count ", iIntValue, " is less than zero."));
                    return null;
                }
                int length4 = str3.length();
                if (iIntValue <= length4) {
                    length4 = iIntValue;
                }
                strSubstring = str3.substring(length4);
            }
            if (strSubstring != null) {
                arrayList3.add(strSubstring);
            }
            i = i3;
        }
        StringBuilder sb = new StringBuilder(length3);
        o70.l0(arrayList3, sb, "\n", "", "", "...", null);
        return sb.toString();
    }

    public static String p0(String str) {
        if (zs3.I0("|")) {
            k21.f("marginPrefix must be non-blank string.");
            return null;
        }
        List listL0 = zs3.L0(str);
        int length = str.length();
        listL0.size();
        int size = listL0.size() - 1;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : listL0) {
            int i2 = i + 1;
            if (i < 0) {
                tv4.S();
                throw null;
            }
            String str2 = (String) obj;
            if ((i == 0 || i == size) && zs3.I0(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!qj0.P(str2.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                String strSubstring = (i3 != -1 && gt3.x0(str2, "|", i3, false)) ? str2.substring("|".length() + i3) : null;
                if (strSubstring != null) {
                    str2 = strSubstring;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        o70.l0(arrayList, sb, "\n", "", "", "...", null);
        return sb.toString();
    }
}
