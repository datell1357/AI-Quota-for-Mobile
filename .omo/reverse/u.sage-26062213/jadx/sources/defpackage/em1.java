package defpackage;

import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class em1 implements Cloneable, Serializable {
    public final String n;
    public final String o;
    public final int p;
    public final String q;

    public em1(String str, int i, String str2) {
        if (str == null) {
            k21.f("Host name may not be null");
            throw null;
        }
        if (str.length() == 0) {
            k21.f("Host name may not be empty");
            throw null;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (Character.isWhitespace(str.charAt(i2))) {
                k21.f("Host name may not contain blanks");
                throw null;
            }
        }
        this.n = str;
        Locale locale = Locale.ROOT;
        this.o = str.toLowerCase(locale);
        if (str2 != null) {
            this.q = str2.toLowerCase(locale);
        } else {
            this.q = "http";
        }
        this.p = i;
    }

    public final String a() {
        int i = this.p;
        String str = this.n;
        if (i == -1) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() + 6);
        sb.append(str);
        sb.append(":");
        sb.append(Integer.toString(i));
        return sb.toString();
    }

    public final String b() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.q);
        sb.append("://");
        sb.append(this.n);
        int i = this.p;
        if (i != -1) {
            sb.append(':');
            sb.append(Integer.toString(i));
        }
        return sb.toString();
    }

    public final Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof em1)) {
            return false;
        }
        em1 em1Var = (em1) obj;
        return this.o.equals(em1Var.o) && this.p == em1Var.p && this.q.equals(em1Var.q);
    }

    public final int hashCode() {
        return c75.I(c75.H(c75.I(17, this.o), this.p), this.q);
    }

    public final String toString() {
        return b();
    }
}
