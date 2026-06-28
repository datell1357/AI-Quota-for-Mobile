package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bn1 {
    public String a;
    public String d;
    public ArrayList g;
    public String h;
    public String b = "";
    public String c = "";
    public int e = -1;
    public final ArrayList f = tv4.H("");

    public static ArrayList d(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iF0 = zs3.F0(str, '&', i, 4);
            if (iF0 == -1) {
                iF0 = str.length();
            }
            int iF02 = zs3.F0(str, '=', i, 4);
            if (iF02 == -1 || iF02 > iF0) {
                arrayList.add(str.substring(i, iF0));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, iF02));
                arrayList.add(str.substring(iF02 + 1, iF0));
            }
            i = iF0 + 1;
        }
        return arrayList;
    }

    public final cn1 a() {
        ArrayList arrayList;
        String str = this.a;
        if (str == null) {
            k21.n("scheme == null");
            return null;
        }
        String strT = zf5.T(0, 0, 7, this.b);
        String strT2 = zf5.T(0, 0, 7, this.c);
        String str2 = this.d;
        if (str2 == null) {
            k21.n("host == null");
            return null;
        }
        int iB = b();
        ArrayList arrayList2 = this.f;
        ArrayList arrayList3 = new ArrayList(p70.a0(arrayList2, 10));
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            arrayList3.add(zf5.T(0, 0, 7, (String) obj));
        }
        ArrayList arrayList4 = this.g;
        if (arrayList4 != null) {
            arrayList = new ArrayList(p70.a0(arrayList4, 10));
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList4.get(i2);
                i2++;
                String str3 = (String) obj2;
                arrayList.add(str3 != null ? zf5.T(0, 0, 3, str3) : null);
            }
        } else {
            arrayList = null;
        }
        String str4 = this.h;
        return new cn1(str, strT, strT2, str2, iB, arrayList, str4 != null ? zf5.T(0, 0, 7, str4) : null, toString());
    }

    public final int b() {
        int i = this.e;
        if (i != -1) {
            return i;
        }
        String str = this.a;
        str.getClass();
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.cn1 r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bn1.c(cn1, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bn1.toString():java.lang.String");
    }
}
