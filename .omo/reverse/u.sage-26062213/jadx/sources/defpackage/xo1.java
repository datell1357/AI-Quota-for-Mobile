package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xo1 {
    public static final /* synthetic */ int e = 0;
    public final boolean a;
    public final int b;
    public final int c;
    public final e72 d;

    static {
        new xo1();
    }

    public xo1() {
        e72 e72Var = e72.p;
        this.a = true;
        this.b = 1;
        this.c = 1;
        this.d = e72Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xo1)) {
            return false;
        }
        xo1 xo1Var = (xo1) obj;
        return this.a == xo1Var.a && this.b == xo1Var.b && this.c == xo1Var.c && nt1.g(this.d, xo1Var.d);
    }

    public final int hashCode() {
        return this.d.n.hashCode() + xw1.j(this.c, xw1.j(this.b, xw1.n(xw1.j(0, Boolean.hashCode(false) * 31, 31), this.a, 31), 31), 961);
    }

    public final String toString() {
        String str = "Invalid";
        int i = this.b;
        String str2 = i == 0 ? "Unspecified" : i == 1 ? "Text" : i == 2 ? "Ascii" : i == 3 ? "Number" : i == 4 ? "Phone" : i == 5 ? "Uri" : i == 6 ? "Email" : i == 7 ? "Password" : i == 8 ? "NumberPassword" : i == 9 ? "Decimal" : i == 10 ? "PasswordVisible" : i == 11 ? "PostalAddress" : i == 12 ? "PersonName" : i == 13 ? "EmailSubject" : i == 14 ? "ShortMessage" : i == 15 ? "LongMessage" : i == 16 ? "Filter" : i == 17 ? "Phonetic" : i == 18 ? "DateTime" : i == 19 ? "Date" : i == 20 ? "Time" : i == 21 ? "NumberSigned" : i == 22 ? "DecimalSigned" : i == 23 ? "DecimalPassword" : i == 24 ? "NumberPasswordSigned" : i == 25 ? "DecimalPasswordSigned" : "Invalid";
        int i2 = this.c;
        if (i2 == -1) {
            str = "Unspecified";
        } else if (i2 == 0) {
            str = "None";
        } else if (i2 == 1) {
            str = "Default";
        } else if (i2 == 2) {
            str = "Go";
        } else if (i2 == 3) {
            str = "Search";
        } else if (i2 == 4) {
            str = "Send";
        } else if (i2 == 5) {
            str = "Previous";
        } else if (i2 == 6) {
            str = "Next";
        } else if (i2 == 7) {
            str = "Done";
        }
        StringBuilder sb = new StringBuilder("ImeOptions(singleLine=false, capitalization=");
        sb.append("None");
        sb.append(", autoCorrect=");
        sb.append(this.a);
        sb.append(", keyboardType=");
        di0.E(sb, str2, ", imeAction=", str, ", platformImeOptions=null, hintLocales=");
        sb.append(this.d);
        sb.append(")");
        return sb.toString();
    }
}
