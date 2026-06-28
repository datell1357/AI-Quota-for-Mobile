package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fe3 {
    public final String a;
    public final ke3 b;
    public final int c;
    public final boolean d;
    public String e;

    public fe3(String str, int i, ke3 ke3Var) {
        w80.l("Port is invalid", i > 0 && i <= 65535);
        w80.L(ke3Var, "Socket factory");
        this.a = str.toLowerCase(Locale.ENGLISH);
        this.c = i;
        if (ke3Var instanceof ge3) {
            this.d = true;
            this.b = ke3Var;
        } else if (ke3Var instanceof rb3) {
            this.d = true;
            this.b = new he3((rb3) ke3Var);
        } else {
            this.d = false;
            this.b = ke3Var;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fe3)) {
            return false;
        }
        fe3 fe3Var = (fe3) obj;
        return this.a.equals(fe3Var.a) && this.c == fe3Var.c && this.d == fe3Var.d;
    }

    public final int hashCode() {
        return c75.H(c75.I(c75.H(17, this.c), this.a), this.d ? 1 : 0);
    }

    public final String toString() {
        if (this.e == null) {
            this.e = this.a + ':' + Integer.toString(this.c);
        }
        return this.e;
    }

    public fe3(String str, np3 np3Var, int i) {
        w80.L(np3Var, "Socket factory");
        w80.l("Port is invalid", i > 0 && i <= 65535);
        this.a = str.toLowerCase(Locale.ENGLISH);
        if (np3Var instanceof rb3) {
            this.b = new ie3((rb3) np3Var);
            this.d = true;
        } else {
            this.b = new le3(np3Var);
            this.d = false;
        }
        this.c = i;
    }
}
