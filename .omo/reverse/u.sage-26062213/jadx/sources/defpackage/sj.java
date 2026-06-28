package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sj {
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final em1 e;

    static {
        new sj(null, -1, null, null);
    }

    public sj(em1 em1Var, String str, String str2) {
        w80.L(em1Var, "Host");
        String str3 = em1Var.n;
        Locale locale = Locale.ROOT;
        this.c = str3.toLowerCase(locale);
        int i = em1Var.p;
        this.d = i < 0 ? -1 : i;
        this.b = str == null ? null : str;
        this.a = str2 != null ? str2.toUpperCase(locale) : null;
        this.e = em1Var;
    }

    public final int a(sj sjVar) {
        int i;
        String str = sjVar.a;
        String str2 = sjVar.c;
        String str3 = sjVar.b;
        String str4 = this.a;
        if (c75.A(str4, str)) {
            i = 1;
        } else {
            if (str4 != null && sjVar.a != null) {
                return -1;
            }
            i = 0;
        }
        String str5 = this.b;
        if (c75.A(str5, str3)) {
            i += 2;
        } else if (str5 != null && str3 != null) {
            return -1;
        }
        int i2 = sjVar.d;
        int i3 = this.d;
        if (i3 == i2) {
            i += 4;
        } else if (i3 != -1 && i2 != -1) {
            return -1;
        }
        String str6 = this.c;
        if (c75.A(str6, str2)) {
            return i + 8;
        }
        if (str6 == null || str2 == null) {
            return i;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sj)) {
            return this == obj;
        }
        sj sjVar = (sj) obj;
        return c75.A(this.c, sjVar.c) && this.d == sjVar.d && c75.A(this.b, sjVar.b) && c75.A(this.a, sjVar.a);
    }

    public final int hashCode() {
        return c75.I(c75.I(c75.H(c75.I(17, this.c), this.d), this.b), this.a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.a;
        if (str != null) {
            sb.append(str.toUpperCase(Locale.ROOT));
            sb.append(' ');
        }
        String str2 = this.b;
        if (str2 != null) {
            sb.append('\'');
            sb.append(str2);
            sb.append('\'');
        } else {
            sb.append("<any realm>");
        }
        String str3 = this.c;
        if (str3 != null) {
            sb.append('@');
            sb.append(str3);
            int i = this.d;
            if (i >= 0) {
                sb.append(':');
                sb.append(i);
            }
        }
        return sb.toString();
    }

    public sj(String str, int i, String str2, String str3) {
        this.c = str == null ? null : str.toLowerCase(Locale.ROOT);
        this.d = i < 0 ? -1 : i;
        this.b = str2 == null ? null : str2;
        this.a = str3 == null ? null : str3.toUpperCase(Locale.ROOT);
        this.e = null;
    }
}
