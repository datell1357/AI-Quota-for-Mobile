package defpackage;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cn1 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final List f;
    public final String g;
    public final String h;

    public cn1(String str, String str2, String str3, String str4, int i, ArrayList arrayList, String str5, String str6) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
        this.f = arrayList;
        this.g = str5;
        this.h = str6;
    }

    public final String a() {
        if (this.c.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        return str.substring(zs3.F0(str, ':', length, 4) + 1, zs3.F0(str, '@', 0, 6));
    }

    public final String b() {
        int length = this.a.length() + 3;
        String str = this.h;
        int iF0 = zs3.F0(str, '/', length, 4);
        return str.substring(iF0, fi4.b(iF0, str.length(), str, "?#"));
    }

    public final ArrayList c() {
        int length = this.a.length() + 3;
        String str = this.h;
        int iF0 = zs3.F0(str, '/', length, 4);
        int iB = fi4.b(iF0, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (iF0 < iB) {
            int i = iF0 + 1;
            int iC = fi4.c(str, '/', i, iB);
            arrayList.add(str.substring(i, iC));
            iF0 = iC;
        }
        return arrayList;
    }

    public final String d() {
        if (this.f == null) {
            return null;
        }
        String str = this.h;
        int iF0 = zs3.F0(str, '?', 0, 6) + 1;
        return str.substring(iF0, fi4.c(str, '#', iF0, str.length()));
    }

    public final String e() {
        if (this.b.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        return str.substring(length, fi4.b(length, str.length(), str, ":@"));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof cn1) && ((cn1) obj).h.equals(this.h);
    }

    public final String f() {
        bn1 bn1Var;
        try {
            bn1Var = new bn1();
            bn1Var.c(this, "/...");
        } catch (IllegalArgumentException unused) {
            bn1Var = null;
        }
        bn1Var.getClass();
        bn1Var.b = zf5.m("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 123);
        bn1Var.c = zf5.m("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 123);
        return bn1Var.a().h;
    }

    public final URI g() {
        String strSubstring;
        String strReplaceAll;
        bn1 bn1Var = new bn1();
        String str = this.a;
        bn1Var.a = str;
        bn1Var.b = e();
        bn1Var.c = a();
        bn1Var.d = this.d;
        str.getClass();
        int i = str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
        int i2 = this.e;
        bn1Var.e = i2 != i ? i2 : -1;
        ArrayList arrayList = bn1Var.f;
        arrayList.clear();
        arrayList.addAll(c());
        String strD = d();
        bn1Var.g = strD != null ? bn1.d(zf5.m(strD, 0, 0, " \"'<>#", 83)) : null;
        if (this.g == null) {
            strSubstring = null;
        } else {
            String str2 = this.h;
            strSubstring = str2.substring(zs3.F0(str2, '#', 0, 6) + 1);
        }
        bn1Var.h = strSubstring;
        String str3 = bn1Var.d;
        if (str3 != null) {
            Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
            patternCompile.getClass();
            strReplaceAll = patternCompile.matcher(str3).replaceAll("");
            strReplaceAll.getClass();
        } else {
            strReplaceAll = null;
        }
        bn1Var.d = strReplaceAll;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.set(i3, zf5.m((String) arrayList.get(i3), 0, 0, "[]", 99));
        }
        ArrayList arrayList2 = bn1Var.g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                String str4 = (String) arrayList2.get(i4);
                arrayList2.set(i4, str4 != null ? zf5.m(str4, 0, 0, "\\^`{|}", 67) : null);
            }
        }
        String str5 = bn1Var.h;
        bn1Var.h = str5 != null ? zf5.m(str5, 0, 0, " \"#<>\\^`{|}", 35) : null;
        String string = bn1Var.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                Pattern patternCompile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                patternCompile2.getClass();
                String strReplaceAll2 = patternCompile2.matcher(string).replaceAll("");
                strReplaceAll2.getClass();
                URI uriCreate = URI.create(strReplaceAll2);
                uriCreate.getClass();
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    public final String toString() {
        return this.h;
    }
}
