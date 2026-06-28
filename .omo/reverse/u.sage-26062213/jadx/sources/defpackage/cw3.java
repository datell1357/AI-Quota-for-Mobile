package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cw3 {
    public final String a;
    public final String b;
    public final boolean c;
    public final int d;
    public final String e;
    public final int f;
    public final int g;

    public cw3(String str, String str2, boolean z, int i, String str3, int i2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = i;
        this.e = str3;
        this.f = i2;
        String upperCase = str2.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        this.g = zs3.B0(upperCase, "INT", false) ? 3 : (zs3.B0(upperCase, "CHAR", false) || zs3.B0(upperCase, "CLOB", false) || zs3.B0(upperCase, "TEXT", false)) ? 2 : zs3.B0(upperCase, "BLOB", false) ? 5 : (zs3.B0(upperCase, "REAL", false) || zs3.B0(upperCase, "FLOA", false) || zs3.B0(upperCase, "DOUB", false)) ? 4 : 1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof cw3) {
                boolean z = this.d > 0;
                cw3 cw3Var = (cw3) obj;
                int i = cw3Var.f;
                if (z == (cw3Var.d > 0) && nt1.g(this.a, cw3Var.a) && this.c == cw3Var.c) {
                    String str = cw3Var.e;
                    int i2 = this.f;
                    String str2 = this.e;
                    if ((i2 != 1 || i != 2 || str2 == null || se0.i(str2, str)) && ((i2 != 2 || i != 1 || str == null || se0.i(str, str2)) && ((i2 == 0 || i2 != i || (str2 == null ? str == null : se0.i(str2, str))) && this.g == cw3Var.g))) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((((this.a.hashCode() * 31) + this.g) * 31) + (this.c ? 1231 : 1237)) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
        sb.append(this.a);
        sb.append("',\n            |   type = '");
        sb.append(this.b);
        sb.append("',\n            |   affinity = '");
        sb.append(this.g);
        sb.append("',\n            |   notNull = '");
        sb.append(this.c);
        sb.append("',\n            |   primaryKeyPosition = '");
        sb.append(this.d);
        sb.append("',\n            |   defaultValue = '");
        String str = this.e;
        if (str == null) {
            str = "undefined";
        }
        sb.append(str);
        sb.append("'\n            |}\n        ");
        return at3.n0(at3.p0(sb.toString()));
    }
}
